(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1769382895)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx137528%_)
        (letrec ((_%expand-special137530%_
                  (lambda (_%hd137532%_ _%K137533%_ _%rest137534%_ _%r137535%_)
                    (_%K137533%_
                     _%rest137534%_
                     (cons (gx#core-expand-top _%hd137532%_) _%r137535%_)))))
          (gx#core-expand-block__0 _%stx137528%_ _%expand-special137530%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx137281%_)
        (letrec ((_%expand-special137283%_
                  (lambda (_%hd137403%_ _%K137404%_ _%rest137405%_ _%r137406%_)
                    (let* ((_%K137410%_
                            (lambda (_%e137408%_)
                              (_%K137404%_
                               _%rest137405%_
                               (cons _%e137408%_ _%r137406%_))))
                           (_%e137411137440%_ _%hd137403%_)
                           (_%E137435137444%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e137411137440%_)))
                           (_%E137431137456%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137411137440%_)
                                  (let ((_%e137436137448%_
                                         (gx#syntax-e _%e137411137440%_)))
                                    (let ((_%hd137437137451%_
                                           (##car _%e137436137448%_))
                                          (_%tl137438137453%_
                                           (##cdr _%e137436137448%_)))
                                      (if (and (gx#identifier?
                                                _%hd137437137451%_)
                                               (gx#core-identifier=?
                                                _%hd137437137451%_
                                                '%#define-runtime))
                                          (_%K137410%_
                                           (gx#core-expand-define-runtime%
                                            _%hd137403%_))
                                          (_%E137435137444%_))))
                                  (_%E137435137444%_))))
                           (_%E137427137468%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137411137440%_)
                                  (let ((_%e137432137460%_
                                         (gx#syntax-e _%e137411137440%_)))
                                    (let ((_%hd137433137463%_
                                           (##car _%e137432137460%_))
                                          (_%tl137434137465%_
                                           (##cdr _%e137432137460%_)))
                                      (if (and (gx#identifier?
                                                _%hd137433137463%_)
                                               (gx#core-identifier=?
                                                _%hd137433137463%_
                                                '%#define-alias))
                                          (_%K137410%_
                                           (gx#core-expand-define-alias%
                                            _%hd137403%_))
                                          (_%E137431137456%_))))
                                  (_%E137431137456%_))))
                           (_%E137417137480%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137411137440%_)
                                  (let ((_%e137428137472%_
                                         (gx#syntax-e _%e137411137440%_)))
                                    (let ((_%hd137429137475%_
                                           (##car _%e137428137472%_))
                                          (_%tl137430137477%_
                                           (##cdr _%e137428137472%_)))
                                      (if (and (gx#identifier?
                                                _%hd137429137475%_)
                                               (gx#core-identifier=?
                                                _%hd137429137475%_
                                                '%#define-syntax))
                                          (_%K137410%_
                                           (gx#core-expand-define-syntax%
                                            _%hd137403%_))
                                          (_%E137427137468%_))))
                                  (_%E137427137468%_))))
                           (_%E137413137512%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137411137440%_)
                                  (let ((_%e137418137484%_
                                         (gx#syntax-e _%e137411137440%_)))
                                    (let ((_%hd137419137487%_
                                           (##car _%e137418137484%_))
                                          (_%tl137420137489%_
                                           (##cdr _%e137418137484%_)))
                                      (if (and (gx#identifier?
                                                _%hd137419137487%_)
                                               (gx#core-identifier=?
                                                _%hd137419137487%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl137420137489%_)
                                              (let ((_%e137421137492%_
                                                     (gx#syntax-e
                                                      _%tl137420137489%_)))
                                                (let ((_%hd137422137495%_
                                                       (##car _%e137421137492%_))
                                                      (_%tl137423137497%_
                                                       (##cdr _%e137421137492%_)))
                                                  (let ((_%hd-bind137500%_
                                                         _%hd137422137495%_))
                                                    (if (gx#stx-pair?
                                                         _%tl137423137497%_)
                                                        (let ((_%e137424137502%_
                                                               (gx#syntax-e
                                                                _%tl137423137497%_)))
                                                          (let ((_%hd137425137505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e137424137502%_))
                        (_%tl137426137507%_ (##cdr _%e137424137502%_)))
                    (let ((_%expr137510%_ _%hd137425137505%_))
                      (if (gx#stx-null? _%tl137426137507%_)
                          (if (gx#core-bind-values? _%hd-bind137500%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind137500%_)
                                (_%K137410%_ _%hd137403%_))
                              (_%E137417137480%_))
                          (_%E137417137480%_)))))
                (_%E137417137480%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E137417137480%_))
                                          (_%E137417137480%_))))
                                  (_%E137417137480%_))))
                           (_%E137412137524%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137411137440%_)
                                  (let ((_%e137414137516%_
                                         (gx#syntax-e _%e137411137440%_)))
                                    (let ((_%hd137415137519%_
                                           (##car _%e137414137516%_))
                                          (_%tl137416137521%_
                                           (##cdr _%e137414137516%_)))
                                      (if (and (gx#identifier?
                                                _%hd137415137519%_)
                                               (gx#core-identifier=?
                                                _%hd137415137519%_
                                                '%#begin-syntax))
                                          (_%K137410%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd137403%_))
                                          (_%E137413137512%_))))
                                  (_%E137413137512%_)))))
                      (_%E137412137524%_))))
                 (_%eval-body137284%_
                  (lambda (_%rbody137292%_)
                    (let _%lp137294%_ ((_%rest137296%_ _%rbody137292%_)
                                       (_%body137297%_ '())
                                       (_%ebody137298%_ '()))
                      (let* ((_%rest137299137307%_ _%rest137296%_)
                             (_%else137301137315%_
                              (lambda ()
                                (values _%body137297%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody137298%_)
                                          (gx#stx-source _%stx137281%_))))))
                             (_%K137303137391%_
                              (lambda (_%rest137318%_ _%hd137319%_)
                                (let* ((_%e137320137337%_ _%hd137319%_)
                                       (_%E137332137341%_
                                        (lambda ()
                                          (_%lp137294%_
                                           _%rest137318%_
                                           (cons _%hd137319%_ _%body137297%_)
                                           (cons _%hd137319%_
                                                 _%ebody137298%_))))
                                       (_%E137322137353%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e137320137337%_)
                                              (let ((_%e137333137345%_
                                                     (gx#syntax-e
                                                      _%e137320137337%_)))
                                                (let ((_%hd137334137348%_
                                                       (##car _%e137333137345%_))
                                                      (_%tl137335137350%_
                                                       (##cdr _%e137333137345%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd137334137348%_)
                                                           (gx#core-identifier=?
                                                            _%hd137334137348%_
                                                            '%#begin-syntax))
                                                      (_%lp137294%_
                                                       _%rest137318%_
                                                       (cons _%hd137319%_
                                                             _%body137297%_)
                                                       _%ebody137298%_)
                                                      (_%E137332137341%_))))
                                              (_%E137332137341%_))))
                                       (_%E137321137387%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e137320137337%_)
                                              (let ((_%e137323137357%_
                                                     (gx#syntax-e
                                                      _%e137320137337%_)))
                                                (let ((_%hd137324137360%_
                                                       (##car _%e137323137357%_))
                                                      (_%tl137325137362%_
                                                       (##cdr _%e137323137357%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd137324137360%_)
                                                           (gx#core-identifier=?
                                                            _%hd137324137360%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl137325137362%_)
                                                          (let ((_%e137326137365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl137325137362%_)))
                    (let ((_%hd137327137368%_ (##car _%e137326137365%_))
                          (_%tl137328137370%_ (##cdr _%e137326137365%_)))
                      (let ((_%hd-bind137373%_ _%hd137327137368%_))
                        (if (gx#stx-pair? _%tl137328137370%_)
                            (let ((_%e137329137375%_
                                   (gx#syntax-e _%tl137328137370%_)))
                              (let ((_%hd137330137378%_
                                     (##car _%e137329137375%_))
                                    (_%tl137331137380%_
                                     (##cdr _%e137329137375%_)))
                                (let ((_%expr137383%_ _%hd137330137378%_))
                                  (if (gx#stx-null? _%tl137331137380%_)
                                      (let ((_%ehd137385%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind137373%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr137383%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd137319%_))))
                                        (_%lp137294%_
                                         _%rest137318%_
                                         (cons _%ehd137385%_ _%body137297%_)
                                         (cons _%ehd137385%_ _%ebody137298%_)))
                                      (_%E137322137353%_)))))
                            (_%E137322137353%_)))))
                  (_%E137322137353%_))
              (_%E137322137353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E137322137353%_)))))
                                  (_%E137321137387%_)))))
                        (if (pair? _%rest137299137307%_)
                            (let ((_%hd137304137394%_
                                   (##car _%rest137299137307%_))
                                  (_%tl137305137396%_
                                   (##cdr _%rest137299137307%_)))
                              (let* ((_%hd137399%_ _%hd137304137394%_)
                                     (_%rest137401%_ _%tl137305137396%_))
                                (_%K137303137391%_
                                 _%rest137401%_
                                 _%hd137399%_)))
                            (_%else137301137315%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody137287%_
                     (gx#core-expand-block__1
                      _%stx137281%_
                      _%expand-special137283%_
                      '#f))
                    (_g137551_ (_%eval-body137284%_ _%rbody137287%_)))
               (begin
                 (let ((_g137552_
                        (if (##values? _g137551_)
                            (##values-length _g137551_)
                            1)))
                   (if (not (##fx= _g137552_ 2))
                       (error "Context expects 2 values" _g137552_)))
                 (let ((_%expanded-body137289%_ (##values-ref _g137551_ 0))
                       (_%value137290%_ (##values-ref _g137551_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body137289%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value137290%_ '())))
                    (gx#stx-source _%stx137281%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx137251%_)
        (let* ((_%e137252137259%_ _%stx137251%_)
               (_%E137254137263%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137252137259%_)))
               (_%E137253137277%_
                (lambda ()
                  (if (gx#stx-pair? _%e137252137259%_)
                      (let ((_%e137255137267%_
                             (gx#syntax-e _%e137252137259%_)))
                        (let ((_%hd137256137270%_ (##car _%e137255137267%_))
                              (_%tl137257137272%_ (##cdr _%e137255137267%_)))
                          (let ((_%body137275%_ _%tl137257137272%_))
                            (if (gx#stx-list? _%body137275%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body137275%_)
                                 (gx#stx-source _%stx137251%_))
                                (_%E137254137263%_)))))
                      (_%E137254137263%_)))))
          (_%E137253137277%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx137249%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx137249%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx137195%_)
        (let* ((_%e137196137209%_ _%stx137195%_)
               (_%E137198137213%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137196137209%_)))
               (_%E137197137245%_
                (lambda ()
                  (if (gx#stx-pair? _%e137196137209%_)
                      (let ((_%e137199137217%_
                             (gx#syntax-e _%e137196137209%_)))
                        (let ((_%hd137200137220%_ (##car _%e137199137217%_))
                              (_%tl137201137222%_ (##cdr _%e137199137217%_)))
                          (if (gx#stx-pair? _%tl137201137222%_)
                              (let ((_%e137202137225%_
                                     (gx#syntax-e _%tl137201137222%_)))
                                (let ((_%hd137203137228%_
                                       (##car _%e137202137225%_))
                                      (_%tl137204137230%_
                                       (##cdr _%e137202137225%_)))
                                  (let ((_%ann137233%_ _%hd137203137228%_))
                                    (if (gx#stx-pair? _%tl137204137230%_)
                                        (let ((_%e137205137235%_
                                               (gx#syntax-e
                                                _%tl137204137230%_)))
                                          (let ((_%hd137206137238%_
                                                 (##car _%e137205137235%_))
                                                (_%tl137207137240%_
                                                 (##cdr _%e137205137235%_)))
                                            (let ((_%expr137243%_
                                                   _%hd137206137238%_))
                                              (if (gx#stx-null?
                                                   _%tl137207137240%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann137233%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr137243%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx137195%_))
                                                  (_%E137198137213%_)))))
                                        (_%E137198137213%_)))))
                              (_%E137198137213%_))))
                      (_%E137198137213%_)))))
          (_%E137197137245%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx136919%_ _%body136920%_)
        (letrec ((_%expand-special136922%_
                  (lambda (_%hd137190%_ _%K137191%_ _%rest137192%_ _%r137193%_)
                    (_%K137191%_
                     '()
                     (cons (_%expand-internal136923%_
                            _%hd137190%_
                            _%rest137192%_)
                           _%r137193%_))))
                 (_%expand-internal136923%_
                  (lambda (_%hd137186%_ _%rest137187%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal136925%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd137186%_ _%rest137187%_))
                          (gx#stx-source _%stx136919%_))
                         _%expand-internal-special136924%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj137545
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj137545)
                       __obj137545))))
                 (_%expand-internal-special136924%_
                  (lambda (_%hd137081%_ _%K137082%_ _%rest137083%_ _%r137084%_)
                    (let* ((_%e137085137110%_ _%hd137081%_)
                           (_%E137105137114%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e137085137110%_)))
                           (_%E137101137126%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137085137110%_)
                                  (let ((_%e137106137118%_
                                         (gx#syntax-e _%e137085137110%_)))
                                    (let ((_%hd137107137121%_
                                           (##car _%e137106137118%_))
                                          (_%tl137108137123%_
                                           (##cdr _%e137106137118%_)))
                                      (if (and (gx#identifier?
                                                _%hd137107137121%_)
                                               (gx#core-identifier=?
                                                _%hd137107137121%_
                                                '%#declare))
                                          (_%K137082%_
                                           _%rest137083%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd137081%_)
                                                 _%r137084%_))
                                          (_%E137105137114%_))))
                                  (_%E137105137114%_))))
                           (_%E137097137138%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137085137110%_)
                                  (let ((_%e137102137130%_
                                         (gx#syntax-e _%e137085137110%_)))
                                    (let ((_%hd137103137133%_
                                           (##car _%e137102137130%_))
                                          (_%tl137104137135%_
                                           (##cdr _%e137102137130%_)))
                                      (if (and (gx#identifier?
                                                _%hd137103137133%_)
                                               (gx#core-identifier=?
                                                _%hd137103137133%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd137081%_)
                                            (_%K137082%_
                                             _%rest137083%_
                                             _%r137084%_))
                                          (_%E137101137126%_))))
                                  (_%E137101137126%_))))
                           (_%E137087137150%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137085137110%_)
                                  (let ((_%e137098137142%_
                                         (gx#syntax-e _%e137085137110%_)))
                                    (let ((_%hd137099137145%_
                                           (##car _%e137098137142%_))
                                          (_%tl137100137147%_
                                           (##cdr _%e137098137142%_)))
                                      (if (and (gx#identifier?
                                                _%hd137099137145%_)
                                               (gx#core-identifier=?
                                                _%hd137099137145%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd137081%_)
                                            (_%K137082%_
                                             _%rest137083%_
                                             _%r137084%_))
                                          (_%E137097137138%_))))
                                  (_%E137097137138%_))))
                           (_%E137086137182%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137085137110%_)
                                  (let ((_%e137088137154%_
                                         (gx#syntax-e _%e137085137110%_)))
                                    (let ((_%hd137089137157%_
                                           (##car _%e137088137154%_))
                                          (_%tl137090137159%_
                                           (##cdr _%e137088137154%_)))
                                      (if (and (gx#identifier?
                                                _%hd137089137157%_)
                                               (gx#core-identifier=?
                                                _%hd137089137157%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl137090137159%_)
                                              (let ((_%e137091137162%_
                                                     (gx#syntax-e
                                                      _%tl137090137159%_)))
                                                (let ((_%hd137092137165%_
                                                       (##car _%e137091137162%_))
                                                      (_%tl137093137167%_
                                                       (##cdr _%e137091137162%_)))
                                                  (let ((_%hd-bind137170%_
                                                         _%hd137092137165%_))
                                                    (if (gx#stx-pair?
                                                         _%tl137093137167%_)
                                                        (let ((_%e137094137172%_
                                                               (gx#syntax-e
                                                                _%tl137093137167%_)))
                                                          (let ((_%hd137095137175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e137094137172%_))
                        (_%tl137096137177%_ (##cdr _%e137094137172%_)))
                    (let ((_%expr137180%_ _%hd137095137175%_))
                      (if (gx#stx-null? _%tl137096137177%_)
                          (if (gx#core-bind-values? _%hd-bind137170%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind137170%_)
                                (_%K137082%_
                                 _%rest137083%_
                                 (cons _%hd137081%_ _%r137084%_)))
                              (_%E137087137150%_))
                          (_%E137087137150%_)))))
                (_%E137087137150%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E137087137150%_))
                                          (_%E137087137150%_))))
                                  (_%E137087137150%_)))))
                      (_%E137086137182%_))))
                 (_%wrap-internal136925%_
                  (lambda (_%rbody136927%_)
                    (let _%lp136929%_ ((_%rest136931%_ _%rbody136927%_)
                                       (_%decls136932%_ '())
                                       (_%bind136933%_ '())
                                       (_%body136934%_ '()))
                      (let* ((_%e136935136942%_ _%rest136931%_)
                             (_%E136937136991%_
                              (lambda ()
                                (let* ((_%body136986%_
                                        (let* ((_%body136945136955%_
                                                _%body136934%_)
                                               (_%else136948136963%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body136934%_)
                                                   (gx#stx-source
                                                    _%stx136919%_)))))
                                          (let ((_%K136953136983%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx136919%_)))
                                                (_%K136950136969%_
                                                 (lambda (_%expr136967%_)
                                                   _%expr136967%_)))
                                            (let ((_%try-match136947136979%_
                                                   (lambda ()
                                                     (if (pair? _%body136945136955%_)
                                                         (let ((_%tl136952136974%_
                                                                (##cdr _%body136945136955%_))
                                                               (_%hd136951136972%_
                                                                (##car _%body136945136955%_)))
                                                           (if (null? _%tl136952136974%_)
                                                               (let ((_%expr136977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd136951136972%_))
                         (_%K136950136969%_ _%expr136977%_))
                       (_%else136948136963%_)))
                 (_%else136948136963%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body136945136955%_)
                                                  (_%K136953136983%_)
                                                  (_%try-match136947136979%_))))))
                                       (_%body136988%_
                                        (if (null? _%bind136933%_)
                                            _%body136986%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind136933%_
                                                         (cons _%body136986%_
                                                               '())))
                                             (gx#stx-source _%stx136919%_)))))
                                  (if (null? _%decls136932%_)
                                      _%body136988%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls136932%_
                                                   (cons _%body136988%_ '())))
                                       (gx#stx-source _%stx136919%_))))))
                             (_%E136936137077%_
                              (lambda ()
                                (if (gx#stx-pair? _%e136935136942%_)
                                    (let ((_%e136938136995%_
                                           (gx#syntax-e _%e136935136942%_)))
                                      (let ((_%hd136939136998%_
                                             (##car _%e136938136995%_))
                                            (_%tl136940137000%_
                                             (##cdr _%e136938136995%_)))
                                        (let* ((_%hd137003%_
                                                _%hd136939136998%_)
                                               (_%rest137005%_
                                                _%tl136940137000%_)
                                               (_%e137006137023%_ _%hd137003%_)
                                               (_%E137018137027%_
                                                (lambda ()
                                                  (if (null? _%bind136933%_)
                                                      (_%lp136929%_
                                                       _%rest137005%_
                                                       _%decls136932%_
                                                       _%bind136933%_
                                                       (cons _%hd137003%_
                                                             _%body136934%_))
                                                      (_%lp136929%_
                                                       _%rest137005%_
                                                       _%decls136932%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd137003%_ '()))
                     _%bind136933%_)
               _%body136934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E137008137041%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e137006137023%_)
                                                      (let ((_%e137019137031%_
                                                             (gx#syntax-e
                                                              _%e137006137023%_)))
                                                        (let ((_%hd137020137034%_
                                                               (##car _%e137019137031%_))
                                                              (_%tl137021137036%_
                                                               (##cdr _%e137019137031%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd137020137034%_)
                           (gx#core-identifier=?
                            _%hd137020137034%_
                            '%#declare))
                      (let ((_%xdecls137039%_ _%tl137021137036%_))
                        (_%lp136929%_
                         _%rest137005%_
                         (gx#stx-foldr cons _%decls136932%_ _%xdecls137039%_)
                         _%bind136933%_
                         _%body136934%_))
                      (_%E137018137027%_))))
              (_%E137018137027%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E137007137073%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e137006137023%_)
                                                      (let ((_%e137009137045%_
                                                             (gx#syntax-e
                                                              _%e137006137023%_)))
                                                        (let ((_%hd137010137048%_
                                                               (##car _%e137009137045%_))
                                                              (_%tl137011137050%_
                                                               (##cdr _%e137009137045%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd137010137048%_)
                           (gx#core-identifier=?
                            _%hd137010137048%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl137011137050%_)
                          (let ((_%e137012137053%_
                                 (gx#syntax-e _%tl137011137050%_)))
                            (let ((_%hd137013137056%_
                                   (##car _%e137012137053%_))
                                  (_%tl137014137058%_
                                   (##cdr _%e137012137053%_)))
                              (let ((_%hd-bind137061%_ _%hd137013137056%_))
                                (if (gx#stx-pair? _%tl137014137058%_)
                                    (let ((_%e137015137063%_
                                           (gx#syntax-e _%tl137014137058%_)))
                                      (let ((_%hd137016137066%_
                                             (##car _%e137015137063%_))
                                            (_%tl137017137068%_
                                             (##cdr _%e137015137063%_)))
                                        (let ((_%expr137071%_
                                               _%hd137016137066%_))
                                          (if (gx#stx-null? _%tl137017137068%_)
                                              (_%lp136929%_
                                               _%rest137005%_
                                               _%decls136932%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind137061%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr137071%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind136933%_)
                                               _%body136934%_)
                                              (_%E137008137041%_)))))
                                    (_%E137008137041%_)))))
                          (_%E137008137041%_))
                      (_%E137008137041%_))))
              (_%E137008137041%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E137007137073%_))))
                                    (_%E136937136991%_)))))
                        (_%E136936137077%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body136920%_)
            (gx#stx-source _%stx136919%_))
           _%expand-special136922%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx136857%_)
        (let* ((_%e136858136865%_ _%stx136857%_)
               (_%E136860136869%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136858136865%_)))
               (_%E136859136915%_
                (lambda ()
                  (if (gx#stx-pair? _%e136858136865%_)
                      (let ((_%e136861136873%_
                             (gx#syntax-e _%e136858136865%_)))
                        (let ((_%hd136862136876%_ (##car _%e136861136873%_))
                              (_%tl136863136878%_ (##cdr _%e136861136873%_)))
                          (let ((_%body136881%_ _%tl136863136878%_))
                            (if (gx#stx-list? _%body136881%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl136883%_)
                                     (let* ((_%e136884136891%_ _%decl136883%_)
                                            (_%E136886136895%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e136884136891%_)))
                                            (_%E136885136911%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e136884136891%_)
                                                   (let ((_%e136887136899%_
                                                          (gx#syntax-e
                                                           _%e136884136891%_)))
                                                     (let ((_%hd136888136902%_
                                                            (##car _%e136887136899%_))
                                                           (_%tl136889136904%_
                                                            (##cdr _%e136887136899%_)))
                                                       (let* ((_%head136907%_
                                                               _%hd136888136902%_)
                                                              (_%args136909%_
                                                               _%tl136889136904%_))
                                                         (if (gx#stx-list?
                                                              _%args136909%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl136883%_)
                                                             (_%E136886136895%_)))))
                                                   (_%E136886136895%_)))))
                                       (_%E136885136911%_)))
                                   _%body136881%_))
                                 (gx#stx-source _%stx136857%_))
                                (_%E136860136869%_)))))
                      (_%E136860136869%_)))))
          (_%E136859136915%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx136761%_)
        (let* ((_%e136762136769%_ _%stx136761%_)
               (_%E136764136773%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136762136769%_)))
               (_%E136763136853%_
                (lambda ()
                  (if (gx#stx-pair? _%e136762136769%_)
                      (let ((_%e136765136777%_
                             (gx#syntax-e _%e136762136769%_)))
                        (let ((_%hd136766136780%_ (##car _%e136765136777%_))
                              (_%tl136767136782%_ (##cdr _%e136765136777%_)))
                          (let ((_%body136785%_ _%tl136767136782%_))
                            (let _%lp136787%_ ((_%rest136789%_ _%body136785%_)
                                               (_%r136790%_ '()))
                              (let* ((_%e136791136805%_ _%rest136789%_)
                                     (_%E136803136809%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx136761%_)))
                                     (_%E136793136813%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e136791136805%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r136790%_))
                                             (gx#stx-source _%stx136761%_))
                                            (_%E136803136809%_))))
                                     (_%E136792136849%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e136791136805%_)
                                            (let ((_%e136794136817%_
                                                   (gx#syntax-e
                                                    _%e136791136805%_)))
                                              (let ((_%hd136795136820%_
                                                     (##car _%e136794136817%_))
                                                    (_%tl136796136822%_
                                                     (##cdr _%e136794136817%_)))
                                                (if (gx#stx-pair?
                                                     _%hd136795136820%_)
                                                    (let ((_%e136797136825%_
                                                           (gx#syntax-e
                                                            _%hd136795136820%_)))
                                                      (let ((_%hd136798136828%_
                                                             (##car _%e136797136825%_))
                                                            (_%tl136799136830%_
                                                             (##cdr _%e136797136825%_)))
                                                        (let ((_%id136833%_
                                                               _%hd136798136828%_))
                                                          (if (gx#stx-pair?
                                                               _%tl136799136830%_)
                                                              (let ((_%e136800136835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl136799136830%_)))
                        (let ((_%hd136801136838%_ (##car _%e136800136835%_))
                              (_%tl136802136840%_ (##cdr _%e136800136835%_)))
                          (let ((_%eid136843%_ _%hd136801136838%_))
                            (if (gx#stx-null? _%tl136802136840%_)
                                (let ((_%rest136845%_ _%tl136796136822%_))
                                  (if (and (gx#identifier? _%id136833%_)
                                           (gx#identifier? _%eid136843%_))
                                      (let ((_%eid136847%_
                                             (gx#stx-e _%eid136843%_)))
                                        (gx#core-bind-extern!__0
                                         _%id136833%_
                                         _%eid136847%_)
                                        (_%lp136787%_
                                         _%rest136845%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id136833%_)
                                                     (cons _%eid136847%_ '()))
                                               _%r136790%_)))
                                      (_%E136793136813%_)))
                                (_%E136793136813%_)))))
                      (_%E136793136813%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E136793136813%_))))
                                            (_%E136793136813%_)))))
                                (_%E136792136849%_))))))
                      (_%E136764136773%_)))))
          (_%E136763136853%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx136707%_)
        (let* ((_%e136708136721%_ _%stx136707%_)
               (_%E136710136725%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136708136721%_)))
               (_%E136709136757%_
                (lambda ()
                  (if (gx#stx-pair? _%e136708136721%_)
                      (let ((_%e136711136729%_
                             (gx#syntax-e _%e136708136721%_)))
                        (let ((_%hd136712136732%_ (##car _%e136711136729%_))
                              (_%tl136713136734%_ (##cdr _%e136711136729%_)))
                          (if (gx#stx-pair? _%tl136713136734%_)
                              (let ((_%e136714136737%_
                                     (gx#syntax-e _%tl136713136734%_)))
                                (let ((_%hd136715136740%_
                                       (##car _%e136714136737%_))
                                      (_%tl136716136742%_
                                       (##cdr _%e136714136737%_)))
                                  (let ((_%hd136745%_ _%hd136715136740%_))
                                    (if (gx#stx-pair? _%tl136716136742%_)
                                        (let ((_%e136717136747%_
                                               (gx#syntax-e
                                                _%tl136716136742%_)))
                                          (let ((_%hd136718136750%_
                                                 (##car _%e136717136747%_))
                                                (_%tl136719136752%_
                                                 (##cdr _%e136717136747%_)))
                                            (let ((_%expr136755%_
                                                   _%hd136718136750%_))
                                              (if (gx#stx-null?
                                                   _%tl136719136752%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd136745%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd136745%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd136745%_)
                             (cons (gx#core-expand-expression _%expr136755%_)
                                   '())))
                 (gx#stx-source _%stx136707%_)))
              (_%E136710136725%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136710136725%_)))))
                                        (_%E136710136725%_)))))
                              (_%E136710136725%_))))
                      (_%E136710136725%_)))))
          (_%E136709136757%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx136651%_)
        (let* ((_%e136652136665%_ _%stx136651%_)
               (_%E136654136669%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136652136665%_)))
               (_%E136653136703%_
                (lambda ()
                  (if (gx#stx-pair? _%e136652136665%_)
                      (let ((_%e136655136673%_
                             (gx#syntax-e _%e136652136665%_)))
                        (let ((_%hd136656136676%_ (##car _%e136655136673%_))
                              (_%tl136657136678%_ (##cdr _%e136655136673%_)))
                          (if (gx#stx-pair? _%tl136657136678%_)
                              (let ((_%e136658136681%_
                                     (gx#syntax-e _%tl136657136678%_)))
                                (let ((_%hd136659136684%_
                                       (##car _%e136658136681%_))
                                      (_%tl136660136686%_
                                       (##cdr _%e136658136681%_)))
                                  (let ((_%id136689%_ _%hd136659136684%_))
                                    (if (gx#stx-pair? _%tl136660136686%_)
                                        (let ((_%e136661136691%_
                                               (gx#syntax-e
                                                _%tl136660136686%_)))
                                          (let ((_%hd136662136694%_
                                                 (##car _%e136661136691%_))
                                                (_%tl136663136696%_
                                                 (##cdr _%e136661136691%_)))
                                            (let ((_%binding-id136699%_
                                                   _%hd136662136694%_))
                                              (if (gx#stx-null?
                                                   _%tl136663136696%_)
                                                  (if (and (gx#identifier?
                                                            _%id136689%_)
                                                           (gx#identifier?
                                                            _%binding-id136699%_))
                                                      (let ((_%eid136701%_
                                                             (gx#stx-e
                                                              _%binding-id136699%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id136689%_
                                                         _%eid136701%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id136689%_)
                             (cons _%eid136701%_ '())))))
              (_%E136654136669%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136654136669%_)))))
                                        (_%E136654136669%_)))))
                              (_%E136654136669%_))))
                      (_%E136654136669%_)))))
          (_%E136653136703%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx136594%_)
        (let* ((_%e136595136608%_ _%stx136594%_)
               (_%E136597136612%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136595136608%_)))
               (_%E136596136647%_
                (lambda ()
                  (if (gx#stx-pair? _%e136595136608%_)
                      (let ((_%e136598136616%_
                             (gx#syntax-e _%e136595136608%_)))
                        (let ((_%hd136599136619%_ (##car _%e136598136616%_))
                              (_%tl136600136621%_ (##cdr _%e136598136616%_)))
                          (if (gx#stx-pair? _%tl136600136621%_)
                              (let ((_%e136601136624%_
                                     (gx#syntax-e _%tl136600136621%_)))
                                (let ((_%hd136602136627%_
                                       (##car _%e136601136624%_))
                                      (_%tl136603136629%_
                                       (##cdr _%e136601136624%_)))
                                  (let ((_%id136632%_ _%hd136602136627%_))
                                    (if (gx#stx-pair? _%tl136603136629%_)
                                        (let ((_%e136604136634%_
                                               (gx#syntax-e
                                                _%tl136603136629%_)))
                                          (let ((_%hd136605136637%_
                                                 (##car _%e136604136634%_))
                                                (_%tl136606136639%_
                                                 (##cdr _%e136604136634%_)))
                                            (let ((_%expr136642%_
                                                   _%hd136605136637%_))
                                              (if (gx#stx-null?
                                                   _%tl136606136639%_)
                                                  (if (gx#identifier?
                                                       _%id136632%_)
                                                      (let ((_g137553_
                                                             (gx#core-expand-expression+1
                                                              _%expr136642%_)))
                                                        (begin
                                                          (let ((_g137554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g137553_)
                             (##values-length _g137553_)
                             1)))
                    (if (not (##fx= _g137554_ 2))
                        (error "Context expects 2 values" _g137554_)))
                  (let ((_%e-stx136644%_ (##values-ref _g137553_ 0))
                        (_%e136645%_ (##values-ref _g137553_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id136632%_ _%e136645%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id136632%_)
                                   (cons _%e-stx136644%_ '())))
                       (gx#stx-source _%stx136594%_))))))
              (_%E136597136612%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136597136612%_)))))
                                        (_%E136597136612%_)))))
                              (_%E136597136612%_))))
                      (_%E136597136612%_)))))
          (_%E136596136647%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx136538%_)
        (let* ((_%e136539136552%_ _%stx136538%_)
               (_%E136541136556%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136539136552%_)))
               (_%E136540136590%_
                (lambda ()
                  (if (gx#stx-pair? _%e136539136552%_)
                      (let ((_%e136542136560%_
                             (gx#syntax-e _%e136539136552%_)))
                        (let ((_%hd136543136563%_ (##car _%e136542136560%_))
                              (_%tl136544136565%_ (##cdr _%e136542136560%_)))
                          (if (gx#stx-pair? _%tl136544136565%_)
                              (let ((_%e136545136568%_
                                     (gx#syntax-e _%tl136544136565%_)))
                                (let ((_%hd136546136571%_
                                       (##car _%e136545136568%_))
                                      (_%tl136547136573%_
                                       (##cdr _%e136545136568%_)))
                                  (let ((_%id136576%_ _%hd136546136571%_))
                                    (if (gx#stx-pair? _%tl136547136573%_)
                                        (let ((_%e136548136578%_
                                               (gx#syntax-e
                                                _%tl136547136573%_)))
                                          (let ((_%hd136549136581%_
                                                 (##car _%e136548136578%_))
                                                (_%tl136550136583%_
                                                 (##cdr _%e136548136578%_)))
                                            (let ((_%alias-id136586%_
                                                   _%hd136549136581%_))
                                              (if (gx#stx-null?
                                                   _%tl136550136583%_)
                                                  (if (and (gx#identifier?
                                                            _%id136576%_)
                                                           (gx#identifier?
                                                            _%alias-id136586%_))
                                                      (let ((_%alias-id136588%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id136586%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id136576%_
                                                         _%alias-id136588%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id136576%_)
                             (cons _%alias-id136588%_ '())))))
              (_%E136541136556%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136541136556%_)))))
                                        (_%E136541136556%_)))))
                              (_%E136541136556%_))))
                      (_%E136541136556%_)))))
          (_%E136540136590%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx136481%_ _%wrap?136482%_)
        (let* ((_%e136483136493%_ _%stx136481%_)
               (_%E136485136497%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136483136493%_)))
               (_%E136484136524%_
                (lambda ()
                  (if (gx#stx-pair? _%e136483136493%_)
                      (let ((_%e136486136501%_
                             (gx#syntax-e _%e136483136493%_)))
                        (let ((_%hd136487136504%_ (##car _%e136486136501%_))
                              (_%tl136488136506%_ (##cdr _%e136486136501%_)))
                          (if (gx#stx-pair? _%tl136488136506%_)
                              (let ((_%e136489136509%_
                                     (gx#syntax-e _%tl136488136506%_)))
                                (let ((_%hd136490136512%_
                                       (##car _%e136489136509%_))
                                      (_%tl136491136514%_
                                       (##cdr _%e136489136509%_)))
                                  (let* ((_%hd136517%_ _%hd136490136512%_)
                                         (_%body136519%_ _%tl136491136514%_))
                                    (if (gx#core-bind-values? _%hd136517%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd136517%_)
                                           (let ((_%body136522%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd136517%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx136481%_
                                                               _%body136519%_)
                                                              '()))))
                                             (if _%wrap?136482%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body136522%_)
                                                  (gx#stx-source
                                                   _%stx136481%_))
                                                 _%body136522%_)))
                                         gx#current-expander-context
                                         (let ((__obj137546
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj137546)
                                           __obj137546))
                                        (_%E136485136497%_)))))
                              (_%E136485136497%_))))
                      (_%E136485136497%_)))))
          (_%E136484136524%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx136531%_)
        (let ((_%wrap?136533%_ '#t))
          (gx#core-expand-lambda%__% _%stx136531%_ _%wrap?136533%_))))
    (define gx#core-expand-lambda%
      (lambda _g137555_
        (let ((_g137556_ (##length _g137555_)))
          (cond ((##fx= _g137556_ 1)
                 (apply gx#core-expand-lambda%__0 _g137555_))
                ((##fx= _g137556_ 2)
                 (apply gx#core-expand-lambda%__% _g137555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g137555_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx136445%_)
        (let* ((_%e136446136453%_ _%stx136445%_)
               (_%E136448136457%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136446136453%_)))
               (_%E136447136476%_
                (lambda ()
                  (if (gx#stx-pair? _%e136446136453%_)
                      (let ((_%e136449136461%_
                             (gx#syntax-e _%e136446136453%_)))
                        (let ((_%hd136450136464%_ (##car _%e136449136461%_))
                              (_%tl136451136466%_ (##cdr _%e136449136461%_)))
                          (let ((_%clauses136469%_ _%tl136451136466%_))
                            (if (gx#stx-list? _%clauses136469%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause136471%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause136471%_)
                                       (let ((_%$e136473%_
                                              (gx#stx-source
                                               _%clause136471%_)))
                                         (if _%$e136473%_
                                             _%$e136473%_
                                             (gx#stx-source _%stx136445%_))))
                                      '#f))
                                   _%clauses136469%_))
                                 (gx#stx-source _%stx136445%_))
                                (_%E136448136457%_)))))
                      (_%E136448136457%_)))))
          (_%E136447136476%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx136399%_)
        (let* ((_%e136400136410%_ _%stx136399%_)
               (_%E136402136414%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136400136410%_)))
               (_%E136401136441%_
                (lambda ()
                  (if (gx#stx-pair? _%e136400136410%_)
                      (let ((_%e136403136418%_
                             (gx#syntax-e _%e136400136410%_)))
                        (let ((_%hd136404136421%_ (##car _%e136403136418%_))
                              (_%tl136405136423%_ (##cdr _%e136403136418%_)))
                          (if (gx#stx-pair? _%tl136405136423%_)
                              (let ((_%e136406136426%_
                                     (gx#syntax-e _%tl136405136423%_)))
                                (let ((_%hd136407136429%_
                                       (##car _%e136406136426%_))
                                      (_%tl136408136431%_
                                       (##cdr _%e136406136426%_)))
                                  (let* ((_%hd136434%_ _%hd136407136429%_)
                                         (_%body136436%_ _%tl136408136431%_))
                                    (if (gx#core-expand-let-bind? _%hd136434%_)
                                        (let ((_%expressions136438%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd136434%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd136434%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd136434%_
                                                           _%expressions136438%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx136399%_
                         _%body136436%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx136399%_)))
                                           gx#current-expander-context
                                           (let ((__obj137547
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj137547)
                                             __obj137547)))
                                        (_%E136402136414%_)))))
                              (_%E136402136414%_))))
                      (_%E136402136414%_)))))
          (_%E136401136441%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx136344%_ _%form136345%_)
        (let* ((_%e136346136356%_ _%stx136344%_)
               (_%E136348136360%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136346136356%_)))
               (_%E136347136385%_
                (lambda ()
                  (if (gx#stx-pair? _%e136346136356%_)
                      (let ((_%e136349136364%_
                             (gx#syntax-e _%e136346136356%_)))
                        (let ((_%hd136350136367%_ (##car _%e136349136364%_))
                              (_%tl136351136369%_ (##cdr _%e136349136364%_)))
                          (if (gx#stx-pair? _%tl136351136369%_)
                              (let ((_%e136352136372%_
                                     (gx#syntax-e _%tl136351136369%_)))
                                (let ((_%hd136353136375%_
                                       (##car _%e136352136372%_))
                                      (_%tl136354136377%_
                                       (##cdr _%e136352136372%_)))
                                  (let* ((_%hd136380%_ _%hd136353136375%_)
                                         (_%body136382%_ _%tl136354136377%_))
                                    (if (gx#core-expand-let-bind? _%hd136380%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd136380%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form136345%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd136380%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd136380%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx136344%_
                                                               _%body136382%_)
                                                              '())))
                                            (gx#stx-source _%stx136344%_)))
                                         gx#current-expander-context
                                         (let ((__obj137548
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj137548)
                                           __obj137548))
                                        (_%E136348136360%_)))))
                              (_%E136348136360%_))))
                      (_%E136348136360%_)))))
          (_%E136347136385%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx136392%_)
        (let ((_%form136394%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx136392%_ _%form136394%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g137557_
        (let ((_g137558_ (##length _g137557_)))
          (cond ((##fx= _g137558_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g137557_))
                ((##fx= _g137558_ 2)
                 (apply gx#core-expand-letrec-values%__% _g137557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g137557_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx136341%_)
        (gx#core-expand-letrec-values%__% _%stx136341%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx136298%_)
        (if (gx#stx-list? _%stx136298%_)
            (gx#stx-andmap
             (lambda (_%bind136300%_)
               (let* ((_%e136301136311%_ _%bind136300%_)
                      (_%E136303136315%_ (lambda () '#f))
                      (_%E136302136337%_
                       (lambda ()
                         (if (gx#stx-pair? _%e136301136311%_)
                             (let ((_%e136304136319%_
                                    (gx#syntax-e _%e136301136311%_)))
                               (let ((_%hd136305136322%_
                                      (##car _%e136304136319%_))
                                     (_%tl136306136324%_
                                      (##cdr _%e136304136319%_)))
                                 (let ((_%hd136327%_ _%hd136305136322%_))
                                   (if (gx#stx-pair? _%tl136306136324%_)
                                       (let ((_%e136307136329%_
                                              (gx#syntax-e
                                               _%tl136306136324%_)))
                                         (let ((_%hd136308136332%_
                                                (##car _%e136307136329%_))
                                               (_%tl136309136334%_
                                                (##cdr _%e136307136329%_)))
                                           (if (gx#stx-null?
                                                _%tl136309136334%_)
                                               (gx#core-bind-values?
                                                _%hd136327%_)
                                               (_%E136303136315%_))))
                                       (_%E136303136315%_)))))
                             (_%E136303136315%_)))))
                 (_%E136302136337%_)))
             _%stx136298%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind136257%_)
        (let* ((_%e136258136268%_ _%bind136257%_)
               (_%E136260136272%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136258136268%_)))
               (_%E136259136294%_
                (lambda ()
                  (if (gx#stx-pair? _%e136258136268%_)
                      (let ((_%e136261136276%_
                             (gx#syntax-e _%e136258136268%_)))
                        (let ((_%hd136262136279%_ (##car _%e136261136276%_))
                              (_%tl136263136281%_ (##cdr _%e136261136276%_)))
                          (if (gx#stx-pair? _%tl136263136281%_)
                              (let ((_%e136264136284%_
                                     (gx#syntax-e _%tl136263136281%_)))
                                (let ((_%hd136265136287%_
                                       (##car _%e136264136284%_))
                                      (_%tl136266136289%_
                                       (##cdr _%e136264136284%_)))
                                  (let ((_%expr136292%_ _%hd136265136287%_))
                                    (if (gx#stx-null? _%tl136266136289%_)
                                        (gx#core-expand-expression
                                         _%expr136292%_)
                                        (_%E136260136272%_)))))
                              (_%E136260136272%_))))
                      (_%E136260136272%_)))))
          (_%E136259136294%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind136216%_)
        (let* ((_%e136217136227%_ _%bind136216%_)
               (_%E136219136231%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136217136227%_)))
               (_%E136218136253%_
                (lambda ()
                  (if (gx#stx-pair? _%e136217136227%_)
                      (let ((_%e136220136235%_
                             (gx#syntax-e _%e136217136227%_)))
                        (let ((_%hd136221136238%_ (##car _%e136220136235%_))
                              (_%tl136222136240%_ (##cdr _%e136220136235%_)))
                          (let ((_%hd136243%_ _%hd136221136238%_))
                            (if (gx#stx-pair? _%tl136222136240%_)
                                (let ((_%e136223136245%_
                                       (gx#syntax-e _%tl136222136240%_)))
                                  (let ((_%hd136224136248%_
                                         (##car _%e136223136245%_))
                                        (_%tl136225136250%_
                                         (##cdr _%e136223136245%_)))
                                    (if (gx#stx-null? _%tl136225136250%_)
                                        (gx#core-bind-values!__0 _%hd136243%_)
                                        (_%E136219136231%_))))
                                (_%E136219136231%_)))))
                      (_%E136219136231%_)))))
          (_%E136218136253%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind136174%_ _%expr136175%_)
        (let* ((_%e136176136186%_ _%bind136174%_)
               (_%E136178136190%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136176136186%_)))
               (_%E136177136212%_
                (lambda ()
                  (if (gx#stx-pair? _%e136176136186%_)
                      (let ((_%e136179136194%_
                             (gx#syntax-e _%e136176136186%_)))
                        (let ((_%hd136180136197%_ (##car _%e136179136194%_))
                              (_%tl136181136199%_ (##cdr _%e136179136194%_)))
                          (let ((_%hd136202%_ _%hd136180136197%_))
                            (if (gx#stx-pair? _%tl136181136199%_)
                                (let ((_%e136182136204%_
                                       (gx#syntax-e _%tl136181136199%_)))
                                  (let ((_%hd136183136207%_
                                         (##car _%e136182136204%_))
                                        (_%tl136184136209%_
                                         (##cdr _%e136182136204%_)))
                                    (if (gx#stx-null? _%tl136184136209%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd136202%_)
                                              (cons _%expr136175%_ '()))
                                        (_%E136178136190%_))))
                                (_%E136178136190%_)))))
                      (_%E136178136190%_)))))
          (_%E136177136212%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx136128%_)
        (let* ((_%e136129136139%_ _%stx136128%_)
               (_%E136131136143%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136129136139%_)))
               (_%E136130136170%_
                (lambda ()
                  (if (gx#stx-pair? _%e136129136139%_)
                      (let ((_%e136132136147%_
                             (gx#syntax-e _%e136129136139%_)))
                        (let ((_%hd136133136150%_ (##car _%e136132136147%_))
                              (_%tl136134136152%_ (##cdr _%e136132136147%_)))
                          (if (gx#stx-pair? _%tl136134136152%_)
                              (let ((_%e136135136155%_
                                     (gx#syntax-e _%tl136134136152%_)))
                                (let ((_%hd136136136158%_
                                       (##car _%e136135136155%_))
                                      (_%tl136137136160%_
                                       (##cdr _%e136135136155%_)))
                                  (let* ((_%hd136163%_ _%hd136136136158%_)
                                         (_%body136165%_ _%tl136137136160%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd136163%_)
                                        (let ((_%expanders136167%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd136163%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd136163%_
                                              _%expanders136167%_)
                                             (gx#core-expand-local-block
                                              _%stx136128%_
                                              _%body136165%_))
                                           gx#current-expander-context
                                           (let ((__obj137549
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj137549)
                                             __obj137549)))
                                        (_%E136131136143%_)))))
                              (_%E136131136143%_))))
                      (_%E136131136143%_)))))
          (_%E136130136170%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx136077%_)
        (let* ((_%e136078136088%_ _%stx136077%_)
               (_%E136080136092%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136078136088%_)))
               (_%E136079136124%_
                (lambda ()
                  (if (gx#stx-pair? _%e136078136088%_)
                      (let ((_%e136081136096%_
                             (gx#syntax-e _%e136078136088%_)))
                        (let ((_%hd136082136099%_ (##car _%e136081136096%_))
                              (_%tl136083136101%_ (##cdr _%e136081136096%_)))
                          (if (gx#stx-pair? _%tl136083136101%_)
                              (let ((_%e136084136104%_
                                     (gx#syntax-e _%tl136083136101%_)))
                                (let ((_%hd136085136107%_
                                       (##car _%e136084136104%_))
                                      (_%tl136086136109%_
                                       (##cdr _%e136084136104%_)))
                                  (let* ((_%hd136112%_ _%hd136085136107%_)
                                         (_%body136114%_ _%tl136086136109%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd136112%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd136112%_
                                            (make-list
                                             (gx#stx-length _%hd136112%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g136116136119%_
                                                     _%g136117136121%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g136116136119%_
                                               _%g136117136121%_
                                               '#t))
                                            _%hd136112%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd136112%_))
                                           (gx#core-expand-local-block
                                            _%stx136077%_
                                            _%body136114%_))
                                         gx#current-expander-context
                                         (let ((__obj137550
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj137550)
                                           __obj137550))
                                        (_%E136080136092%_)))))
                              (_%E136080136092%_))))
                      (_%E136080136092%_)))))
          (_%E136079136124%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx136034%_)
        (if (gx#stx-list? _%stx136034%_)
            (gx#stx-andmap
             (lambda (_%bind136036%_)
               (let* ((_%e136037136047%_ _%bind136036%_)
                      (_%E136039136051%_ (lambda () '#f))
                      (_%E136038136073%_
                       (lambda ()
                         (if (gx#stx-pair? _%e136037136047%_)
                             (let ((_%e136040136055%_
                                    (gx#syntax-e _%e136037136047%_)))
                               (let ((_%hd136041136058%_
                                      (##car _%e136040136055%_))
                                     (_%tl136042136060%_
                                      (##cdr _%e136040136055%_)))
                                 (let ((_%hd136063%_ _%hd136041136058%_))
                                   (if (gx#stx-pair? _%tl136042136060%_)
                                       (let ((_%e136043136065%_
                                              (gx#syntax-e
                                               _%tl136042136060%_)))
                                         (let ((_%hd136044136068%_
                                                (##car _%e136043136065%_))
                                               (_%tl136045136070%_
                                                (##cdr _%e136043136065%_)))
                                           (if (gx#stx-null?
                                                _%tl136045136070%_)
                                               (gx#identifier? _%hd136063%_)
                                               (_%E136039136051%_))))
                                       (_%E136039136051%_)))))
                             (_%E136039136051%_)))))
                 (_%E136038136073%_)))
             _%stx136034%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind135990%_)
        (let* ((_%e135991136001%_ _%bind135990%_)
               (_%E135993136005%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135991136001%_)))
               (_%E135992136030%_
                (lambda ()
                  (if (gx#stx-pair? _%e135991136001%_)
                      (let ((_%e135994136009%_
                             (gx#syntax-e _%e135991136001%_)))
                        (let ((_%hd135995136012%_ (##car _%e135994136009%_))
                              (_%tl135996136014%_ (##cdr _%e135994136009%_)))
                          (if (gx#stx-pair? _%tl135996136014%_)
                              (let ((_%e135997136017%_
                                     (gx#syntax-e _%tl135996136014%_)))
                                (let ((_%hd135998136020%_
                                       (##car _%e135997136017%_))
                                      (_%tl135999136022%_
                                       (##cdr _%e135997136017%_)))
                                  (let ((_%expr136025%_ _%hd135998136020%_))
                                    (if (gx#stx-null? _%tl135999136022%_)
                                        (let ((_g137559_
                                               (gx#core-expand-expression+1
                                                _%expr136025%_)))
                                          (begin
                                            (let ((_g137560_
                                                   (if (##values? _g137559_)
                                                       (##values-length
                                                        _g137559_)
                                                       1)))
                                              (if (not (##fx= _g137560_ 2))
                                                  (error "Context expects 2 values"
                                                         _g137560_)))
                                            (let ((_%_136027%_
                                                   (##values-ref _g137559_ 0))
                                                  (_%e136028%_
                                                   (##values-ref _g137559_ 1)))
                                              _%e136028%_)))
                                        (_%E135993136005%_)))))
                              (_%E135993136005%_))))
                      (_%E135993136005%_)))))
          (_%E135992136030%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind135935%_ _%e135936%_ _%rebind?135937%_)
        (let* ((_%e135938135948%_ _%bind135935%_)
               (_%E135940135952%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135938135948%_)))
               (_%E135939135974%_
                (lambda ()
                  (if (gx#stx-pair? _%e135938135948%_)
                      (let ((_%e135941135956%_
                             (gx#syntax-e _%e135938135948%_)))
                        (let ((_%hd135942135959%_ (##car _%e135941135956%_))
                              (_%tl135943135961%_ (##cdr _%e135941135956%_)))
                          (let ((_%id135964%_ _%hd135942135959%_))
                            (if (gx#stx-pair? _%tl135943135961%_)
                                (let ((_%e135944135966%_
                                       (gx#syntax-e _%tl135943135961%_)))
                                  (let ((_%hd135945135969%_
                                         (##car _%e135944135966%_))
                                        (_%tl135946135971%_
                                         (##cdr _%e135944135966%_)))
                                    (if (gx#stx-null? _%tl135946135971%_)
                                        (gx#core-bind-syntax!__1
                                         _%id135964%_
                                         _%e135936%_
                                         _%rebind?135937%_)
                                        (_%E135940135952%_))))
                                (_%E135940135952%_)))))
                      (_%E135940135952%_)))))
          (_%E135939135974%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind135981%_ _%e135982%_)
        (let ((_%rebind?135984%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind135981%_
           _%e135982%_
           _%rebind?135984%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g137561_
        (let ((_g137562_ (##length _g137561_)))
          (cond ((##fx= _g137562_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g137561_))
                ((##fx= _g137562_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g137561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g137561_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx135893%_)
        (let* ((_%e135894135904%_ _%stx135893%_)
               (_%E135896135908%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135894135904%_)))
               (_%E135895135930%_
                (lambda ()
                  (if (gx#stx-pair? _%e135894135904%_)
                      (let ((_%e135897135912%_
                             (gx#syntax-e _%e135894135904%_)))
                        (let ((_%hd135898135915%_ (##car _%e135897135912%_))
                              (_%tl135899135917%_ (##cdr _%e135897135912%_)))
                          (if (gx#stx-pair? _%tl135899135917%_)
                              (let ((_%e135900135920%_
                                     (gx#syntax-e _%tl135899135917%_)))
                                (let ((_%hd135901135923%_
                                       (##car _%e135900135920%_))
                                      (_%tl135902135925%_
                                       (##cdr _%e135900135920%_)))
                                  (let ((_%expr135928%_ _%hd135901135923%_))
                                    (if (gx#stx-null? _%tl135902135925%_)
                                        (gx#core-expand-expression
                                         _%expr135928%_)
                                        (_%E135896135908%_)))))
                              (_%E135896135908%_))))
                      (_%E135896135908%_)))))
          (_%E135895135930%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx135852%_)
        (let* ((_%e135853135863%_ _%stx135852%_)
               (_%E135855135867%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135853135863%_)))
               (_%E135854135889%_
                (lambda ()
                  (if (gx#stx-pair? _%e135853135863%_)
                      (let ((_%e135856135871%_
                             (gx#syntax-e _%e135853135863%_)))
                        (let ((_%hd135857135874%_ (##car _%e135856135871%_))
                              (_%tl135858135876%_ (##cdr _%e135856135871%_)))
                          (if (gx#stx-pair? _%tl135858135876%_)
                              (let ((_%e135859135879%_
                                     (gx#syntax-e _%tl135858135876%_)))
                                (let ((_%hd135860135882%_
                                       (##car _%e135859135879%_))
                                      (_%tl135861135884%_
                                       (##cdr _%e135859135879%_)))
                                  (let ((_%e135887%_ _%hd135860135882%_))
                                    (if (gx#stx-null? _%tl135861135884%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e135887%_)
                                                     '()))
                                         (gx#stx-source _%stx135852%_))
                                        (_%E135855135867%_)))))
                              (_%E135855135867%_))))
                      (_%E135855135867%_)))))
          (_%E135854135889%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx135811%_)
        (let* ((_%e135812135822%_ _%stx135811%_)
               (_%E135814135826%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135812135822%_)))
               (_%E135813135848%_
                (lambda ()
                  (if (gx#stx-pair? _%e135812135822%_)
                      (let ((_%e135815135830%_
                             (gx#syntax-e _%e135812135822%_)))
                        (let ((_%hd135816135833%_ (##car _%e135815135830%_))
                              (_%tl135817135835%_ (##cdr _%e135815135830%_)))
                          (if (gx#stx-pair? _%tl135817135835%_)
                              (let ((_%e135818135838%_
                                     (gx#syntax-e _%tl135817135835%_)))
                                (let ((_%hd135819135841%_
                                       (##car _%e135818135838%_))
                                      (_%tl135820135843%_
                                       (##cdr _%e135818135838%_)))
                                  (let ((_%e135846%_ _%hd135819135841%_))
                                    (if (gx#stx-null? _%tl135820135843%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e135846%_)
                                                     '()))
                                         (gx#stx-source _%stx135811%_))
                                        (_%E135814135826%_)))))
                              (_%E135814135826%_))))
                      (_%E135814135826%_)))))
          (_%E135813135848%_))))
    (define gx#core-expand-call%
      (lambda (_%stx135768%_)
        (let* ((_%e135769135779%_ _%stx135768%_)
               (_%E135771135783%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135769135779%_)))
               (_%E135770135807%_
                (lambda ()
                  (if (gx#stx-pair? _%e135769135779%_)
                      (let ((_%e135772135787%_
                             (gx#syntax-e _%e135769135779%_)))
                        (let ((_%hd135773135790%_ (##car _%e135772135787%_))
                              (_%tl135774135792%_ (##cdr _%e135772135787%_)))
                          (if (gx#stx-pair? _%tl135774135792%_)
                              (let ((_%e135775135795%_
                                     (gx#syntax-e _%tl135774135792%_)))
                                (let ((_%hd135776135798%_
                                       (##car _%e135775135795%_))
                                      (_%tl135777135800%_
                                       (##cdr _%e135775135795%_)))
                                  (let* ((_%rator135803%_ _%hd135776135798%_)
                                         (_%args135805%_ _%tl135777135800%_))
                                    (if (gx#stx-list? _%args135805%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator135803%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args135805%_))
                                         (gx#stx-source _%stx135768%_))
                                        (_%E135771135783%_)))))
                              (_%E135771135783%_))))
                      (_%E135771135783%_)))))
          (_%E135770135807%_))))
    (define gx#core-expand-if%
      (lambda (_%stx135701%_)
        (let* ((_%e135702135718%_ _%stx135701%_)
               (_%E135704135722%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135702135718%_)))
               (_%E135703135764%_
                (lambda ()
                  (if (gx#stx-pair? _%e135702135718%_)
                      (let ((_%e135705135726%_
                             (gx#syntax-e _%e135702135718%_)))
                        (let ((_%hd135706135729%_ (##car _%e135705135726%_))
                              (_%tl135707135731%_ (##cdr _%e135705135726%_)))
                          (if (gx#stx-pair? _%tl135707135731%_)
                              (let ((_%e135708135734%_
                                     (gx#syntax-e _%tl135707135731%_)))
                                (let ((_%hd135709135737%_
                                       (##car _%e135708135734%_))
                                      (_%tl135710135739%_
                                       (##cdr _%e135708135734%_)))
                                  (let ((_%test135742%_ _%hd135709135737%_))
                                    (if (gx#stx-pair? _%tl135710135739%_)
                                        (let ((_%e135711135744%_
                                               (gx#syntax-e
                                                _%tl135710135739%_)))
                                          (let ((_%hd135712135747%_
                                                 (##car _%e135711135744%_))
                                                (_%tl135713135749%_
                                                 (##cdr _%e135711135744%_)))
                                            (let ((_%K135752%_
                                                   _%hd135712135747%_))
                                              (if (gx#stx-pair?
                                                   _%tl135713135749%_)
                                                  (let ((_%e135714135754%_
                                                         (gx#syntax-e
                                                          _%tl135713135749%_)))
                                                    (let ((_%hd135715135757%_
                                                           (##car _%e135714135754%_))
                                                          (_%tl135716135759%_
                                                           (##cdr _%e135714135754%_)))
                                                      (let ((_%E135762%_
                                                             _%hd135715135757%_))
                                                        (if (gx#stx-null?
                                                             _%tl135716135759%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test135742%_)
                                 (cons (gx#core-expand-expression _%K135752%_)
                                       (cons (gx#core-expand-expression
                                              _%E135762%_)
                                             '()))))
                     (gx#stx-source _%stx135701%_))
                    (_%E135704135722%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E135704135722%_)))))
                                        (_%E135704135722%_)))))
                              (_%E135704135722%_))))
                      (_%E135704135722%_)))))
          (_%E135703135764%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx135660%_)
        (let* ((_%e135661135671%_ _%stx135660%_)
               (_%E135663135675%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135661135671%_)))
               (_%E135662135697%_
                (lambda ()
                  (if (gx#stx-pair? _%e135661135671%_)
                      (let ((_%e135664135679%_
                             (gx#syntax-e _%e135661135671%_)))
                        (let ((_%hd135665135682%_ (##car _%e135664135679%_))
                              (_%tl135666135684%_ (##cdr _%e135664135679%_)))
                          (if (gx#stx-pair? _%tl135666135684%_)
                              (let ((_%e135667135687%_
                                     (gx#syntax-e _%tl135666135684%_)))
                                (let ((_%hd135668135690%_
                                       (##car _%e135667135687%_))
                                      (_%tl135669135692%_
                                       (##cdr _%e135667135687%_)))
                                  (let ((_%id135695%_ _%hd135668135690%_))
                                    (if (gx#stx-null? _%tl135669135692%_)
                                        (if (gx#identifier? _%id135695%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id135695%_
                                                          _%stx135660%_)
                                                         '()))
                                             (gx#stx-source _%stx135660%_))
                                            (_%E135663135675%_))
                                        (_%E135663135675%_)))))
                              (_%E135663135675%_))))
                      (_%E135663135675%_)))))
          (_%E135662135697%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx135606%_)
        (let* ((_%e135607135620%_ _%stx135606%_)
               (_%E135609135624%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135607135620%_)))
               (_%E135608135656%_
                (lambda ()
                  (if (gx#stx-pair? _%e135607135620%_)
                      (let ((_%e135610135628%_
                             (gx#syntax-e _%e135607135620%_)))
                        (let ((_%hd135611135631%_ (##car _%e135610135628%_))
                              (_%tl135612135633%_ (##cdr _%e135610135628%_)))
                          (if (gx#stx-pair? _%tl135612135633%_)
                              (let ((_%e135613135636%_
                                     (gx#syntax-e _%tl135612135633%_)))
                                (let ((_%hd135614135639%_
                                       (##car _%e135613135636%_))
                                      (_%tl135615135641%_
                                       (##cdr _%e135613135636%_)))
                                  (let ((_%id135644%_ _%hd135614135639%_))
                                    (if (gx#stx-pair? _%tl135615135641%_)
                                        (let ((_%e135616135646%_
                                               (gx#syntax-e
                                                _%tl135615135641%_)))
                                          (let ((_%hd135617135649%_
                                                 (##car _%e135616135646%_))
                                                (_%tl135618135651%_
                                                 (##cdr _%e135616135646%_)))
                                            (let ((_%expr135654%_
                                                   _%hd135617135649%_))
                                              (if (gx#stx-null?
                                                   _%tl135618135651%_)
                                                  (if (gx#identifier?
                                                       _%id135644%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id135644%_
                            _%stx135606%_)
                           (cons (gx#core-expand-expression _%expr135654%_)
                                 '())))
               (gx#stx-source _%stx135606%_))
              (_%E135609135624%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E135609135624%_)))))
                                        (_%E135609135624%_)))))
                              (_%E135609135624%_))))
                      (_%E135609135624%_)))))
          (_%E135608135656%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx135451%_)
        (letrec ((_%generate135453%_
                  (lambda (_%body135483%_)
                    (let _%lp135485%_ ((_%rest135487%_ _%body135483%_)
                                       (_%ns135488%_
                                        (gx#core-context-namespace__0))
                                       (_%r135489%_ '()))
                      (let* ((_%e135490135505%_ _%rest135487%_)
                             (_%E135503135509%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e135490135505%_)))
                             (_%E135499135513%_
                              (lambda ()
                                (if (gx#stx-null? _%e135490135505%_)
                                    (reverse _%r135489%_)
                                    (_%E135503135509%_))))
                             (_%E135492135570%_
                              (lambda ()
                                (if (gx#stx-pair? _%e135490135505%_)
                                    (let ((_%e135500135517%_
                                           (gx#syntax-e _%e135490135505%_)))
                                      (let ((_%hd135501135520%_
                                             (##car _%e135500135517%_))
                                            (_%tl135502135522%_
                                             (##cdr _%e135500135517%_)))
                                        (let* ((_%hd135525%_
                                                _%hd135501135520%_)
                                               (_%rest135527%_
                                                _%tl135502135522%_))
                                          (if (gx#identifier? _%hd135525%_)
                                              (_%lp135485%_
                                               _%rest135527%_
                                               _%ns135488%_
                                               (cons (cons _%hd135525%_
                                                           (cons (if _%ns135488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd135525%_
                              _%ns135488%_
                              '"#"
                              _%hd135525%_)
                             _%hd135525%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r135489%_))
                                              (let* ((_%e135528135538%_
                                                      _%hd135525%_)
                                                     (_%E135530135542%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e135528135538%_)))
                                                     (_%E135529135566%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e135528135538%_)
                                                            (let ((_%e135531135546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e135528135538%_)))
                      (let ((_%hd135532135549%_ (##car _%e135531135546%_))
                            (_%tl135533135551%_ (##cdr _%e135531135546%_)))
                        (let ((_%id135554%_ _%hd135532135549%_))
                          (if (gx#stx-pair? _%tl135533135551%_)
                              (let ((_%e135534135556%_
                                     (gx#syntax-e _%tl135533135551%_)))
                                (let ((_%hd135535135559%_
                                       (##car _%e135534135556%_))
                                      (_%tl135536135561%_
                                       (##cdr _%e135534135556%_)))
                                  (let ((_%eid135564%_ _%hd135535135559%_))
                                    (if (gx#stx-null? _%tl135536135561%_)
                                        (if (and (gx#identifier? _%id135554%_)
                                                 (gx#identifier?
                                                  _%eid135564%_))
                                            (_%lp135485%_
                                             _%rest135527%_
                                             _%ns135488%_
                                             (cons (cons _%id135554%_
                                                         (cons _%eid135564%_
                                                               '()))
                                                   _%r135489%_))
                                            (_%E135530135542%_))
                                        (_%E135530135542%_)))))
                              (_%E135530135542%_)))))
                    (_%E135530135542%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E135529135566%_))))))
                                    (_%E135499135513%_))))
                             (_%E135491135602%_
                              (lambda ()
                                (if (gx#stx-pair? _%e135490135505%_)
                                    (let ((_%e135493135574%_
                                           (gx#syntax-e _%e135490135505%_)))
                                      (let ((_%hd135494135577%_
                                             (##car _%e135493135574%_))
                                            (_%tl135495135579%_
                                             (##cdr _%e135493135574%_)))
                                        (if (eq? (gx#stx-e _%hd135494135577%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl135495135579%_)
                                                (let ((_%e135496135582%_
                                                       (gx#syntax-e
                                                        _%tl135495135579%_)))
                                                  (let ((_%hd135497135585%_
                                                         (##car _%e135496135582%_))
                                                        (_%tl135498135587%_
                                                         (##cdr _%e135496135582%_)))
                                                    (let* ((_%ns135590%_
                                                            _%hd135497135585%_)
                                                           (_%rest135592%_
                                                            _%tl135498135587%_)
                                                           (_%ns135600%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns135590%_)
                        (symbol->string (gx#stx-e _%ns135590%_))
                        (if (or (gx#stx-string? _%ns135590%_)
                                (gx#stx-false? _%ns135590%_))
                            (gx#stx-e _%ns135590%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx135451%_
                             _%ns135590%_)))))
              (_%lp135485%_ _%rest135592%_ _%ns135600%_ _%r135489%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E135492135570%_))
                                            (_%E135492135570%_))))
                                    (_%E135492135570%_)))))
                        (_%E135491135602%_))))))
          (let* ((_%e135454135461%_ _%stx135451%_)
                 (_%E135456135465%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e135454135461%_)))
                 (_%E135455135479%_
                  (lambda ()
                    (if (gx#stx-pair? _%e135454135461%_)
                        (let ((_%e135457135469%_
                               (gx#syntax-e _%e135454135461%_)))
                          (let ((_%hd135458135472%_ (##car _%e135457135469%_))
                                (_%tl135459135474%_ (##cdr _%e135457135469%_)))
                            (let ((_%body135477%_ _%tl135459135474%_))
                              (if (gx#stx-list? _%body135477%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate135453%_ _%body135477%_))
                                  (_%E135456135465%_)))))
                        (_%E135456135465%_)))))
            (_%E135455135479%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx135397%_)
        (let* ((_%e135398135411%_ _%stx135397%_)
               (_%E135400135415%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135398135411%_)))
               (_%E135399135447%_
                (lambda ()
                  (if (gx#stx-pair? _%e135398135411%_)
                      (let ((_%e135401135419%_
                             (gx#syntax-e _%e135398135411%_)))
                        (let ((_%hd135402135422%_ (##car _%e135401135419%_))
                              (_%tl135403135424%_ (##cdr _%e135401135419%_)))
                          (if (gx#stx-pair? _%tl135403135424%_)
                              (let ((_%e135404135427%_
                                     (gx#syntax-e _%tl135403135424%_)))
                                (let ((_%hd135405135430%_
                                       (##car _%e135404135427%_))
                                      (_%tl135406135432%_
                                       (##cdr _%e135404135427%_)))
                                  (let ((_%hd135435%_ _%hd135405135430%_))
                                    (if (gx#stx-pair? _%tl135406135432%_)
                                        (let ((_%e135407135437%_
                                               (gx#syntax-e
                                                _%tl135406135432%_)))
                                          (let ((_%hd135408135440%_
                                                 (##car _%e135407135437%_))
                                                (_%tl135409135442%_
                                                 (##cdr _%e135407135437%_)))
                                            (let ((_%expr135445%_
                                                   _%hd135408135440%_))
                                              (if (gx#stx-null?
                                                   _%tl135409135442%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd135435%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd135435%_)
                          (cons _%expr135445%_ '())))
              (_%E135400135415%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E135400135415%_)))))
                                        (_%E135400135415%_)))))
                              (_%E135400135415%_))))
                      (_%E135400135415%_)))))
          (_%E135399135447%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx135343%_)
        (let* ((_%e135344135357%_ _%stx135343%_)
               (_%E135346135361%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135344135357%_)))
               (_%E135345135393%_
                (lambda ()
                  (if (gx#stx-pair? _%e135344135357%_)
                      (let ((_%e135347135365%_
                             (gx#syntax-e _%e135344135357%_)))
                        (let ((_%hd135348135368%_ (##car _%e135347135365%_))
                              (_%tl135349135370%_ (##cdr _%e135347135365%_)))
                          (if (gx#stx-pair? _%tl135349135370%_)
                              (let ((_%e135350135373%_
                                     (gx#syntax-e _%tl135349135370%_)))
                                (let ((_%hd135351135376%_
                                       (##car _%e135350135373%_))
                                      (_%tl135352135378%_
                                       (##cdr _%e135350135373%_)))
                                  (let ((_%hd135381%_ _%hd135351135376%_))
                                    (if (gx#stx-pair? _%tl135352135378%_)
                                        (let ((_%e135353135383%_
                                               (gx#syntax-e
                                                _%tl135352135378%_)))
                                          (let ((_%hd135354135386%_
                                                 (##car _%e135353135383%_))
                                                (_%tl135355135388%_
                                                 (##cdr _%e135353135383%_)))
                                            (let ((_%expr135391%_
                                                   _%hd135354135386%_))
                                              (if (gx#stx-null?
                                                   _%tl135355135388%_)
                                                  (if (gx#identifier?
                                                       _%hd135381%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd135381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr135391%_ '())))
              (_%E135346135361%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E135346135361%_)))))
                                        (_%E135346135361%_)))))
                              (_%E135346135361%_))))
                      (_%E135346135361%_)))))
          (_%E135345135393%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx135289%_)
        (let* ((_%e135290135303%_ _%stx135289%_)
               (_%E135292135307%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135290135303%_)))
               (_%E135291135339%_
                (lambda ()
                  (if (gx#stx-pair? _%e135290135303%_)
                      (let ((_%e135293135311%_
                             (gx#syntax-e _%e135290135303%_)))
                        (let ((_%hd135294135314%_ (##car _%e135293135311%_))
                              (_%tl135295135316%_ (##cdr _%e135293135311%_)))
                          (if (gx#stx-pair? _%tl135295135316%_)
                              (let ((_%e135296135319%_
                                     (gx#syntax-e _%tl135295135316%_)))
                                (let ((_%hd135297135322%_
                                       (##car _%e135296135319%_))
                                      (_%tl135298135324%_
                                       (##cdr _%e135296135319%_)))
                                  (let ((_%id135327%_ _%hd135297135322%_))
                                    (if (gx#stx-pair? _%tl135298135324%_)
                                        (let ((_%e135299135329%_
                                               (gx#syntax-e
                                                _%tl135298135324%_)))
                                          (let ((_%hd135300135332%_
                                                 (##car _%e135299135329%_))
                                                (_%tl135301135334%_
                                                 (##cdr _%e135299135329%_)))
                                            (let ((_%alias-id135337%_
                                                   _%hd135300135332%_))
                                              (if (gx#stx-null?
                                                   _%tl135301135334%_)
                                                  (if (and (gx#identifier?
                                                            _%id135327%_)
                                                           (gx#identifier?
                                                            _%alias-id135337%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id135327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id135337%_ '())))
              (_%E135292135307%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E135292135307%_)))))
                                        (_%E135292135307%_)))))
                              (_%E135292135307%_))))
                      (_%E135292135307%_)))))
          (_%E135291135339%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx135246%_)
        (let* ((_%e135247135257%_ _%stx135246%_)
               (_%E135249135261%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135247135257%_)))
               (_%E135248135285%_
                (lambda ()
                  (if (gx#stx-pair? _%e135247135257%_)
                      (let ((_%e135250135265%_
                             (gx#syntax-e _%e135247135257%_)))
                        (let ((_%hd135251135268%_ (##car _%e135250135265%_))
                              (_%tl135252135270%_ (##cdr _%e135250135265%_)))
                          (if (gx#stx-pair? _%tl135252135270%_)
                              (let ((_%e135253135273%_
                                     (gx#syntax-e _%tl135252135270%_)))
                                (let ((_%hd135254135276%_
                                       (##car _%e135253135273%_))
                                      (_%tl135255135278%_
                                       (##cdr _%e135253135273%_)))
                                  (let* ((_%hd135281%_ _%hd135254135276%_)
                                         (_%body135283%_ _%tl135255135278%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd135281%_)
                                             (gx#stx-list? _%body135283%_)
                                             (not (gx#stx-null?
                                                   _%body135283%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd135281%_)
                                         _%body135283%_)
                                        (_%E135249135261%_)))))
                              (_%E135249135261%_))))
                      (_%E135249135261%_)))))
          (_%E135248135285%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx135182%_)
        (letrec ((_%generate135184%_
                  (lambda (_%clause135214%_)
                    (let* ((_%e135215135222%_ _%clause135214%_)
                           (_%E135217135226%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx135182%_
                               _%clause135214%_)))
                           (_%E135216135242%_
                            (lambda ()
                              (if (gx#stx-pair? _%e135215135222%_)
                                  (let ((_%e135218135230%_
                                         (gx#syntax-e _%e135215135222%_)))
                                    (let ((_%hd135219135233%_
                                           (##car _%e135218135230%_))
                                          (_%tl135220135235%_
                                           (##cdr _%e135218135230%_)))
                                      (let* ((_%hd135238%_ _%hd135219135233%_)
                                             (_%body135240%_
                                              _%tl135220135235%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd135238%_)
                                                 (gx#stx-list? _%body135240%_)
                                                 (not (gx#stx-null?
                                                       _%body135240%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd135238%_)
                                                   _%body135240%_)
                                             (gx#stx-source _%clause135214%_))
                                            (_%E135217135226%_)))))
                                  (_%E135217135226%_)))))
                      (_%E135216135242%_)))))
          (let* ((_%e135185135192%_ _%stx135182%_)
                 (_%E135187135196%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e135185135192%_)))
                 (_%E135186135210%_
                  (lambda ()
                    (if (gx#stx-pair? _%e135185135192%_)
                        (let ((_%e135188135200%_
                               (gx#syntax-e _%e135185135192%_)))
                          (let ((_%hd135189135203%_ (##car _%e135188135200%_))
                                (_%tl135190135205%_ (##cdr _%e135188135200%_)))
                            (let ((_%clauses135208%_ _%tl135190135205%_))
                              (if (gx#stx-list? _%clauses135208%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate135184%_
                                    _%clauses135208%_))
                                  (_%E135187135196%_)))))
                        (_%E135187135196%_)))))
            (_%E135186135210%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx135083%_ _%form135084%_)
        (letrec ((_%generate135086%_
                  (lambda (_%bind135129%_)
                    (let* ((_%e135130135140%_ _%bind135129%_)
                           (_%E135132135144%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx135083%_
                               _%bind135129%_)))
                           (_%E135131135168%_
                            (lambda ()
                              (if (gx#stx-pair? _%e135130135140%_)
                                  (let ((_%e135133135148%_
                                         (gx#syntax-e _%e135130135140%_)))
                                    (let ((_%hd135134135151%_
                                           (##car _%e135133135148%_))
                                          (_%tl135135135153%_
                                           (##cdr _%e135133135148%_)))
                                      (let ((_%ids135156%_ _%hd135134135151%_))
                                        (if (gx#stx-pair? _%tl135135135153%_)
                                            (let ((_%e135136135158%_
                                                   (gx#syntax-e
                                                    _%tl135135135153%_)))
                                              (let ((_%hd135137135161%_
                                                     (##car _%e135136135158%_))
                                                    (_%tl135138135163%_
                                                     (##cdr _%e135136135158%_)))
                                                (let ((_%expr135166%_
                                                       _%hd135137135161%_))
                                                  (if (gx#stx-null?
                                                       _%tl135138135163%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids135156%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids135156%_)
                        (cons _%expr135166%_ '()))
                  (_%E135132135144%_))
              (_%E135132135144%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E135132135144%_)))))
                                  (_%E135132135144%_)))))
                      (_%E135131135168%_)))))
          (let* ((_%e135087135097%_ _%stx135083%_)
                 (_%E135089135101%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e135087135097%_)))
                 (_%E135088135125%_
                  (lambda ()
                    (if (gx#stx-pair? _%e135087135097%_)
                        (let ((_%e135090135105%_
                               (gx#syntax-e _%e135087135097%_)))
                          (let ((_%hd135091135108%_ (##car _%e135090135105%_))
                                (_%tl135092135110%_ (##cdr _%e135090135105%_)))
                            (if (gx#stx-pair? _%tl135092135110%_)
                                (let ((_%e135093135113%_
                                       (gx#syntax-e _%tl135092135110%_)))
                                  (let ((_%hd135094135116%_
                                         (##car _%e135093135113%_))
                                        (_%tl135095135118%_
                                         (##cdr _%e135093135113%_)))
                                    (let* ((_%hd135121%_ _%hd135094135116%_)
                                           (_%body135123%_ _%tl135095135118%_))
                                      (if (and (gx#stx-list? _%hd135121%_)
                                               (gx#stx-list? _%body135123%_)
                                               (not (gx#stx-null?
                                                     _%body135123%_)))
                                          (gx#core-cons*
                                           _%form135084%_
                                           (gx#stx-map1
                                            _%generate135086%_
                                            _%hd135121%_)
                                           _%body135123%_)
                                          (_%E135089135101%_)))))
                                (_%E135089135101%_))))
                        (_%E135089135101%_)))))
            (_%E135088135125%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx135175%_)
        (let ((_%form135177%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx135175%_ _%form135177%_))))
    (define gx#macro-expand-let-values
      (lambda _g137563_
        (let ((_g137564_ (##length _g137563_)))
          (cond ((##fx= _g137564_ 1)
                 (apply gx#macro-expand-let-values__0 _g137563_))
                ((##fx= _g137564_ 2)
                 (apply gx#macro-expand-let-values__% _g137563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g137563_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx135080%_)
        (gx#macro-expand-let-values__% _%stx135080%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx135078%_)
        (gx#macro-expand-let-values__% _%stx135078%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx134969%_)
        (let* ((_%e134970134996%_ _%stx134969%_)
               (_%E134982135000%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e134970134996%_)))
               (_%E134972135042%_
                (lambda ()
                  (if (gx#stx-pair? _%e134970134996%_)
                      (let ((_%e134983135004%_
                             (gx#syntax-e _%e134970134996%_)))
                        (let ((_%hd134984135007%_ (##car _%e134983135004%_))
                              (_%tl134985135009%_ (##cdr _%e134983135004%_)))
                          (if (gx#stx-pair? _%tl134985135009%_)
                              (let ((_%e134986135012%_
                                     (gx#syntax-e _%tl134985135009%_)))
                                (let ((_%hd134987135015%_
                                       (##car _%e134986135012%_))
                                      (_%tl134988135017%_
                                       (##cdr _%e134986135012%_)))
                                  (let ((_%test135020%_ _%hd134987135015%_))
                                    (if (gx#stx-pair? _%tl134988135017%_)
                                        (let ((_%e134989135022%_
                                               (gx#syntax-e
                                                _%tl134988135017%_)))
                                          (let ((_%hd134990135025%_
                                                 (##car _%e134989135022%_))
                                                (_%tl134991135027%_
                                                 (##cdr _%e134989135022%_)))
                                            (let ((_%K135030%_
                                                   _%hd134990135025%_))
                                              (if (gx#stx-pair?
                                                   _%tl134991135027%_)
                                                  (let ((_%e134992135032%_
                                                         (gx#syntax-e
                                                          _%tl134991135027%_)))
                                                    (let ((_%hd134993135035%_
                                                           (##car _%e134992135032%_))
                                                          (_%tl134994135037%_
                                                           (##cdr _%e134992135032%_)))
                                                      (let ((_%E135040%_
                                                             _%hd134993135035%_))
                                                        (if (gx#stx-null?
                                                             _%tl134994135037%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test135020%_
                                                             _%K135030%_
                                                             _%E135040%_)
                                                            (_%E134982135000%_)))))
                                                  (_%E134982135000%_)))))
                                        (_%E134982135000%_)))))
                              (_%E134982135000%_))))
                      (_%E134982135000%_))))
               (_%E134971135074%_
                (lambda ()
                  (if (gx#stx-pair? _%e134970134996%_)
                      (let ((_%e134973135046%_
                             (gx#syntax-e _%e134970134996%_)))
                        (let ((_%hd134974135049%_ (##car _%e134973135046%_))
                              (_%tl134975135051%_ (##cdr _%e134973135046%_)))
                          (if (gx#stx-pair? _%tl134975135051%_)
                              (let ((_%e134976135054%_
                                     (gx#syntax-e _%tl134975135051%_)))
                                (let ((_%hd134977135057%_
                                       (##car _%e134976135054%_))
                                      (_%tl134978135059%_
                                       (##cdr _%e134976135054%_)))
                                  (let ((_%test135062%_ _%hd134977135057%_))
                                    (if (gx#stx-pair? _%tl134978135059%_)
                                        (let ((_%e134979135064%_
                                               (gx#syntax-e
                                                _%tl134978135059%_)))
                                          (let ((_%hd134980135067%_
                                                 (##car _%e134979135064%_))
                                                (_%tl134981135069%_
                                                 (##cdr _%e134979135064%_)))
                                            (let ((_%K135072%_
                                                   _%hd134980135067%_))
                                              (if (gx#stx-null?
                                                   _%tl134981135069%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test135062%_
                                                   _%K135072%_
                                                   '#!void)
                                                  (_%E134972135042%_)))))
                                        (_%E134972135042%_)))))
                              (_%E134972135042%_))))
                      (_%E134972135042%_)))))
          (_%E134971135074%_))))
    (define gx#free-identifier=?
      (lambda (_%xid134954%_ _%yid134955%_)
        (let ((_%xe134957%_ (gx#resolve-identifier__0 _%xid134954%_))
              (_%ye134958%_ (gx#resolve-identifier__0 _%yid134955%_)))
          (if (and _%xe134957%_ _%ye134958%_)
              (let ((_%$e134961%_ (eq? _%xe134957%_ _%ye134958%_)))
                (if _%$e134961%_
                    _%$e134961%_
                    (if (##structure-instance-of? _%xe134957%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye134958%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe134957%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye134958%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe134957%_ _%ye134958%_)
                  '#f
                  (gx#stx-eq? _%xid134954%_ _%yid134955%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid134935%_ _%yid134936%_)
        (letrec ((_%context134938%_
                  (lambda (_%e134952%_)
                    (if (##structure-direct-instance-of?
                         _%e134952%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e134952%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks134939%_
                  (lambda (_%e134947%_)
                    (if (symbol? _%e134947%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e134947%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e134947%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e134947%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap134940%_
                  (lambda (_%e134945%_)
                    (if (symbol? _%e134945%_)
                        _%e134945%_
                        (gx#syntax-local-unwrap _%e134945%_)))))
          (let ((_%x134942%_ (_%unwrap134940%_ _%xid134935%_))
                (_%y134943%_ (_%unwrap134940%_ _%yid134936%_)))
            (if (gx#stx-eq? _%x134942%_ _%y134943%_)
                (if (eq? (_%context134938%_ _%x134942%_)
                         (_%context134938%_ _%y134943%_))
                    (equal? (_%marks134939%_ _%x134942%_)
                            (_%marks134939%_ _%y134943%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx134933%_)
        (if (gx#identifier? _%stx134933%_)
            (gx#core-identifier=? _%stx134933%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx134931%_)
        (if (gx#identifier? _%stx134931%_)
            (gx#core-identifier=? _%stx134931%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx134874%_ _%where134875%_)
        (let _%lp134877%_ ((_%rest134879%_ (gx#syntax->list _%stx134874%_)))
          (let* ((_%rest134880134888%_ _%rest134879%_)
                 (_%else134882134896%_ (lambda () '#t))
                 (_%K134884134909%_
                  (lambda (_%rest134899%_ _%hd134900%_)
                    (if (gx#identifier? _%hd134900%_)
                        (if (__find (lambda (_%g134902134904%_)
                                      (gx#bound-identifier=?
                                       _%g134902134904%_
                                       _%hd134900%_))
                                    _%rest134899%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where134875%_
                             _%hd134900%_)
                            (_%lp134877%_ _%rest134899%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where134875%_
                         _%hd134900%_)))))
            (if (pair? _%rest134880134888%_)
                (let ((_%hd134885134912%_ (##car _%rest134880134888%_))
                      (_%tl134886134914%_ (##cdr _%rest134880134888%_)))
                  (let* ((_%hd134917%_ _%hd134885134912%_)
                         (_%rest134919%_ _%tl134886134914%_))
                    (_%K134884134909%_ _%rest134919%_ _%hd134917%_)))
                (_%else134882134896%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx134924%_)
        (let ((_%where134926%_ _%stx134924%_))
          (gx#check-duplicate-identifiers__% _%stx134924%_ _%where134926%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g137565_
        (let ((_g137566_ (##length _g137565_)))
          (cond ((##fx= _g137566_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g137565_))
                ((##fx= _g137566_ 2)
                 (apply gx#check-duplicate-identifiers__% _g137565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g137565_))))))
    (define gx#core-bind-values?
      (lambda (_%stx134866%_)
        (gx#stx-andmap
         (lambda (_%x134868%_)
           (let ((_%$e134870%_ (gx#identifier? _%x134868%_)))
             (if _%$e134870%_ _%$e134870%_ (gx#stx-false? _%x134868%_))))
         _%stx134866%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx134830%_ _%rebind?134831%_ _%phi134832%_ _%ctx134833%_)
        (gx#stx-for-each1
         (lambda (_%id134835%_)
           (if (gx#identifier? _%id134835%_)
               (gx#core-bind-runtime!__%
                _%id134835%_
                _%rebind?134831%_
                _%phi134832%_
                _%ctx134833%_)
               '#!void))
         _%stx134830%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx134840%_)
        (let* ((_%rebind?134842%_ '#f)
               (_%phi134844%_ (gx#current-expander-phi))
               (_%ctx134846%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx134840%_
           _%rebind?134842%_
           _%phi134844%_
           _%ctx134846%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx134848%_ _%rebind?134849%_)
        (let* ((_%phi134851%_ (gx#current-expander-phi))
               (_%ctx134853%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx134848%_
           _%rebind?134849%_
           _%phi134851%_
           _%ctx134853%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx134855%_ _%rebind?134856%_ _%phi134857%_)
        (let ((_%ctx134859%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx134855%_
           _%rebind?134856%_
           _%phi134857%_
           _%ctx134859%_))))
    (define gx#core-bind-values!
      (lambda _g137567_
        (let ((_g137568_ (##length _g137567_)))
          (cond ((##fx= _g137568_ 1) (apply gx#core-bind-values!__0 _g137567_))
                ((##fx= _g137568_ 2) (apply gx#core-bind-values!__1 _g137567_))
                ((##fx= _g137568_ 3) (apply gx#core-bind-values!__2 _g137567_))
                ((##fx= _g137568_ 4) (apply gx#core-bind-values!__% _g137567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g137567_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx134825%_)
        (gx#stx-map1
         (lambda (_%x134827%_)
           (if (gx#identifier? _%x134827%_)
               (gx#core-quote-syntax__0 _%x134827%_)
               '#f))
         _%stx134825%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx134818%_)
        (if (gx#identifier? _%stx134818%_)
            (let* ((_%bind134820%_ (gx#resolve-identifier__0 _%stx134818%_))
                   (_%$e134822%_ (not _%bind134820%_)))
              (if _%$e134822%_
                  _%$e134822%_
                  (##structure-instance-of?
                   _%bind134820%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id134807%_ _%form134808%_)
        (let ((_%bind134810%_ (gx#resolve-identifier__0 _%id134807%_)))
          (if (##structure-instance-of? _%bind134810%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id134807%_)
              (if (not _%bind134810%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id134807%_)))
                      (gx#core-quote-syntax__0 _%id134807%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form134808%_
                       _%id134807%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form134808%_
                   _%id134807%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id134762%_ _%rebind?134763%_ _%phi134764%_ _%ctx134765%_)
        (let* ((_%key134767%_ (gx#core-identifier-key _%id134762%_))
               (_%eid134769%_
                (gx#make-binding-id__%
                 _%key134767%_
                 '#f
                 _%phi134764%_
                 _%ctx134765%_))
               (_%bind134775%_
                (if (##structure-instance-of?
                     _%ctx134765%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid134769%_
                     _%key134767%_
                     _%phi134764%_
                     _%ctx134765%_)
                    (if (##structure-instance-of?
                         _%ctx134765%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid134769%_
                         _%key134767%_
                         _%phi134764%_)
                        (if (##structure-instance-of?
                             _%ctx134765%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid134769%_
                             _%key134767%_
                             _%phi134764%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid134769%_
                             _%key134767%_
                             _%phi134764%_))))))
          (gx#bind-identifier!__%
           _%id134762%_
           _%bind134775%_
           _%rebind?134763%_
           _%phi134764%_
           _%ctx134765%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id134781%_)
        (let* ((_%rebind?134783%_ '#f)
               (_%phi134785%_ (gx#current-expander-phi))
               (_%ctx134787%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id134781%_
           _%rebind?134783%_
           _%phi134785%_
           _%ctx134787%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id134789%_ _%rebind?134790%_)
        (let* ((_%phi134792%_ (gx#current-expander-phi))
               (_%ctx134794%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id134789%_
           _%rebind?134790%_
           _%phi134792%_
           _%ctx134794%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id134796%_ _%rebind?134797%_ _%phi134798%_)
        (let ((_%ctx134800%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id134796%_
           _%rebind?134797%_
           _%phi134798%_
           _%ctx134800%_))))
    (define gx#core-bind-runtime!
      (lambda _g137569_
        (let ((_g137570_ (##length _g137569_)))
          (cond ((##fx= _g137570_ 1)
                 (apply gx#core-bind-runtime!__0 _g137569_))
                ((##fx= _g137570_ 2)
                 (apply gx#core-bind-runtime!__1 _g137569_))
                ((##fx= _g137570_ 3)
                 (apply gx#core-bind-runtime!__2 _g137569_))
                ((##fx= _g137570_ 4)
                 (apply gx#core-bind-runtime!__% _g137569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g137569_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id134714%_
               _%eid134715%_
               _%rebind?134716%_
               _%phi134717%_
               _%ctx134718%_)
        (let* ((_%key134720%_ (gx#core-identifier-key _%id134714%_))
               (_%bind134725%_
                (if (##structure-instance-of?
                     _%ctx134718%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid134715%_
                     _%key134720%_
                     _%phi134717%_
                     _%ctx134718%_)
                    (if (##structure-instance-of?
                         _%ctx134718%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid134715%_
                         _%key134720%_
                         _%phi134717%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid134715%_
                         _%key134720%_
                         _%phi134717%_)))))
          (gx#bind-identifier!__%
           _%id134714%_
           _%bind134725%_
           _%rebind?134716%_
           _%phi134717%_
           _%ctx134718%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id134731%_ _%eid134732%_)
        (let* ((_%rebind?134734%_ '#f)
               (_%phi134736%_ (gx#current-expander-phi))
               (_%ctx134738%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id134731%_
           _%eid134732%_
           _%rebind?134734%_
           _%phi134736%_
           _%ctx134738%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id134740%_ _%eid134741%_ _%rebind?134742%_)
        (let* ((_%phi134744%_ (gx#current-expander-phi))
               (_%ctx134746%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id134740%_
           _%eid134741%_
           _%rebind?134742%_
           _%phi134744%_
           _%ctx134746%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id134748%_ _%eid134749%_ _%rebind?134750%_ _%phi134751%_)
        (let ((_%ctx134753%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id134748%_
           _%eid134749%_
           _%rebind?134750%_
           _%phi134751%_
           _%ctx134753%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g137571_
        (let ((_g137572_ (##length _g137571_)))
          (cond ((##fx= _g137572_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g137571_))
                ((##fx= _g137572_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g137571_))
                ((##fx= _g137572_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g137571_))
                ((##fx= _g137572_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g137571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g137571_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id134674%_
               _%eid134675%_
               _%rebind?134676%_
               _%phi134677%_
               _%ctx134678%_)
        (gx#bind-identifier!__%
         _%id134674%_
         (##structure
          gx#extern-binding::t
          _%eid134675%_
          (gx#core-identifier-key _%id134674%_)
          _%phi134677%_)
         _%rebind?134676%_
         _%phi134677%_
         _%ctx134678%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id134683%_ _%eid134684%_)
        (let* ((_%rebind?134686%_ '#f)
               (_%phi134688%_ (gx#current-expander-phi))
               (_%ctx134690%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id134683%_
           _%eid134684%_
           _%rebind?134686%_
           _%phi134688%_
           _%ctx134690%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id134692%_ _%eid134693%_ _%rebind?134694%_)
        (let* ((_%phi134696%_ (gx#current-expander-phi))
               (_%ctx134698%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id134692%_
           _%eid134693%_
           _%rebind?134694%_
           _%phi134696%_
           _%ctx134698%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id134700%_ _%eid134701%_ _%rebind?134702%_ _%phi134703%_)
        (let ((_%ctx134705%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id134700%_
           _%eid134701%_
           _%rebind?134702%_
           _%phi134703%_
           _%ctx134705%_))))
    (define gx#core-bind-extern!
      (lambda _g137573_
        (let ((_g137574_ (##length _g137573_)))
          (cond ((##fx= _g137574_ 2) (apply gx#core-bind-extern!__0 _g137573_))
                ((##fx= _g137574_ 3) (apply gx#core-bind-extern!__1 _g137573_))
                ((##fx= _g137574_ 4) (apply gx#core-bind-extern!__2 _g137573_))
                ((##fx= _g137574_ 5) (apply gx#core-bind-extern!__% _g137573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g137573_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id134628%_
               _%e134629%_
               _%rebind?134630%_
               _%phi134631%_
               _%ctx134632%_)
        (gx#bind-identifier!__%
         _%id134628%_
         (let ((_%key134637%_ (gx#core-identifier-key _%id134628%_))
               (_%e134638%_
                (if (or (##structure-instance-of? _%e134629%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e134629%_
                         'gx#expander-context::t))
                    _%e134629%_
                    (##structure
                     gx#user-expander::t
                     _%e134629%_
                     _%ctx134632%_
                     _%phi134631%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key134637%_
             '#t
             _%phi134631%_
             _%ctx134632%_)
            _%key134637%_
            _%phi134631%_
            _%e134638%_))
         _%rebind?134630%_
         _%phi134631%_
         _%ctx134632%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id134643%_ _%e134644%_)
        (let* ((_%rebind?134646%_ '#f)
               (_%phi134648%_ (gx#current-expander-phi))
               (_%ctx134650%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id134643%_
           _%e134644%_
           _%rebind?134646%_
           _%phi134648%_
           _%ctx134650%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id134652%_ _%e134653%_ _%rebind?134654%_)
        (let* ((_%phi134656%_ (gx#current-expander-phi))
               (_%ctx134658%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id134652%_
           _%e134653%_
           _%rebind?134654%_
           _%phi134656%_
           _%ctx134658%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id134660%_ _%e134661%_ _%rebind?134662%_ _%phi134663%_)
        (let ((_%ctx134665%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id134660%_
           _%e134661%_
           _%rebind?134662%_
           _%phi134663%_
           _%ctx134665%_))))
    (define gx#core-bind-syntax!
      (lambda _g137575_
        (let ((_g137576_ (##length _g137575_)))
          (cond ((##fx= _g137576_ 2) (apply gx#core-bind-syntax!__0 _g137575_))
                ((##fx= _g137576_ 3) (apply gx#core-bind-syntax!__1 _g137575_))
                ((##fx= _g137576_ 4) (apply gx#core-bind-syntax!__2 _g137575_))
                ((##fx= _g137576_ 5) (apply gx#core-bind-syntax!__% _g137575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g137575_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id134611%_ _%e134612%_ _%rebind?134613%_)
        (gx#core-bind-syntax!__%
         _%id134611%_
         _%e134612%_
         _%rebind?134613%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id134618%_ _%e134619%_)
        (let ((_%rebind?134621%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id134618%_
           _%e134619%_
           _%rebind?134621%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g137577_
        (let ((_g137578_ (##length _g137577_)))
          (cond ((##fx= _g137578_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g137577_))
                ((##fx= _g137578_ 3)
                 (apply gx#core-bind-root-syntax!__% _g137577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g137577_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id134569%_
               _%alias-id134570%_
               _%rebind?134571%_
               _%phi134572%_
               _%ctx134573%_)
        (gx#bind-identifier!__%
         _%id134569%_
         (let ((_%key134575%_ (gx#core-identifier-key _%id134569%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key134575%_
             '#t
             _%phi134572%_
             _%ctx134573%_)
            _%key134575%_
            _%phi134572%_
            _%alias-id134570%_))
         _%rebind?134571%_
         _%phi134572%_
         _%ctx134573%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id134580%_ _%alias-id134581%_)
        (let* ((_%rebind?134583%_ '#f)
               (_%phi134585%_ (gx#current-expander-phi))
               (_%ctx134587%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id134580%_
           _%alias-id134581%_
           _%rebind?134583%_
           _%phi134585%_
           _%ctx134587%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id134589%_ _%alias-id134590%_ _%rebind?134591%_)
        (let* ((_%phi134593%_ (gx#current-expander-phi))
               (_%ctx134595%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id134589%_
           _%alias-id134590%_
           _%rebind?134591%_
           _%phi134593%_
           _%ctx134595%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id134597%_ _%alias-id134598%_ _%rebind?134599%_ _%phi134600%_)
        (let ((_%ctx134602%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id134597%_
           _%alias-id134598%_
           _%rebind?134599%_
           _%phi134600%_
           _%ctx134602%_))))
    (define gx#core-bind-alias!
      (lambda _g137579_
        (let ((_g137580_ (##length _g137579_)))
          (cond ((##fx= _g137580_ 2) (apply gx#core-bind-alias!__0 _g137579_))
                ((##fx= _g137580_ 3) (apply gx#core-bind-alias!__1 _g137579_))
                ((##fx= _g137580_ 4) (apply gx#core-bind-alias!__2 _g137579_))
                ((##fx= _g137580_ 5) (apply gx#core-bind-alias!__% _g137579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g137579_))))))
    (define gx#make-binding-id__%
      (lambda (_%key134519%_ _%syntax?134520%_ _%phi134521%_ _%ctx134522%_)
        (if (uninterned-symbol? _%key134519%_)
            (##gensym 'L)
            (if (pair? _%key134519%_)
                (gensym (##car _%key134519%_))
                (if (##structure-instance-of? _%ctx134522%_ 'gx#top-context::t)
                    (let ((_%ns134527%_
                           (gx#core-context-namespace__% _%ctx134522%_)))
                      (if (and (fxzero? _%phi134521%_) (not _%syntax?134520%_))
                          (if _%ns134527%_
                              (make-symbol__1 _%ns134527%_ '"#" _%key134519%_)
                              _%key134519%_)
                          (if _%syntax?134520%_
                              (make-symbol__1
                               (let ((_%$e134531%_ _%ns134527%_))
                                 (if _%$e134531%_ _%$e134531%_ '""))
                               '"[:"
                               (number->string _%phi134521%_)
                               '":]#"
                               _%key134519%_)
                              (make-symbol__1
                               (let ((_%$e134535%_ _%ns134527%_))
                                 (if _%$e134535%_ _%$e134535%_ '""))
                               '"["
                               (number->string _%phi134521%_)
                               '"]#"
                               _%key134519%_))))
                    (gensym _%key134519%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key134542%_)
        (let* ((_%syntax?134544%_ '#f)
               (_%phi134546%_ (gx#current-expander-phi))
               (_%ctx134548%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key134542%_
           _%syntax?134544%_
           _%phi134546%_
           _%ctx134548%_))))
    (define gx#make-binding-id__1
      (lambda (_%key134550%_ _%syntax?134551%_)
        (let* ((_%phi134553%_ (gx#current-expander-phi))
               (_%ctx134555%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key134550%_
           _%syntax?134551%_
           _%phi134553%_
           _%ctx134555%_))))
    (define gx#make-binding-id__2
      (lambda (_%key134557%_ _%syntax?134558%_ _%phi134559%_)
        (let ((_%ctx134561%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key134557%_
           _%syntax?134558%_
           _%phi134559%_
           _%ctx134561%_))))
    (define gx#make-binding-id
      (lambda _g137581_
        (let ((_g137582_ (##length _g137581_)))
          (cond ((##fx= _g137582_ 1) (apply gx#make-binding-id__0 _g137581_))
                ((##fx= _g137582_ 2) (apply gx#make-binding-id__1 _g137581_))
                ((##fx= _g137582_ 3) (apply gx#make-binding-id__2 _g137581_))
                ((##fx= _g137582_ 4) (apply gx#make-binding-id__% _g137581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g137581_))))))))
