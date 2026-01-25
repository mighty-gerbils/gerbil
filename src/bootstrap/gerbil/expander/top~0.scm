(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1769384628)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx137584%_)
        (letrec ((_%expand-special137586%_
                  (lambda (_%hd137588%_ _%K137589%_ _%rest137590%_ _%r137591%_)
                    (_%K137589%_
                     _%rest137590%_
                     (cons (gx#core-expand-top _%hd137588%_) _%r137591%_)))))
          (gx#core-expand-block__0 _%stx137584%_ _%expand-special137586%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx137337%_)
        (letrec ((_%expand-special137339%_
                  (lambda (_%hd137459%_ _%K137460%_ _%rest137461%_ _%r137462%_)
                    (let* ((_%K137466%_
                            (lambda (_%e137464%_)
                              (_%K137460%_
                               _%rest137461%_
                               (cons _%e137464%_ _%r137462%_))))
                           (_%e137467137496%_ _%hd137459%_)
                           (_%E137491137500%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e137467137496%_)))
                           (_%E137487137512%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137467137496%_)
                                  (let ((_%e137492137504%_
                                         (gx#syntax-e _%e137467137496%_)))
                                    (let ((_%hd137493137507%_
                                           (##car _%e137492137504%_))
                                          (_%tl137494137509%_
                                           (##cdr _%e137492137504%_)))
                                      (if (and (gx#identifier?
                                                _%hd137493137507%_)
                                               (gx#core-identifier=?
                                                _%hd137493137507%_
                                                '%#define-runtime))
                                          (_%K137466%_
                                           (gx#core-expand-define-runtime%
                                            _%hd137459%_))
                                          (_%E137491137500%_))))
                                  (_%E137491137500%_))))
                           (_%E137483137524%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137467137496%_)
                                  (let ((_%e137488137516%_
                                         (gx#syntax-e _%e137467137496%_)))
                                    (let ((_%hd137489137519%_
                                           (##car _%e137488137516%_))
                                          (_%tl137490137521%_
                                           (##cdr _%e137488137516%_)))
                                      (if (and (gx#identifier?
                                                _%hd137489137519%_)
                                               (gx#core-identifier=?
                                                _%hd137489137519%_
                                                '%#define-alias))
                                          (_%K137466%_
                                           (gx#core-expand-define-alias%
                                            _%hd137459%_))
                                          (_%E137487137512%_))))
                                  (_%E137487137512%_))))
                           (_%E137473137536%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137467137496%_)
                                  (let ((_%e137484137528%_
                                         (gx#syntax-e _%e137467137496%_)))
                                    (let ((_%hd137485137531%_
                                           (##car _%e137484137528%_))
                                          (_%tl137486137533%_
                                           (##cdr _%e137484137528%_)))
                                      (if (and (gx#identifier?
                                                _%hd137485137531%_)
                                               (gx#core-identifier=?
                                                _%hd137485137531%_
                                                '%#define-syntax))
                                          (_%K137466%_
                                           (gx#core-expand-define-syntax%
                                            _%hd137459%_))
                                          (_%E137483137524%_))))
                                  (_%E137483137524%_))))
                           (_%E137469137568%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137467137496%_)
                                  (let ((_%e137474137540%_
                                         (gx#syntax-e _%e137467137496%_)))
                                    (let ((_%hd137475137543%_
                                           (##car _%e137474137540%_))
                                          (_%tl137476137545%_
                                           (##cdr _%e137474137540%_)))
                                      (if (and (gx#identifier?
                                                _%hd137475137543%_)
                                               (gx#core-identifier=?
                                                _%hd137475137543%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl137476137545%_)
                                              (let ((_%e137477137548%_
                                                     (gx#syntax-e
                                                      _%tl137476137545%_)))
                                                (let ((_%hd137478137551%_
                                                       (##car _%e137477137548%_))
                                                      (_%tl137479137553%_
                                                       (##cdr _%e137477137548%_)))
                                                  (let ((_%hd-bind137556%_
                                                         _%hd137478137551%_))
                                                    (if (gx#stx-pair?
                                                         _%tl137479137553%_)
                                                        (let ((_%e137480137558%_
                                                               (gx#syntax-e
                                                                _%tl137479137553%_)))
                                                          (let ((_%hd137481137561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e137480137558%_))
                        (_%tl137482137563%_ (##cdr _%e137480137558%_)))
                    (let ((_%expr137566%_ _%hd137481137561%_))
                      (if (gx#stx-null? _%tl137482137563%_)
                          (if (gx#core-bind-values? _%hd-bind137556%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind137556%_)
                                (_%K137466%_ _%hd137459%_))
                              (_%E137473137536%_))
                          (_%E137473137536%_)))))
                (_%E137473137536%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E137473137536%_))
                                          (_%E137473137536%_))))
                                  (_%E137473137536%_))))
                           (_%E137468137580%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137467137496%_)
                                  (let ((_%e137470137572%_
                                         (gx#syntax-e _%e137467137496%_)))
                                    (let ((_%hd137471137575%_
                                           (##car _%e137470137572%_))
                                          (_%tl137472137577%_
                                           (##cdr _%e137470137572%_)))
                                      (if (and (gx#identifier?
                                                _%hd137471137575%_)
                                               (gx#core-identifier=?
                                                _%hd137471137575%_
                                                '%#begin-syntax))
                                          (_%K137466%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd137459%_))
                                          (_%E137469137568%_))))
                                  (_%E137469137568%_)))))
                      (_%E137468137580%_))))
                 (_%eval-body137340%_
                  (lambda (_%rbody137348%_)
                    (let _%lp137350%_ ((_%rest137352%_ _%rbody137348%_)
                                       (_%body137353%_ '())
                                       (_%ebody137354%_ '()))
                      (let* ((_%rest137355137363%_ _%rest137352%_)
                             (_%else137357137371%_
                              (lambda ()
                                (values _%body137353%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody137354%_)
                                          (gx#stx-source _%stx137337%_))))))
                             (_%K137359137447%_
                              (lambda (_%rest137374%_ _%hd137375%_)
                                (let* ((_%e137376137393%_ _%hd137375%_)
                                       (_%E137388137397%_
                                        (lambda ()
                                          (_%lp137350%_
                                           _%rest137374%_
                                           (cons _%hd137375%_ _%body137353%_)
                                           (cons _%hd137375%_
                                                 _%ebody137354%_))))
                                       (_%E137378137409%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e137376137393%_)
                                              (let ((_%e137389137401%_
                                                     (gx#syntax-e
                                                      _%e137376137393%_)))
                                                (let ((_%hd137390137404%_
                                                       (##car _%e137389137401%_))
                                                      (_%tl137391137406%_
                                                       (##cdr _%e137389137401%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd137390137404%_)
                                                           (gx#core-identifier=?
                                                            _%hd137390137404%_
                                                            '%#begin-syntax))
                                                      (_%lp137350%_
                                                       _%rest137374%_
                                                       (cons _%hd137375%_
                                                             _%body137353%_)
                                                       _%ebody137354%_)
                                                      (_%E137388137397%_))))
                                              (_%E137388137397%_))))
                                       (_%E137377137443%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e137376137393%_)
                                              (let ((_%e137379137413%_
                                                     (gx#syntax-e
                                                      _%e137376137393%_)))
                                                (let ((_%hd137380137416%_
                                                       (##car _%e137379137413%_))
                                                      (_%tl137381137418%_
                                                       (##cdr _%e137379137413%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd137380137416%_)
                                                           (gx#core-identifier=?
                                                            _%hd137380137416%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl137381137418%_)
                                                          (let ((_%e137382137421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl137381137418%_)))
                    (let ((_%hd137383137424%_ (##car _%e137382137421%_))
                          (_%tl137384137426%_ (##cdr _%e137382137421%_)))
                      (let ((_%hd-bind137429%_ _%hd137383137424%_))
                        (if (gx#stx-pair? _%tl137384137426%_)
                            (let ((_%e137385137431%_
                                   (gx#syntax-e _%tl137384137426%_)))
                              (let ((_%hd137386137434%_
                                     (##car _%e137385137431%_))
                                    (_%tl137387137436%_
                                     (##cdr _%e137385137431%_)))
                                (let ((_%expr137439%_ _%hd137386137434%_))
                                  (if (gx#stx-null? _%tl137387137436%_)
                                      (let ((_%ehd137441%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind137429%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr137439%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd137375%_))))
                                        (_%lp137350%_
                                         _%rest137374%_
                                         (cons _%ehd137441%_ _%body137353%_)
                                         (cons _%ehd137441%_ _%ebody137354%_)))
                                      (_%E137378137409%_)))))
                            (_%E137378137409%_)))))
                  (_%E137378137409%_))
              (_%E137378137409%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E137378137409%_)))))
                                  (_%E137377137443%_)))))
                        (if (pair? _%rest137355137363%_)
                            (let ((_%hd137360137450%_
                                   (##car _%rest137355137363%_))
                                  (_%tl137361137452%_
                                   (##cdr _%rest137355137363%_)))
                              (let* ((_%hd137455%_ _%hd137360137450%_)
                                     (_%rest137457%_ _%tl137361137452%_))
                                (_%K137359137447%_
                                 _%rest137457%_
                                 _%hd137455%_)))
                            (_%else137357137371%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody137343%_
                     (gx#core-expand-block__1
                      _%stx137337%_
                      _%expand-special137339%_
                      '#f))
                    (_g137607_ (_%eval-body137340%_ _%rbody137343%_)))
               (begin
                 (let ((_g137608_
                        (if (##values? _g137607_)
                            (##values-length _g137607_)
                            1)))
                   (if (not (##fx= _g137608_ 2))
                       (error "Context expects 2 values" _g137608_)))
                 (let ((_%expanded-body137345%_ (##values-ref _g137607_ 0))
                       (_%value137346%_ (##values-ref _g137607_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body137345%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value137346%_ '())))
                    (gx#stx-source _%stx137337%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx137307%_)
        (let* ((_%e137308137315%_ _%stx137307%_)
               (_%E137310137319%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137308137315%_)))
               (_%E137309137333%_
                (lambda ()
                  (if (gx#stx-pair? _%e137308137315%_)
                      (let ((_%e137311137323%_
                             (gx#syntax-e _%e137308137315%_)))
                        (let ((_%hd137312137326%_ (##car _%e137311137323%_))
                              (_%tl137313137328%_ (##cdr _%e137311137323%_)))
                          (let ((_%body137331%_ _%tl137313137328%_))
                            (if (gx#stx-list? _%body137331%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body137331%_)
                                 (gx#stx-source _%stx137307%_))
                                (_%E137310137319%_)))))
                      (_%E137310137319%_)))))
          (_%E137309137333%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx137305%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx137305%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx137251%_)
        (let* ((_%e137252137265%_ _%stx137251%_)
               (_%E137254137269%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e137252137265%_)))
               (_%E137253137301%_
                (lambda ()
                  (if (gx#stx-pair? _%e137252137265%_)
                      (let ((_%e137255137273%_
                             (gx#syntax-e _%e137252137265%_)))
                        (let ((_%hd137256137276%_ (##car _%e137255137273%_))
                              (_%tl137257137278%_ (##cdr _%e137255137273%_)))
                          (if (gx#stx-pair? _%tl137257137278%_)
                              (let ((_%e137258137281%_
                                     (gx#syntax-e _%tl137257137278%_)))
                                (let ((_%hd137259137284%_
                                       (##car _%e137258137281%_))
                                      (_%tl137260137286%_
                                       (##cdr _%e137258137281%_)))
                                  (let ((_%ann137289%_ _%hd137259137284%_))
                                    (if (gx#stx-pair? _%tl137260137286%_)
                                        (let ((_%e137261137291%_
                                               (gx#syntax-e
                                                _%tl137260137286%_)))
                                          (let ((_%hd137262137294%_
                                                 (##car _%e137261137291%_))
                                                (_%tl137263137296%_
                                                 (##cdr _%e137261137291%_)))
                                            (let ((_%expr137299%_
                                                   _%hd137262137294%_))
                                              (if (gx#stx-null?
                                                   _%tl137263137296%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann137289%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr137299%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx137251%_))
                                                  (_%E137254137269%_)))))
                                        (_%E137254137269%_)))))
                              (_%E137254137269%_))))
                      (_%E137254137269%_)))))
          (_%E137253137301%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx136975%_ _%body136976%_)
        (letrec ((_%expand-special136978%_
                  (lambda (_%hd137246%_ _%K137247%_ _%rest137248%_ _%r137249%_)
                    (_%K137247%_
                     '()
                     (cons (_%expand-internal136979%_
                            _%hd137246%_
                            _%rest137248%_)
                           _%r137249%_))))
                 (_%expand-internal136979%_
                  (lambda (_%hd137242%_ _%rest137243%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal136981%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd137242%_ _%rest137243%_))
                          (gx#stx-source _%stx136975%_))
                         _%expand-internal-special136980%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj137601
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj137601)
                       __obj137601))))
                 (_%expand-internal-special136980%_
                  (lambda (_%hd137137%_ _%K137138%_ _%rest137139%_ _%r137140%_)
                    (let* ((_%e137141137166%_ _%hd137137%_)
                           (_%E137161137170%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e137141137166%_)))
                           (_%E137157137182%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137141137166%_)
                                  (let ((_%e137162137174%_
                                         (gx#syntax-e _%e137141137166%_)))
                                    (let ((_%hd137163137177%_
                                           (##car _%e137162137174%_))
                                          (_%tl137164137179%_
                                           (##cdr _%e137162137174%_)))
                                      (if (and (gx#identifier?
                                                _%hd137163137177%_)
                                               (gx#core-identifier=?
                                                _%hd137163137177%_
                                                '%#declare))
                                          (_%K137138%_
                                           _%rest137139%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd137137%_)
                                                 _%r137140%_))
                                          (_%E137161137170%_))))
                                  (_%E137161137170%_))))
                           (_%E137153137194%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137141137166%_)
                                  (let ((_%e137158137186%_
                                         (gx#syntax-e _%e137141137166%_)))
                                    (let ((_%hd137159137189%_
                                           (##car _%e137158137186%_))
                                          (_%tl137160137191%_
                                           (##cdr _%e137158137186%_)))
                                      (if (and (gx#identifier?
                                                _%hd137159137189%_)
                                               (gx#core-identifier=?
                                                _%hd137159137189%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd137137%_)
                                            (_%K137138%_
                                             _%rest137139%_
                                             _%r137140%_))
                                          (_%E137157137182%_))))
                                  (_%E137157137182%_))))
                           (_%E137143137206%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137141137166%_)
                                  (let ((_%e137154137198%_
                                         (gx#syntax-e _%e137141137166%_)))
                                    (let ((_%hd137155137201%_
                                           (##car _%e137154137198%_))
                                          (_%tl137156137203%_
                                           (##cdr _%e137154137198%_)))
                                      (if (and (gx#identifier?
                                                _%hd137155137201%_)
                                               (gx#core-identifier=?
                                                _%hd137155137201%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd137137%_)
                                            (_%K137138%_
                                             _%rest137139%_
                                             _%r137140%_))
                                          (_%E137153137194%_))))
                                  (_%E137153137194%_))))
                           (_%E137142137238%_
                            (lambda ()
                              (if (gx#stx-pair? _%e137141137166%_)
                                  (let ((_%e137144137210%_
                                         (gx#syntax-e _%e137141137166%_)))
                                    (let ((_%hd137145137213%_
                                           (##car _%e137144137210%_))
                                          (_%tl137146137215%_
                                           (##cdr _%e137144137210%_)))
                                      (if (and (gx#identifier?
                                                _%hd137145137213%_)
                                               (gx#core-identifier=?
                                                _%hd137145137213%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl137146137215%_)
                                              (let ((_%e137147137218%_
                                                     (gx#syntax-e
                                                      _%tl137146137215%_)))
                                                (let ((_%hd137148137221%_
                                                       (##car _%e137147137218%_))
                                                      (_%tl137149137223%_
                                                       (##cdr _%e137147137218%_)))
                                                  (let ((_%hd-bind137226%_
                                                         _%hd137148137221%_))
                                                    (if (gx#stx-pair?
                                                         _%tl137149137223%_)
                                                        (let ((_%e137150137228%_
                                                               (gx#syntax-e
                                                                _%tl137149137223%_)))
                                                          (let ((_%hd137151137231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e137150137228%_))
                        (_%tl137152137233%_ (##cdr _%e137150137228%_)))
                    (let ((_%expr137236%_ _%hd137151137231%_))
                      (if (gx#stx-null? _%tl137152137233%_)
                          (if (gx#core-bind-values? _%hd-bind137226%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind137226%_)
                                (_%K137138%_
                                 _%rest137139%_
                                 (cons _%hd137137%_ _%r137140%_)))
                              (_%E137143137206%_))
                          (_%E137143137206%_)))))
                (_%E137143137206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E137143137206%_))
                                          (_%E137143137206%_))))
                                  (_%E137143137206%_)))))
                      (_%E137142137238%_))))
                 (_%wrap-internal136981%_
                  (lambda (_%rbody136983%_)
                    (let _%lp136985%_ ((_%rest136987%_ _%rbody136983%_)
                                       (_%decls136988%_ '())
                                       (_%bind136989%_ '())
                                       (_%body136990%_ '()))
                      (let* ((_%e136991136998%_ _%rest136987%_)
                             (_%E136993137047%_
                              (lambda ()
                                (let* ((_%body137042%_
                                        (let* ((_%body137001137011%_
                                                _%body136990%_)
                                               (_%else137004137019%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body136990%_)
                                                   (gx#stx-source
                                                    _%stx136975%_)))))
                                          (let ((_%K137009137039%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx136975%_)))
                                                (_%K137006137025%_
                                                 (lambda (_%expr137023%_)
                                                   _%expr137023%_)))
                                            (let ((_%try-match137003137035%_
                                                   (lambda ()
                                                     (if (pair? _%body137001137011%_)
                                                         (let ((_%tl137008137030%_
                                                                (##cdr _%body137001137011%_))
                                                               (_%hd137007137028%_
                                                                (##car _%body137001137011%_)))
                                                           (if (null? _%tl137008137030%_)
                                                               (let ((_%expr137033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd137007137028%_))
                         (_%K137006137025%_ _%expr137033%_))
                       (_%else137004137019%_)))
                 (_%else137004137019%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body137001137011%_)
                                                  (_%K137009137039%_)
                                                  (_%try-match137003137035%_))))))
                                       (_%body137044%_
                                        (if (null? _%bind136989%_)
                                            _%body137042%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind136989%_
                                                         (cons _%body137042%_
                                                               '())))
                                             (gx#stx-source _%stx136975%_)))))
                                  (if (null? _%decls136988%_)
                                      _%body137044%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls136988%_
                                                   (cons _%body137044%_ '())))
                                       (gx#stx-source _%stx136975%_))))))
                             (_%E136992137133%_
                              (lambda ()
                                (if (gx#stx-pair? _%e136991136998%_)
                                    (let ((_%e136994137051%_
                                           (gx#syntax-e _%e136991136998%_)))
                                      (let ((_%hd136995137054%_
                                             (##car _%e136994137051%_))
                                            (_%tl136996137056%_
                                             (##cdr _%e136994137051%_)))
                                        (let* ((_%hd137059%_
                                                _%hd136995137054%_)
                                               (_%rest137061%_
                                                _%tl136996137056%_)
                                               (_%e137062137079%_ _%hd137059%_)
                                               (_%E137074137083%_
                                                (lambda ()
                                                  (if (null? _%bind136989%_)
                                                      (_%lp136985%_
                                                       _%rest137061%_
                                                       _%decls136988%_
                                                       _%bind136989%_
                                                       (cons _%hd137059%_
                                                             _%body136990%_))
                                                      (_%lp136985%_
                                                       _%rest137061%_
                                                       _%decls136988%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd137059%_ '()))
                     _%bind136989%_)
               _%body136990%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E137064137097%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e137062137079%_)
                                                      (let ((_%e137075137087%_
                                                             (gx#syntax-e
                                                              _%e137062137079%_)))
                                                        (let ((_%hd137076137090%_
                                                               (##car _%e137075137087%_))
                                                              (_%tl137077137092%_
                                                               (##cdr _%e137075137087%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd137076137090%_)
                           (gx#core-identifier=?
                            _%hd137076137090%_
                            '%#declare))
                      (let ((_%xdecls137095%_ _%tl137077137092%_))
                        (_%lp136985%_
                         _%rest137061%_
                         (gx#stx-foldr cons _%decls136988%_ _%xdecls137095%_)
                         _%bind136989%_
                         _%body136990%_))
                      (_%E137074137083%_))))
              (_%E137074137083%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E137063137129%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e137062137079%_)
                                                      (let ((_%e137065137101%_
                                                             (gx#syntax-e
                                                              _%e137062137079%_)))
                                                        (let ((_%hd137066137104%_
                                                               (##car _%e137065137101%_))
                                                              (_%tl137067137106%_
                                                               (##cdr _%e137065137101%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd137066137104%_)
                           (gx#core-identifier=?
                            _%hd137066137104%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl137067137106%_)
                          (let ((_%e137068137109%_
                                 (gx#syntax-e _%tl137067137106%_)))
                            (let ((_%hd137069137112%_
                                   (##car _%e137068137109%_))
                                  (_%tl137070137114%_
                                   (##cdr _%e137068137109%_)))
                              (let ((_%hd-bind137117%_ _%hd137069137112%_))
                                (if (gx#stx-pair? _%tl137070137114%_)
                                    (let ((_%e137071137119%_
                                           (gx#syntax-e _%tl137070137114%_)))
                                      (let ((_%hd137072137122%_
                                             (##car _%e137071137119%_))
                                            (_%tl137073137124%_
                                             (##cdr _%e137071137119%_)))
                                        (let ((_%expr137127%_
                                               _%hd137072137122%_))
                                          (if (gx#stx-null? _%tl137073137124%_)
                                              (_%lp136985%_
                                               _%rest137061%_
                                               _%decls136988%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind137117%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr137127%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind136989%_)
                                               _%body136990%_)
                                              (_%E137064137097%_)))))
                                    (_%E137064137097%_)))))
                          (_%E137064137097%_))
                      (_%E137064137097%_))))
              (_%E137064137097%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E137063137129%_))))
                                    (_%E136993137047%_)))))
                        (_%E136992137133%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body136976%_)
            (gx#stx-source _%stx136975%_))
           _%expand-special136978%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx136913%_)
        (let* ((_%e136914136921%_ _%stx136913%_)
               (_%E136916136925%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136914136921%_)))
               (_%E136915136971%_
                (lambda ()
                  (if (gx#stx-pair? _%e136914136921%_)
                      (let ((_%e136917136929%_
                             (gx#syntax-e _%e136914136921%_)))
                        (let ((_%hd136918136932%_ (##car _%e136917136929%_))
                              (_%tl136919136934%_ (##cdr _%e136917136929%_)))
                          (let ((_%body136937%_ _%tl136919136934%_))
                            (if (gx#stx-list? _%body136937%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl136939%_)
                                     (let* ((_%e136940136947%_ _%decl136939%_)
                                            (_%E136942136951%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e136940136947%_)))
                                            (_%E136941136967%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e136940136947%_)
                                                   (let ((_%e136943136955%_
                                                          (gx#syntax-e
                                                           _%e136940136947%_)))
                                                     (let ((_%hd136944136958%_
                                                            (##car _%e136943136955%_))
                                                           (_%tl136945136960%_
                                                            (##cdr _%e136943136955%_)))
                                                       (let* ((_%head136963%_
                                                               _%hd136944136958%_)
                                                              (_%args136965%_
                                                               _%tl136945136960%_))
                                                         (if (gx#stx-list?
                                                              _%args136965%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl136939%_)
                                                             (_%E136942136951%_)))))
                                                   (_%E136942136951%_)))))
                                       (_%E136941136967%_)))
                                   _%body136937%_))
                                 (gx#stx-source _%stx136913%_))
                                (_%E136916136925%_)))))
                      (_%E136916136925%_)))))
          (_%E136915136971%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx136817%_)
        (let* ((_%e136818136825%_ _%stx136817%_)
               (_%E136820136829%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136818136825%_)))
               (_%E136819136909%_
                (lambda ()
                  (if (gx#stx-pair? _%e136818136825%_)
                      (let ((_%e136821136833%_
                             (gx#syntax-e _%e136818136825%_)))
                        (let ((_%hd136822136836%_ (##car _%e136821136833%_))
                              (_%tl136823136838%_ (##cdr _%e136821136833%_)))
                          (let ((_%body136841%_ _%tl136823136838%_))
                            (let _%lp136843%_ ((_%rest136845%_ _%body136841%_)
                                               (_%r136846%_ '()))
                              (let* ((_%e136847136861%_ _%rest136845%_)
                                     (_%E136859136865%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx136817%_)))
                                     (_%E136849136869%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e136847136861%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r136846%_))
                                             (gx#stx-source _%stx136817%_))
                                            (_%E136859136865%_))))
                                     (_%E136848136905%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e136847136861%_)
                                            (let ((_%e136850136873%_
                                                   (gx#syntax-e
                                                    _%e136847136861%_)))
                                              (let ((_%hd136851136876%_
                                                     (##car _%e136850136873%_))
                                                    (_%tl136852136878%_
                                                     (##cdr _%e136850136873%_)))
                                                (if (gx#stx-pair?
                                                     _%hd136851136876%_)
                                                    (let ((_%e136853136881%_
                                                           (gx#syntax-e
                                                            _%hd136851136876%_)))
                                                      (let ((_%hd136854136884%_
                                                             (##car _%e136853136881%_))
                                                            (_%tl136855136886%_
                                                             (##cdr _%e136853136881%_)))
                                                        (let ((_%id136889%_
                                                               _%hd136854136884%_))
                                                          (if (gx#stx-pair?
                                                               _%tl136855136886%_)
                                                              (let ((_%e136856136891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl136855136886%_)))
                        (let ((_%hd136857136894%_ (##car _%e136856136891%_))
                              (_%tl136858136896%_ (##cdr _%e136856136891%_)))
                          (let ((_%eid136899%_ _%hd136857136894%_))
                            (if (gx#stx-null? _%tl136858136896%_)
                                (let ((_%rest136901%_ _%tl136852136878%_))
                                  (if (and (gx#identifier? _%id136889%_)
                                           (gx#identifier? _%eid136899%_))
                                      (let ((_%eid136903%_
                                             (gx#stx-e _%eid136899%_)))
                                        (gx#core-bind-extern!__0
                                         _%id136889%_
                                         _%eid136903%_)
                                        (_%lp136843%_
                                         _%rest136901%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id136889%_)
                                                     (cons _%eid136903%_ '()))
                                               _%r136846%_)))
                                      (_%E136849136869%_)))
                                (_%E136849136869%_)))))
                      (_%E136849136869%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E136849136869%_))))
                                            (_%E136849136869%_)))))
                                (_%E136848136905%_))))))
                      (_%E136820136829%_)))))
          (_%E136819136909%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx136763%_)
        (let* ((_%e136764136777%_ _%stx136763%_)
               (_%E136766136781%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136764136777%_)))
               (_%E136765136813%_
                (lambda ()
                  (if (gx#stx-pair? _%e136764136777%_)
                      (let ((_%e136767136785%_
                             (gx#syntax-e _%e136764136777%_)))
                        (let ((_%hd136768136788%_ (##car _%e136767136785%_))
                              (_%tl136769136790%_ (##cdr _%e136767136785%_)))
                          (if (gx#stx-pair? _%tl136769136790%_)
                              (let ((_%e136770136793%_
                                     (gx#syntax-e _%tl136769136790%_)))
                                (let ((_%hd136771136796%_
                                       (##car _%e136770136793%_))
                                      (_%tl136772136798%_
                                       (##cdr _%e136770136793%_)))
                                  (let ((_%hd136801%_ _%hd136771136796%_))
                                    (if (gx#stx-pair? _%tl136772136798%_)
                                        (let ((_%e136773136803%_
                                               (gx#syntax-e
                                                _%tl136772136798%_)))
                                          (let ((_%hd136774136806%_
                                                 (##car _%e136773136803%_))
                                                (_%tl136775136808%_
                                                 (##cdr _%e136773136803%_)))
                                            (let ((_%expr136811%_
                                                   _%hd136774136806%_))
                                              (if (gx#stx-null?
                                                   _%tl136775136808%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd136801%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd136801%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd136801%_)
                             (cons (gx#core-expand-expression _%expr136811%_)
                                   '())))
                 (gx#stx-source _%stx136763%_)))
              (_%E136766136781%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136766136781%_)))))
                                        (_%E136766136781%_)))))
                              (_%E136766136781%_))))
                      (_%E136766136781%_)))))
          (_%E136765136813%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx136707%_)
        (let* ((_%e136708136721%_ _%stx136707%_)
               (_%E136710136725%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136708136721%_)))
               (_%E136709136759%_
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
                                  (let ((_%id136745%_ _%hd136715136740%_))
                                    (if (gx#stx-pair? _%tl136716136742%_)
                                        (let ((_%e136717136747%_
                                               (gx#syntax-e
                                                _%tl136716136742%_)))
                                          (let ((_%hd136718136750%_
                                                 (##car _%e136717136747%_))
                                                (_%tl136719136752%_
                                                 (##cdr _%e136717136747%_)))
                                            (let ((_%binding-id136755%_
                                                   _%hd136718136750%_))
                                              (if (gx#stx-null?
                                                   _%tl136719136752%_)
                                                  (if (and (gx#identifier?
                                                            _%id136745%_)
                                                           (gx#identifier?
                                                            _%binding-id136755%_))
                                                      (let ((_%eid136757%_
                                                             (gx#stx-e
                                                              _%binding-id136755%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id136745%_
                                                         _%eid136757%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id136745%_)
                             (cons _%eid136757%_ '())))))
              (_%E136710136725%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136710136725%_)))))
                                        (_%E136710136725%_)))))
                              (_%E136710136725%_))))
                      (_%E136710136725%_)))))
          (_%E136709136759%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx136650%_)
        (let* ((_%e136651136664%_ _%stx136650%_)
               (_%E136653136668%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136651136664%_)))
               (_%E136652136703%_
                (lambda ()
                  (if (gx#stx-pair? _%e136651136664%_)
                      (let ((_%e136654136672%_
                             (gx#syntax-e _%e136651136664%_)))
                        (let ((_%hd136655136675%_ (##car _%e136654136672%_))
                              (_%tl136656136677%_ (##cdr _%e136654136672%_)))
                          (if (gx#stx-pair? _%tl136656136677%_)
                              (let ((_%e136657136680%_
                                     (gx#syntax-e _%tl136656136677%_)))
                                (let ((_%hd136658136683%_
                                       (##car _%e136657136680%_))
                                      (_%tl136659136685%_
                                       (##cdr _%e136657136680%_)))
                                  (let ((_%id136688%_ _%hd136658136683%_))
                                    (if (gx#stx-pair? _%tl136659136685%_)
                                        (let ((_%e136660136690%_
                                               (gx#syntax-e
                                                _%tl136659136685%_)))
                                          (let ((_%hd136661136693%_
                                                 (##car _%e136660136690%_))
                                                (_%tl136662136695%_
                                                 (##cdr _%e136660136690%_)))
                                            (let ((_%expr136698%_
                                                   _%hd136661136693%_))
                                              (if (gx#stx-null?
                                                   _%tl136662136695%_)
                                                  (if (gx#identifier?
                                                       _%id136688%_)
                                                      (let ((_g137609_
                                                             (gx#core-expand-expression+1
                                                              _%expr136698%_)))
                                                        (begin
                                                          (let ((_g137610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g137609_)
                             (##values-length _g137609_)
                             1)))
                    (if (not (##fx= _g137610_ 2))
                        (error "Context expects 2 values" _g137610_)))
                  (let ((_%e-stx136700%_ (##values-ref _g137609_ 0))
                        (_%e136701%_ (##values-ref _g137609_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id136688%_ _%e136701%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id136688%_)
                                   (cons _%e-stx136700%_ '())))
                       (gx#stx-source _%stx136650%_))))))
              (_%E136653136668%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136653136668%_)))))
                                        (_%E136653136668%_)))))
                              (_%E136653136668%_))))
                      (_%E136653136668%_)))))
          (_%E136652136703%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx136594%_)
        (let* ((_%e136595136608%_ _%stx136594%_)
               (_%E136597136612%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136595136608%_)))
               (_%E136596136646%_
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
                                            (let ((_%alias-id136642%_
                                                   _%hd136605136637%_))
                                              (if (gx#stx-null?
                                                   _%tl136606136639%_)
                                                  (if (and (gx#identifier?
                                                            _%id136632%_)
                                                           (gx#identifier?
                                                            _%alias-id136642%_))
                                                      (let ((_%alias-id136644%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id136642%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id136632%_
                                                         _%alias-id136644%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id136632%_)
                             (cons _%alias-id136644%_ '())))))
              (_%E136597136612%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E136597136612%_)))))
                                        (_%E136597136612%_)))))
                              (_%E136597136612%_))))
                      (_%E136597136612%_)))))
          (_%E136596136646%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx136537%_ _%wrap?136538%_)
        (let* ((_%e136539136549%_ _%stx136537%_)
               (_%E136541136553%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136539136549%_)))
               (_%E136540136580%_
                (lambda ()
                  (if (gx#stx-pair? _%e136539136549%_)
                      (let ((_%e136542136557%_
                             (gx#syntax-e _%e136539136549%_)))
                        (let ((_%hd136543136560%_ (##car _%e136542136557%_))
                              (_%tl136544136562%_ (##cdr _%e136542136557%_)))
                          (if (gx#stx-pair? _%tl136544136562%_)
                              (let ((_%e136545136565%_
                                     (gx#syntax-e _%tl136544136562%_)))
                                (let ((_%hd136546136568%_
                                       (##car _%e136545136565%_))
                                      (_%tl136547136570%_
                                       (##cdr _%e136545136565%_)))
                                  (let* ((_%hd136573%_ _%hd136546136568%_)
                                         (_%body136575%_ _%tl136547136570%_))
                                    (if (gx#core-bind-values? _%hd136573%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd136573%_)
                                           (let ((_%body136578%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd136573%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx136537%_
                                                               _%body136575%_)
                                                              '()))))
                                             (if _%wrap?136538%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body136578%_)
                                                  (gx#stx-source
                                                   _%stx136537%_))
                                                 _%body136578%_)))
                                         gx#current-expander-context
                                         (let ((__obj137602
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj137602)
                                           __obj137602))
                                        (_%E136541136553%_)))))
                              (_%E136541136553%_))))
                      (_%E136541136553%_)))))
          (_%E136540136580%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx136587%_)
        (let ((_%wrap?136589%_ '#t))
          (gx#core-expand-lambda%__% _%stx136587%_ _%wrap?136589%_))))
    (define gx#core-expand-lambda%
      (lambda _g137611_
        (let ((_g137612_ (##length _g137611_)))
          (cond ((##fx= _g137612_ 1)
                 (apply gx#core-expand-lambda%__0 _g137611_))
                ((##fx= _g137612_ 2)
                 (apply gx#core-expand-lambda%__% _g137611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g137611_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx136501%_)
        (let* ((_%e136502136509%_ _%stx136501%_)
               (_%E136504136513%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136502136509%_)))
               (_%E136503136532%_
                (lambda ()
                  (if (gx#stx-pair? _%e136502136509%_)
                      (let ((_%e136505136517%_
                             (gx#syntax-e _%e136502136509%_)))
                        (let ((_%hd136506136520%_ (##car _%e136505136517%_))
                              (_%tl136507136522%_ (##cdr _%e136505136517%_)))
                          (let ((_%clauses136525%_ _%tl136507136522%_))
                            (if (gx#stx-list? _%clauses136525%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause136527%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause136527%_)
                                       (let ((_%$e136529%_
                                              (gx#stx-source
                                               _%clause136527%_)))
                                         (if _%$e136529%_
                                             _%$e136529%_
                                             (gx#stx-source _%stx136501%_))))
                                      '#f))
                                   _%clauses136525%_))
                                 (gx#stx-source _%stx136501%_))
                                (_%E136504136513%_)))))
                      (_%E136504136513%_)))))
          (_%E136503136532%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx136455%_)
        (let* ((_%e136456136466%_ _%stx136455%_)
               (_%E136458136470%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136456136466%_)))
               (_%E136457136497%_
                (lambda ()
                  (if (gx#stx-pair? _%e136456136466%_)
                      (let ((_%e136459136474%_
                             (gx#syntax-e _%e136456136466%_)))
                        (let ((_%hd136460136477%_ (##car _%e136459136474%_))
                              (_%tl136461136479%_ (##cdr _%e136459136474%_)))
                          (if (gx#stx-pair? _%tl136461136479%_)
                              (let ((_%e136462136482%_
                                     (gx#syntax-e _%tl136461136479%_)))
                                (let ((_%hd136463136485%_
                                       (##car _%e136462136482%_))
                                      (_%tl136464136487%_
                                       (##cdr _%e136462136482%_)))
                                  (let* ((_%hd136490%_ _%hd136463136485%_)
                                         (_%body136492%_ _%tl136464136487%_))
                                    (if (gx#core-expand-let-bind? _%hd136490%_)
                                        (let ((_%expressions136494%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd136490%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd136490%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd136490%_
                                                           _%expressions136494%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx136455%_
                         _%body136492%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx136455%_)))
                                           gx#current-expander-context
                                           (let ((__obj137603
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj137603)
                                             __obj137603)))
                                        (_%E136458136470%_)))))
                              (_%E136458136470%_))))
                      (_%E136458136470%_)))))
          (_%E136457136497%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx136400%_ _%form136401%_)
        (let* ((_%e136402136412%_ _%stx136400%_)
               (_%E136404136416%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136402136412%_)))
               (_%E136403136441%_
                (lambda ()
                  (if (gx#stx-pair? _%e136402136412%_)
                      (let ((_%e136405136420%_
                             (gx#syntax-e _%e136402136412%_)))
                        (let ((_%hd136406136423%_ (##car _%e136405136420%_))
                              (_%tl136407136425%_ (##cdr _%e136405136420%_)))
                          (if (gx#stx-pair? _%tl136407136425%_)
                              (let ((_%e136408136428%_
                                     (gx#syntax-e _%tl136407136425%_)))
                                (let ((_%hd136409136431%_
                                       (##car _%e136408136428%_))
                                      (_%tl136410136433%_
                                       (##cdr _%e136408136428%_)))
                                  (let* ((_%hd136436%_ _%hd136409136431%_)
                                         (_%body136438%_ _%tl136410136433%_))
                                    (if (gx#core-expand-let-bind? _%hd136436%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd136436%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form136401%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd136436%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd136436%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx136400%_
                                                               _%body136438%_)
                                                              '())))
                                            (gx#stx-source _%stx136400%_)))
                                         gx#current-expander-context
                                         (let ((__obj137604
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj137604)
                                           __obj137604))
                                        (_%E136404136416%_)))))
                              (_%E136404136416%_))))
                      (_%E136404136416%_)))))
          (_%E136403136441%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx136448%_)
        (let ((_%form136450%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx136448%_ _%form136450%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g137613_
        (let ((_g137614_ (##length _g137613_)))
          (cond ((##fx= _g137614_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g137613_))
                ((##fx= _g137614_ 2)
                 (apply gx#core-expand-letrec-values%__% _g137613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g137613_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx136397%_)
        (gx#core-expand-letrec-values%__% _%stx136397%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx136354%_)
        (if (gx#stx-list? _%stx136354%_)
            (gx#stx-andmap
             (lambda (_%bind136356%_)
               (let* ((_%e136357136367%_ _%bind136356%_)
                      (_%E136359136371%_ (lambda () '#f))
                      (_%E136358136393%_
                       (lambda ()
                         (if (gx#stx-pair? _%e136357136367%_)
                             (let ((_%e136360136375%_
                                    (gx#syntax-e _%e136357136367%_)))
                               (let ((_%hd136361136378%_
                                      (##car _%e136360136375%_))
                                     (_%tl136362136380%_
                                      (##cdr _%e136360136375%_)))
                                 (let ((_%hd136383%_ _%hd136361136378%_))
                                   (if (gx#stx-pair? _%tl136362136380%_)
                                       (let ((_%e136363136385%_
                                              (gx#syntax-e
                                               _%tl136362136380%_)))
                                         (let ((_%hd136364136388%_
                                                (##car _%e136363136385%_))
                                               (_%tl136365136390%_
                                                (##cdr _%e136363136385%_)))
                                           (if (gx#stx-null?
                                                _%tl136365136390%_)
                                               (gx#core-bind-values?
                                                _%hd136383%_)
                                               (_%E136359136371%_))))
                                       (_%E136359136371%_)))))
                             (_%E136359136371%_)))))
                 (_%E136358136393%_)))
             _%stx136354%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind136313%_)
        (let* ((_%e136314136324%_ _%bind136313%_)
               (_%E136316136328%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136314136324%_)))
               (_%E136315136350%_
                (lambda ()
                  (if (gx#stx-pair? _%e136314136324%_)
                      (let ((_%e136317136332%_
                             (gx#syntax-e _%e136314136324%_)))
                        (let ((_%hd136318136335%_ (##car _%e136317136332%_))
                              (_%tl136319136337%_ (##cdr _%e136317136332%_)))
                          (if (gx#stx-pair? _%tl136319136337%_)
                              (let ((_%e136320136340%_
                                     (gx#syntax-e _%tl136319136337%_)))
                                (let ((_%hd136321136343%_
                                       (##car _%e136320136340%_))
                                      (_%tl136322136345%_
                                       (##cdr _%e136320136340%_)))
                                  (let ((_%expr136348%_ _%hd136321136343%_))
                                    (if (gx#stx-null? _%tl136322136345%_)
                                        (gx#core-expand-expression
                                         _%expr136348%_)
                                        (_%E136316136328%_)))))
                              (_%E136316136328%_))))
                      (_%E136316136328%_)))))
          (_%E136315136350%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind136272%_)
        (let* ((_%e136273136283%_ _%bind136272%_)
               (_%E136275136287%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136273136283%_)))
               (_%E136274136309%_
                (lambda ()
                  (if (gx#stx-pair? _%e136273136283%_)
                      (let ((_%e136276136291%_
                             (gx#syntax-e _%e136273136283%_)))
                        (let ((_%hd136277136294%_ (##car _%e136276136291%_))
                              (_%tl136278136296%_ (##cdr _%e136276136291%_)))
                          (let ((_%hd136299%_ _%hd136277136294%_))
                            (if (gx#stx-pair? _%tl136278136296%_)
                                (let ((_%e136279136301%_
                                       (gx#syntax-e _%tl136278136296%_)))
                                  (let ((_%hd136280136304%_
                                         (##car _%e136279136301%_))
                                        (_%tl136281136306%_
                                         (##cdr _%e136279136301%_)))
                                    (if (gx#stx-null? _%tl136281136306%_)
                                        (gx#core-bind-values!__0 _%hd136299%_)
                                        (_%E136275136287%_))))
                                (_%E136275136287%_)))))
                      (_%E136275136287%_)))))
          (_%E136274136309%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind136230%_ _%expr136231%_)
        (let* ((_%e136232136242%_ _%bind136230%_)
               (_%E136234136246%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136232136242%_)))
               (_%E136233136268%_
                (lambda ()
                  (if (gx#stx-pair? _%e136232136242%_)
                      (let ((_%e136235136250%_
                             (gx#syntax-e _%e136232136242%_)))
                        (let ((_%hd136236136253%_ (##car _%e136235136250%_))
                              (_%tl136237136255%_ (##cdr _%e136235136250%_)))
                          (let ((_%hd136258%_ _%hd136236136253%_))
                            (if (gx#stx-pair? _%tl136237136255%_)
                                (let ((_%e136238136260%_
                                       (gx#syntax-e _%tl136237136255%_)))
                                  (let ((_%hd136239136263%_
                                         (##car _%e136238136260%_))
                                        (_%tl136240136265%_
                                         (##cdr _%e136238136260%_)))
                                    (if (gx#stx-null? _%tl136240136265%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd136258%_)
                                              (cons _%expr136231%_ '()))
                                        (_%E136234136246%_))))
                                (_%E136234136246%_)))))
                      (_%E136234136246%_)))))
          (_%E136233136268%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx136184%_)
        (let* ((_%e136185136195%_ _%stx136184%_)
               (_%E136187136199%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136185136195%_)))
               (_%E136186136226%_
                (lambda ()
                  (if (gx#stx-pair? _%e136185136195%_)
                      (let ((_%e136188136203%_
                             (gx#syntax-e _%e136185136195%_)))
                        (let ((_%hd136189136206%_ (##car _%e136188136203%_))
                              (_%tl136190136208%_ (##cdr _%e136188136203%_)))
                          (if (gx#stx-pair? _%tl136190136208%_)
                              (let ((_%e136191136211%_
                                     (gx#syntax-e _%tl136190136208%_)))
                                (let ((_%hd136192136214%_
                                       (##car _%e136191136211%_))
                                      (_%tl136193136216%_
                                       (##cdr _%e136191136211%_)))
                                  (let* ((_%hd136219%_ _%hd136192136214%_)
                                         (_%body136221%_ _%tl136193136216%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd136219%_)
                                        (let ((_%expanders136223%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd136219%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd136219%_
                                              _%expanders136223%_)
                                             (gx#core-expand-local-block
                                              _%stx136184%_
                                              _%body136221%_))
                                           gx#current-expander-context
                                           (let ((__obj137605
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj137605)
                                             __obj137605)))
                                        (_%E136187136199%_)))))
                              (_%E136187136199%_))))
                      (_%E136187136199%_)))))
          (_%E136186136226%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx136133%_)
        (let* ((_%e136134136144%_ _%stx136133%_)
               (_%E136136136148%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136134136144%_)))
               (_%E136135136180%_
                (lambda ()
                  (if (gx#stx-pair? _%e136134136144%_)
                      (let ((_%e136137136152%_
                             (gx#syntax-e _%e136134136144%_)))
                        (let ((_%hd136138136155%_ (##car _%e136137136152%_))
                              (_%tl136139136157%_ (##cdr _%e136137136152%_)))
                          (if (gx#stx-pair? _%tl136139136157%_)
                              (let ((_%e136140136160%_
                                     (gx#syntax-e _%tl136139136157%_)))
                                (let ((_%hd136141136163%_
                                       (##car _%e136140136160%_))
                                      (_%tl136142136165%_
                                       (##cdr _%e136140136160%_)))
                                  (let* ((_%hd136168%_ _%hd136141136163%_)
                                         (_%body136170%_ _%tl136142136165%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd136168%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd136168%_
                                            (make-list
                                             (gx#stx-length _%hd136168%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g136172136175%_
                                                     _%g136173136177%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g136172136175%_
                                               _%g136173136177%_
                                               '#t))
                                            _%hd136168%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd136168%_))
                                           (gx#core-expand-local-block
                                            _%stx136133%_
                                            _%body136170%_))
                                         gx#current-expander-context
                                         (let ((__obj137606
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj137606)
                                           __obj137606))
                                        (_%E136136136148%_)))))
                              (_%E136136136148%_))))
                      (_%E136136136148%_)))))
          (_%E136135136180%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx136090%_)
        (if (gx#stx-list? _%stx136090%_)
            (gx#stx-andmap
             (lambda (_%bind136092%_)
               (let* ((_%e136093136103%_ _%bind136092%_)
                      (_%E136095136107%_ (lambda () '#f))
                      (_%E136094136129%_
                       (lambda ()
                         (if (gx#stx-pair? _%e136093136103%_)
                             (let ((_%e136096136111%_
                                    (gx#syntax-e _%e136093136103%_)))
                               (let ((_%hd136097136114%_
                                      (##car _%e136096136111%_))
                                     (_%tl136098136116%_
                                      (##cdr _%e136096136111%_)))
                                 (let ((_%hd136119%_ _%hd136097136114%_))
                                   (if (gx#stx-pair? _%tl136098136116%_)
                                       (let ((_%e136099136121%_
                                              (gx#syntax-e
                                               _%tl136098136116%_)))
                                         (let ((_%hd136100136124%_
                                                (##car _%e136099136121%_))
                                               (_%tl136101136126%_
                                                (##cdr _%e136099136121%_)))
                                           (if (gx#stx-null?
                                                _%tl136101136126%_)
                                               (gx#identifier? _%hd136119%_)
                                               (_%E136095136107%_))))
                                       (_%E136095136107%_)))))
                             (_%E136095136107%_)))))
                 (_%E136094136129%_)))
             _%stx136090%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind136046%_)
        (let* ((_%e136047136057%_ _%bind136046%_)
               (_%E136049136061%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e136047136057%_)))
               (_%E136048136086%_
                (lambda ()
                  (if (gx#stx-pair? _%e136047136057%_)
                      (let ((_%e136050136065%_
                             (gx#syntax-e _%e136047136057%_)))
                        (let ((_%hd136051136068%_ (##car _%e136050136065%_))
                              (_%tl136052136070%_ (##cdr _%e136050136065%_)))
                          (if (gx#stx-pair? _%tl136052136070%_)
                              (let ((_%e136053136073%_
                                     (gx#syntax-e _%tl136052136070%_)))
                                (let ((_%hd136054136076%_
                                       (##car _%e136053136073%_))
                                      (_%tl136055136078%_
                                       (##cdr _%e136053136073%_)))
                                  (let ((_%expr136081%_ _%hd136054136076%_))
                                    (if (gx#stx-null? _%tl136055136078%_)
                                        (let ((_g137615_
                                               (gx#core-expand-expression+1
                                                _%expr136081%_)))
                                          (begin
                                            (let ((_g137616_
                                                   (if (##values? _g137615_)
                                                       (##values-length
                                                        _g137615_)
                                                       1)))
                                              (if (not (##fx= _g137616_ 2))
                                                  (error "Context expects 2 values"
                                                         _g137616_)))
                                            (let ((_%_136083%_
                                                   (##values-ref _g137615_ 0))
                                                  (_%e136084%_
                                                   (##values-ref _g137615_ 1)))
                                              _%e136084%_)))
                                        (_%E136049136061%_)))))
                              (_%E136049136061%_))))
                      (_%E136049136061%_)))))
          (_%E136048136086%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind135991%_ _%e135992%_ _%rebind?135993%_)
        (let* ((_%e135994136004%_ _%bind135991%_)
               (_%E135996136008%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135994136004%_)))
               (_%E135995136030%_
                (lambda ()
                  (if (gx#stx-pair? _%e135994136004%_)
                      (let ((_%e135997136012%_
                             (gx#syntax-e _%e135994136004%_)))
                        (let ((_%hd135998136015%_ (##car _%e135997136012%_))
                              (_%tl135999136017%_ (##cdr _%e135997136012%_)))
                          (let ((_%id136020%_ _%hd135998136015%_))
                            (if (gx#stx-pair? _%tl135999136017%_)
                                (let ((_%e136000136022%_
                                       (gx#syntax-e _%tl135999136017%_)))
                                  (let ((_%hd136001136025%_
                                         (##car _%e136000136022%_))
                                        (_%tl136002136027%_
                                         (##cdr _%e136000136022%_)))
                                    (if (gx#stx-null? _%tl136002136027%_)
                                        (gx#core-bind-syntax!__1
                                         _%id136020%_
                                         _%e135992%_
                                         _%rebind?135993%_)
                                        (_%E135996136008%_))))
                                (_%E135996136008%_)))))
                      (_%E135996136008%_)))))
          (_%E135995136030%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind136037%_ _%e136038%_)
        (let ((_%rebind?136040%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind136037%_
           _%e136038%_
           _%rebind?136040%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g137617_
        (let ((_g137618_ (##length _g137617_)))
          (cond ((##fx= _g137618_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g137617_))
                ((##fx= _g137618_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g137617_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g137617_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx135949%_)
        (let* ((_%e135950135960%_ _%stx135949%_)
               (_%E135952135964%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135950135960%_)))
               (_%E135951135986%_
                (lambda ()
                  (if (gx#stx-pair? _%e135950135960%_)
                      (let ((_%e135953135968%_
                             (gx#syntax-e _%e135950135960%_)))
                        (let ((_%hd135954135971%_ (##car _%e135953135968%_))
                              (_%tl135955135973%_ (##cdr _%e135953135968%_)))
                          (if (gx#stx-pair? _%tl135955135973%_)
                              (let ((_%e135956135976%_
                                     (gx#syntax-e _%tl135955135973%_)))
                                (let ((_%hd135957135979%_
                                       (##car _%e135956135976%_))
                                      (_%tl135958135981%_
                                       (##cdr _%e135956135976%_)))
                                  (let ((_%expr135984%_ _%hd135957135979%_))
                                    (if (gx#stx-null? _%tl135958135981%_)
                                        (gx#core-expand-expression
                                         _%expr135984%_)
                                        (_%E135952135964%_)))))
                              (_%E135952135964%_))))
                      (_%E135952135964%_)))))
          (_%E135951135986%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx135908%_)
        (let* ((_%e135909135919%_ _%stx135908%_)
               (_%E135911135923%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135909135919%_)))
               (_%E135910135945%_
                (lambda ()
                  (if (gx#stx-pair? _%e135909135919%_)
                      (let ((_%e135912135927%_
                             (gx#syntax-e _%e135909135919%_)))
                        (let ((_%hd135913135930%_ (##car _%e135912135927%_))
                              (_%tl135914135932%_ (##cdr _%e135912135927%_)))
                          (if (gx#stx-pair? _%tl135914135932%_)
                              (let ((_%e135915135935%_
                                     (gx#syntax-e _%tl135914135932%_)))
                                (let ((_%hd135916135938%_
                                       (##car _%e135915135935%_))
                                      (_%tl135917135940%_
                                       (##cdr _%e135915135935%_)))
                                  (let ((_%e135943%_ _%hd135916135938%_))
                                    (if (gx#stx-null? _%tl135917135940%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e135943%_)
                                                     '()))
                                         (gx#stx-source _%stx135908%_))
                                        (_%E135911135923%_)))))
                              (_%E135911135923%_))))
                      (_%E135911135923%_)))))
          (_%E135910135945%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx135867%_)
        (let* ((_%e135868135878%_ _%stx135867%_)
               (_%E135870135882%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135868135878%_)))
               (_%E135869135904%_
                (lambda ()
                  (if (gx#stx-pair? _%e135868135878%_)
                      (let ((_%e135871135886%_
                             (gx#syntax-e _%e135868135878%_)))
                        (let ((_%hd135872135889%_ (##car _%e135871135886%_))
                              (_%tl135873135891%_ (##cdr _%e135871135886%_)))
                          (if (gx#stx-pair? _%tl135873135891%_)
                              (let ((_%e135874135894%_
                                     (gx#syntax-e _%tl135873135891%_)))
                                (let ((_%hd135875135897%_
                                       (##car _%e135874135894%_))
                                      (_%tl135876135899%_
                                       (##cdr _%e135874135894%_)))
                                  (let ((_%e135902%_ _%hd135875135897%_))
                                    (if (gx#stx-null? _%tl135876135899%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e135902%_)
                                                     '()))
                                         (gx#stx-source _%stx135867%_))
                                        (_%E135870135882%_)))))
                              (_%E135870135882%_))))
                      (_%E135870135882%_)))))
          (_%E135869135904%_))))
    (define gx#core-expand-call%
      (lambda (_%stx135824%_)
        (let* ((_%e135825135835%_ _%stx135824%_)
               (_%E135827135839%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135825135835%_)))
               (_%E135826135863%_
                (lambda ()
                  (if (gx#stx-pair? _%e135825135835%_)
                      (let ((_%e135828135843%_
                             (gx#syntax-e _%e135825135835%_)))
                        (let ((_%hd135829135846%_ (##car _%e135828135843%_))
                              (_%tl135830135848%_ (##cdr _%e135828135843%_)))
                          (if (gx#stx-pair? _%tl135830135848%_)
                              (let ((_%e135831135851%_
                                     (gx#syntax-e _%tl135830135848%_)))
                                (let ((_%hd135832135854%_
                                       (##car _%e135831135851%_))
                                      (_%tl135833135856%_
                                       (##cdr _%e135831135851%_)))
                                  (let* ((_%rator135859%_ _%hd135832135854%_)
                                         (_%args135861%_ _%tl135833135856%_))
                                    (if (gx#stx-list? _%args135861%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator135859%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args135861%_))
                                         (gx#stx-source _%stx135824%_))
                                        (_%E135827135839%_)))))
                              (_%E135827135839%_))))
                      (_%E135827135839%_)))))
          (_%E135826135863%_))))
    (define gx#core-expand-if%
      (lambda (_%stx135757%_)
        (let* ((_%e135758135774%_ _%stx135757%_)
               (_%E135760135778%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135758135774%_)))
               (_%E135759135820%_
                (lambda ()
                  (if (gx#stx-pair? _%e135758135774%_)
                      (let ((_%e135761135782%_
                             (gx#syntax-e _%e135758135774%_)))
                        (let ((_%hd135762135785%_ (##car _%e135761135782%_))
                              (_%tl135763135787%_ (##cdr _%e135761135782%_)))
                          (if (gx#stx-pair? _%tl135763135787%_)
                              (let ((_%e135764135790%_
                                     (gx#syntax-e _%tl135763135787%_)))
                                (let ((_%hd135765135793%_
                                       (##car _%e135764135790%_))
                                      (_%tl135766135795%_
                                       (##cdr _%e135764135790%_)))
                                  (let ((_%test135798%_ _%hd135765135793%_))
                                    (if (gx#stx-pair? _%tl135766135795%_)
                                        (let ((_%e135767135800%_
                                               (gx#syntax-e
                                                _%tl135766135795%_)))
                                          (let ((_%hd135768135803%_
                                                 (##car _%e135767135800%_))
                                                (_%tl135769135805%_
                                                 (##cdr _%e135767135800%_)))
                                            (let ((_%K135808%_
                                                   _%hd135768135803%_))
                                              (if (gx#stx-pair?
                                                   _%tl135769135805%_)
                                                  (let ((_%e135770135810%_
                                                         (gx#syntax-e
                                                          _%tl135769135805%_)))
                                                    (let ((_%hd135771135813%_
                                                           (##car _%e135770135810%_))
                                                          (_%tl135772135815%_
                                                           (##cdr _%e135770135810%_)))
                                                      (let ((_%E135818%_
                                                             _%hd135771135813%_))
                                                        (if (gx#stx-null?
                                                             _%tl135772135815%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test135798%_)
                                 (cons (gx#core-expand-expression _%K135808%_)
                                       (cons (gx#core-expand-expression
                                              _%E135818%_)
                                             '()))))
                     (gx#stx-source _%stx135757%_))
                    (_%E135760135778%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E135760135778%_)))))
                                        (_%E135760135778%_)))))
                              (_%E135760135778%_))))
                      (_%E135760135778%_)))))
          (_%E135759135820%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx135716%_)
        (let* ((_%e135717135727%_ _%stx135716%_)
               (_%E135719135731%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135717135727%_)))
               (_%E135718135753%_
                (lambda ()
                  (if (gx#stx-pair? _%e135717135727%_)
                      (let ((_%e135720135735%_
                             (gx#syntax-e _%e135717135727%_)))
                        (let ((_%hd135721135738%_ (##car _%e135720135735%_))
                              (_%tl135722135740%_ (##cdr _%e135720135735%_)))
                          (if (gx#stx-pair? _%tl135722135740%_)
                              (let ((_%e135723135743%_
                                     (gx#syntax-e _%tl135722135740%_)))
                                (let ((_%hd135724135746%_
                                       (##car _%e135723135743%_))
                                      (_%tl135725135748%_
                                       (##cdr _%e135723135743%_)))
                                  (let ((_%id135751%_ _%hd135724135746%_))
                                    (if (gx#stx-null? _%tl135725135748%_)
                                        (if (gx#identifier? _%id135751%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id135751%_
                                                          _%stx135716%_)
                                                         '()))
                                             (gx#stx-source _%stx135716%_))
                                            (_%E135719135731%_))
                                        (_%E135719135731%_)))))
                              (_%E135719135731%_))))
                      (_%E135719135731%_)))))
          (_%E135718135753%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx135662%_)
        (let* ((_%e135663135676%_ _%stx135662%_)
               (_%E135665135680%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135663135676%_)))
               (_%E135664135712%_
                (lambda ()
                  (if (gx#stx-pair? _%e135663135676%_)
                      (let ((_%e135666135684%_
                             (gx#syntax-e _%e135663135676%_)))
                        (let ((_%hd135667135687%_ (##car _%e135666135684%_))
                              (_%tl135668135689%_ (##cdr _%e135666135684%_)))
                          (if (gx#stx-pair? _%tl135668135689%_)
                              (let ((_%e135669135692%_
                                     (gx#syntax-e _%tl135668135689%_)))
                                (let ((_%hd135670135695%_
                                       (##car _%e135669135692%_))
                                      (_%tl135671135697%_
                                       (##cdr _%e135669135692%_)))
                                  (let ((_%id135700%_ _%hd135670135695%_))
                                    (if (gx#stx-pair? _%tl135671135697%_)
                                        (let ((_%e135672135702%_
                                               (gx#syntax-e
                                                _%tl135671135697%_)))
                                          (let ((_%hd135673135705%_
                                                 (##car _%e135672135702%_))
                                                (_%tl135674135707%_
                                                 (##cdr _%e135672135702%_)))
                                            (let ((_%expr135710%_
                                                   _%hd135673135705%_))
                                              (if (gx#stx-null?
                                                   _%tl135674135707%_)
                                                  (if (gx#identifier?
                                                       _%id135700%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id135700%_
                            _%stx135662%_)
                           (cons (gx#core-expand-expression _%expr135710%_)
                                 '())))
               (gx#stx-source _%stx135662%_))
              (_%E135665135680%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E135665135680%_)))))
                                        (_%E135665135680%_)))))
                              (_%E135665135680%_))))
                      (_%E135665135680%_)))))
          (_%E135664135712%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx135507%_)
        (letrec ((_%generate135509%_
                  (lambda (_%body135539%_)
                    (let _%lp135541%_ ((_%rest135543%_ _%body135539%_)
                                       (_%ns135544%_
                                        (gx#core-context-namespace__0))
                                       (_%r135545%_ '()))
                      (let* ((_%e135546135561%_ _%rest135543%_)
                             (_%E135559135565%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e135546135561%_)))
                             (_%E135555135569%_
                              (lambda ()
                                (if (gx#stx-null? _%e135546135561%_)
                                    (reverse _%r135545%_)
                                    (_%E135559135565%_))))
                             (_%E135548135626%_
                              (lambda ()
                                (if (gx#stx-pair? _%e135546135561%_)
                                    (let ((_%e135556135573%_
                                           (gx#syntax-e _%e135546135561%_)))
                                      (let ((_%hd135557135576%_
                                             (##car _%e135556135573%_))
                                            (_%tl135558135578%_
                                             (##cdr _%e135556135573%_)))
                                        (let* ((_%hd135581%_
                                                _%hd135557135576%_)
                                               (_%rest135583%_
                                                _%tl135558135578%_))
                                          (if (gx#identifier? _%hd135581%_)
                                              (_%lp135541%_
                                               _%rest135583%_
                                               _%ns135544%_
                                               (cons (cons _%hd135581%_
                                                           (cons (if _%ns135544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd135581%_
                              _%ns135544%_
                              '"#"
                              _%hd135581%_)
                             _%hd135581%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r135545%_))
                                              (let* ((_%e135584135594%_
                                                      _%hd135581%_)
                                                     (_%E135586135598%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e135584135594%_)))
                                                     (_%E135585135622%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e135584135594%_)
                                                            (let ((_%e135587135602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e135584135594%_)))
                      (let ((_%hd135588135605%_ (##car _%e135587135602%_))
                            (_%tl135589135607%_ (##cdr _%e135587135602%_)))
                        (let ((_%id135610%_ _%hd135588135605%_))
                          (if (gx#stx-pair? _%tl135589135607%_)
                              (let ((_%e135590135612%_
                                     (gx#syntax-e _%tl135589135607%_)))
                                (let ((_%hd135591135615%_
                                       (##car _%e135590135612%_))
                                      (_%tl135592135617%_
                                       (##cdr _%e135590135612%_)))
                                  (let ((_%eid135620%_ _%hd135591135615%_))
                                    (if (gx#stx-null? _%tl135592135617%_)
                                        (if (and (gx#identifier? _%id135610%_)
                                                 (gx#identifier?
                                                  _%eid135620%_))
                                            (_%lp135541%_
                                             _%rest135583%_
                                             _%ns135544%_
                                             (cons (cons _%id135610%_
                                                         (cons _%eid135620%_
                                                               '()))
                                                   _%r135545%_))
                                            (_%E135586135598%_))
                                        (_%E135586135598%_)))))
                              (_%E135586135598%_)))))
                    (_%E135586135598%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E135585135622%_))))))
                                    (_%E135555135569%_))))
                             (_%E135547135658%_
                              (lambda ()
                                (if (gx#stx-pair? _%e135546135561%_)
                                    (let ((_%e135549135630%_
                                           (gx#syntax-e _%e135546135561%_)))
                                      (let ((_%hd135550135633%_
                                             (##car _%e135549135630%_))
                                            (_%tl135551135635%_
                                             (##cdr _%e135549135630%_)))
                                        (if (eq? (gx#stx-e _%hd135550135633%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl135551135635%_)
                                                (let ((_%e135552135638%_
                                                       (gx#syntax-e
                                                        _%tl135551135635%_)))
                                                  (let ((_%hd135553135641%_
                                                         (##car _%e135552135638%_))
                                                        (_%tl135554135643%_
                                                         (##cdr _%e135552135638%_)))
                                                    (let* ((_%ns135646%_
                                                            _%hd135553135641%_)
                                                           (_%rest135648%_
                                                            _%tl135554135643%_)
                                                           (_%ns135656%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns135646%_)
                        (symbol->string (gx#stx-e _%ns135646%_))
                        (if (or (gx#stx-string? _%ns135646%_)
                                (gx#stx-false? _%ns135646%_))
                            (gx#stx-e _%ns135646%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx135507%_
                             _%ns135646%_)))))
              (_%lp135541%_ _%rest135648%_ _%ns135656%_ _%r135545%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E135548135626%_))
                                            (_%E135548135626%_))))
                                    (_%E135548135626%_)))))
                        (_%E135547135658%_))))))
          (let* ((_%e135510135517%_ _%stx135507%_)
                 (_%E135512135521%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e135510135517%_)))
                 (_%E135511135535%_
                  (lambda ()
                    (if (gx#stx-pair? _%e135510135517%_)
                        (let ((_%e135513135525%_
                               (gx#syntax-e _%e135510135517%_)))
                          (let ((_%hd135514135528%_ (##car _%e135513135525%_))
                                (_%tl135515135530%_ (##cdr _%e135513135525%_)))
                            (let ((_%body135533%_ _%tl135515135530%_))
                              (if (gx#stx-list? _%body135533%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate135509%_ _%body135533%_))
                                  (_%E135512135521%_)))))
                        (_%E135512135521%_)))))
            (_%E135511135535%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx135453%_)
        (let* ((_%e135454135467%_ _%stx135453%_)
               (_%E135456135471%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135454135467%_)))
               (_%E135455135503%_
                (lambda ()
                  (if (gx#stx-pair? _%e135454135467%_)
                      (let ((_%e135457135475%_
                             (gx#syntax-e _%e135454135467%_)))
                        (let ((_%hd135458135478%_ (##car _%e135457135475%_))
                              (_%tl135459135480%_ (##cdr _%e135457135475%_)))
                          (if (gx#stx-pair? _%tl135459135480%_)
                              (let ((_%e135460135483%_
                                     (gx#syntax-e _%tl135459135480%_)))
                                (let ((_%hd135461135486%_
                                       (##car _%e135460135483%_))
                                      (_%tl135462135488%_
                                       (##cdr _%e135460135483%_)))
                                  (let ((_%hd135491%_ _%hd135461135486%_))
                                    (if (gx#stx-pair? _%tl135462135488%_)
                                        (let ((_%e135463135493%_
                                               (gx#syntax-e
                                                _%tl135462135488%_)))
                                          (let ((_%hd135464135496%_
                                                 (##car _%e135463135493%_))
                                                (_%tl135465135498%_
                                                 (##cdr _%e135463135493%_)))
                                            (let ((_%expr135501%_
                                                   _%hd135464135496%_))
                                              (if (gx#stx-null?
                                                   _%tl135465135498%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd135491%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd135491%_)
                          (cons _%expr135501%_ '())))
              (_%E135456135471%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E135456135471%_)))))
                                        (_%E135456135471%_)))))
                              (_%E135456135471%_))))
                      (_%E135456135471%_)))))
          (_%E135455135503%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx135399%_)
        (let* ((_%e135400135413%_ _%stx135399%_)
               (_%E135402135417%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135400135413%_)))
               (_%E135401135449%_
                (lambda ()
                  (if (gx#stx-pair? _%e135400135413%_)
                      (let ((_%e135403135421%_
                             (gx#syntax-e _%e135400135413%_)))
                        (let ((_%hd135404135424%_ (##car _%e135403135421%_))
                              (_%tl135405135426%_ (##cdr _%e135403135421%_)))
                          (if (gx#stx-pair? _%tl135405135426%_)
                              (let ((_%e135406135429%_
                                     (gx#syntax-e _%tl135405135426%_)))
                                (let ((_%hd135407135432%_
                                       (##car _%e135406135429%_))
                                      (_%tl135408135434%_
                                       (##cdr _%e135406135429%_)))
                                  (let ((_%hd135437%_ _%hd135407135432%_))
                                    (if (gx#stx-pair? _%tl135408135434%_)
                                        (let ((_%e135409135439%_
                                               (gx#syntax-e
                                                _%tl135408135434%_)))
                                          (let ((_%hd135410135442%_
                                                 (##car _%e135409135439%_))
                                                (_%tl135411135444%_
                                                 (##cdr _%e135409135439%_)))
                                            (let ((_%expr135447%_
                                                   _%hd135410135442%_))
                                              (if (gx#stx-null?
                                                   _%tl135411135444%_)
                                                  (if (gx#identifier?
                                                       _%hd135437%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd135437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr135447%_ '())))
              (_%E135402135417%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E135402135417%_)))))
                                        (_%E135402135417%_)))))
                              (_%E135402135417%_))))
                      (_%E135402135417%_)))))
          (_%E135401135449%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx135345%_)
        (let* ((_%e135346135359%_ _%stx135345%_)
               (_%E135348135363%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135346135359%_)))
               (_%E135347135395%_
                (lambda ()
                  (if (gx#stx-pair? _%e135346135359%_)
                      (let ((_%e135349135367%_
                             (gx#syntax-e _%e135346135359%_)))
                        (let ((_%hd135350135370%_ (##car _%e135349135367%_))
                              (_%tl135351135372%_ (##cdr _%e135349135367%_)))
                          (if (gx#stx-pair? _%tl135351135372%_)
                              (let ((_%e135352135375%_
                                     (gx#syntax-e _%tl135351135372%_)))
                                (let ((_%hd135353135378%_
                                       (##car _%e135352135375%_))
                                      (_%tl135354135380%_
                                       (##cdr _%e135352135375%_)))
                                  (let ((_%id135383%_ _%hd135353135378%_))
                                    (if (gx#stx-pair? _%tl135354135380%_)
                                        (let ((_%e135355135385%_
                                               (gx#syntax-e
                                                _%tl135354135380%_)))
                                          (let ((_%hd135356135388%_
                                                 (##car _%e135355135385%_))
                                                (_%tl135357135390%_
                                                 (##cdr _%e135355135385%_)))
                                            (let ((_%alias-id135393%_
                                                   _%hd135356135388%_))
                                              (if (gx#stx-null?
                                                   _%tl135357135390%_)
                                                  (if (and (gx#identifier?
                                                            _%id135383%_)
                                                           (gx#identifier?
                                                            _%alias-id135393%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id135383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id135393%_ '())))
              (_%E135348135363%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E135348135363%_)))))
                                        (_%E135348135363%_)))))
                              (_%E135348135363%_))))
                      (_%E135348135363%_)))))
          (_%E135347135395%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx135302%_)
        (let* ((_%e135303135313%_ _%stx135302%_)
               (_%E135305135317%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135303135313%_)))
               (_%E135304135341%_
                (lambda ()
                  (if (gx#stx-pair? _%e135303135313%_)
                      (let ((_%e135306135321%_
                             (gx#syntax-e _%e135303135313%_)))
                        (let ((_%hd135307135324%_ (##car _%e135306135321%_))
                              (_%tl135308135326%_ (##cdr _%e135306135321%_)))
                          (if (gx#stx-pair? _%tl135308135326%_)
                              (let ((_%e135309135329%_
                                     (gx#syntax-e _%tl135308135326%_)))
                                (let ((_%hd135310135332%_
                                       (##car _%e135309135329%_))
                                      (_%tl135311135334%_
                                       (##cdr _%e135309135329%_)))
                                  (let* ((_%hd135337%_ _%hd135310135332%_)
                                         (_%body135339%_ _%tl135311135334%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd135337%_)
                                             (gx#stx-list? _%body135339%_)
                                             (not (gx#stx-null?
                                                   _%body135339%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd135337%_)
                                         _%body135339%_)
                                        (_%E135305135317%_)))))
                              (_%E135305135317%_))))
                      (_%E135305135317%_)))))
          (_%E135304135341%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx135238%_)
        (letrec ((_%generate135240%_
                  (lambda (_%clause135270%_)
                    (let* ((_%e135271135278%_ _%clause135270%_)
                           (_%E135273135282%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx135238%_
                               _%clause135270%_)))
                           (_%E135272135298%_
                            (lambda ()
                              (if (gx#stx-pair? _%e135271135278%_)
                                  (let ((_%e135274135286%_
                                         (gx#syntax-e _%e135271135278%_)))
                                    (let ((_%hd135275135289%_
                                           (##car _%e135274135286%_))
                                          (_%tl135276135291%_
                                           (##cdr _%e135274135286%_)))
                                      (let* ((_%hd135294%_ _%hd135275135289%_)
                                             (_%body135296%_
                                              _%tl135276135291%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd135294%_)
                                                 (gx#stx-list? _%body135296%_)
                                                 (not (gx#stx-null?
                                                       _%body135296%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd135294%_)
                                                   _%body135296%_)
                                             (gx#stx-source _%clause135270%_))
                                            (_%E135273135282%_)))))
                                  (_%E135273135282%_)))))
                      (_%E135272135298%_)))))
          (let* ((_%e135241135248%_ _%stx135238%_)
                 (_%E135243135252%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e135241135248%_)))
                 (_%E135242135266%_
                  (lambda ()
                    (if (gx#stx-pair? _%e135241135248%_)
                        (let ((_%e135244135256%_
                               (gx#syntax-e _%e135241135248%_)))
                          (let ((_%hd135245135259%_ (##car _%e135244135256%_))
                                (_%tl135246135261%_ (##cdr _%e135244135256%_)))
                            (let ((_%clauses135264%_ _%tl135246135261%_))
                              (if (gx#stx-list? _%clauses135264%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate135240%_
                                    _%clauses135264%_))
                                  (_%E135243135252%_)))))
                        (_%E135243135252%_)))))
            (_%E135242135266%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx135139%_ _%form135140%_)
        (letrec ((_%generate135142%_
                  (lambda (_%bind135185%_)
                    (let* ((_%e135186135196%_ _%bind135185%_)
                           (_%E135188135200%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx135139%_
                               _%bind135185%_)))
                           (_%E135187135224%_
                            (lambda ()
                              (if (gx#stx-pair? _%e135186135196%_)
                                  (let ((_%e135189135204%_
                                         (gx#syntax-e _%e135186135196%_)))
                                    (let ((_%hd135190135207%_
                                           (##car _%e135189135204%_))
                                          (_%tl135191135209%_
                                           (##cdr _%e135189135204%_)))
                                      (let ((_%ids135212%_ _%hd135190135207%_))
                                        (if (gx#stx-pair? _%tl135191135209%_)
                                            (let ((_%e135192135214%_
                                                   (gx#syntax-e
                                                    _%tl135191135209%_)))
                                              (let ((_%hd135193135217%_
                                                     (##car _%e135192135214%_))
                                                    (_%tl135194135219%_
                                                     (##cdr _%e135192135214%_)))
                                                (let ((_%expr135222%_
                                                       _%hd135193135217%_))
                                                  (if (gx#stx-null?
                                                       _%tl135194135219%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids135212%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids135212%_)
                        (cons _%expr135222%_ '()))
                  (_%E135188135200%_))
              (_%E135188135200%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E135188135200%_)))))
                                  (_%E135188135200%_)))))
                      (_%E135187135224%_)))))
          (let* ((_%e135143135153%_ _%stx135139%_)
                 (_%E135145135157%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e135143135153%_)))
                 (_%E135144135181%_
                  (lambda ()
                    (if (gx#stx-pair? _%e135143135153%_)
                        (let ((_%e135146135161%_
                               (gx#syntax-e _%e135143135153%_)))
                          (let ((_%hd135147135164%_ (##car _%e135146135161%_))
                                (_%tl135148135166%_ (##cdr _%e135146135161%_)))
                            (if (gx#stx-pair? _%tl135148135166%_)
                                (let ((_%e135149135169%_
                                       (gx#syntax-e _%tl135148135166%_)))
                                  (let ((_%hd135150135172%_
                                         (##car _%e135149135169%_))
                                        (_%tl135151135174%_
                                         (##cdr _%e135149135169%_)))
                                    (let* ((_%hd135177%_ _%hd135150135172%_)
                                           (_%body135179%_ _%tl135151135174%_))
                                      (if (and (gx#stx-list? _%hd135177%_)
                                               (gx#stx-list? _%body135179%_)
                                               (not (gx#stx-null?
                                                     _%body135179%_)))
                                          (gx#core-cons*
                                           _%form135140%_
                                           (gx#stx-map1
                                            _%generate135142%_
                                            _%hd135177%_)
                                           _%body135179%_)
                                          (_%E135145135157%_)))))
                                (_%E135145135157%_))))
                        (_%E135145135157%_)))))
            (_%E135144135181%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx135231%_)
        (let ((_%form135233%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx135231%_ _%form135233%_))))
    (define gx#macro-expand-let-values
      (lambda _g137619_
        (let ((_g137620_ (##length _g137619_)))
          (cond ((##fx= _g137620_ 1)
                 (apply gx#macro-expand-let-values__0 _g137619_))
                ((##fx= _g137620_ 2)
                 (apply gx#macro-expand-let-values__% _g137619_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g137619_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx135136%_)
        (gx#macro-expand-let-values__% _%stx135136%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx135134%_)
        (gx#macro-expand-let-values__% _%stx135134%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx135025%_)
        (let* ((_%e135026135052%_ _%stx135025%_)
               (_%E135038135056%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e135026135052%_)))
               (_%E135028135098%_
                (lambda ()
                  (if (gx#stx-pair? _%e135026135052%_)
                      (let ((_%e135039135060%_
                             (gx#syntax-e _%e135026135052%_)))
                        (let ((_%hd135040135063%_ (##car _%e135039135060%_))
                              (_%tl135041135065%_ (##cdr _%e135039135060%_)))
                          (if (gx#stx-pair? _%tl135041135065%_)
                              (let ((_%e135042135068%_
                                     (gx#syntax-e _%tl135041135065%_)))
                                (let ((_%hd135043135071%_
                                       (##car _%e135042135068%_))
                                      (_%tl135044135073%_
                                       (##cdr _%e135042135068%_)))
                                  (let ((_%test135076%_ _%hd135043135071%_))
                                    (if (gx#stx-pair? _%tl135044135073%_)
                                        (let ((_%e135045135078%_
                                               (gx#syntax-e
                                                _%tl135044135073%_)))
                                          (let ((_%hd135046135081%_
                                                 (##car _%e135045135078%_))
                                                (_%tl135047135083%_
                                                 (##cdr _%e135045135078%_)))
                                            (let ((_%K135086%_
                                                   _%hd135046135081%_))
                                              (if (gx#stx-pair?
                                                   _%tl135047135083%_)
                                                  (let ((_%e135048135088%_
                                                         (gx#syntax-e
                                                          _%tl135047135083%_)))
                                                    (let ((_%hd135049135091%_
                                                           (##car _%e135048135088%_))
                                                          (_%tl135050135093%_
                                                           (##cdr _%e135048135088%_)))
                                                      (let ((_%E135096%_
                                                             _%hd135049135091%_))
                                                        (if (gx#stx-null?
                                                             _%tl135050135093%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test135076%_
                                                             _%K135086%_
                                                             _%E135096%_)
                                                            (_%E135038135056%_)))))
                                                  (_%E135038135056%_)))))
                                        (_%E135038135056%_)))))
                              (_%E135038135056%_))))
                      (_%E135038135056%_))))
               (_%E135027135130%_
                (lambda ()
                  (if (gx#stx-pair? _%e135026135052%_)
                      (let ((_%e135029135102%_
                             (gx#syntax-e _%e135026135052%_)))
                        (let ((_%hd135030135105%_ (##car _%e135029135102%_))
                              (_%tl135031135107%_ (##cdr _%e135029135102%_)))
                          (if (gx#stx-pair? _%tl135031135107%_)
                              (let ((_%e135032135110%_
                                     (gx#syntax-e _%tl135031135107%_)))
                                (let ((_%hd135033135113%_
                                       (##car _%e135032135110%_))
                                      (_%tl135034135115%_
                                       (##cdr _%e135032135110%_)))
                                  (let ((_%test135118%_ _%hd135033135113%_))
                                    (if (gx#stx-pair? _%tl135034135115%_)
                                        (let ((_%e135035135120%_
                                               (gx#syntax-e
                                                _%tl135034135115%_)))
                                          (let ((_%hd135036135123%_
                                                 (##car _%e135035135120%_))
                                                (_%tl135037135125%_
                                                 (##cdr _%e135035135120%_)))
                                            (let ((_%K135128%_
                                                   _%hd135036135123%_))
                                              (if (gx#stx-null?
                                                   _%tl135037135125%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test135118%_
                                                   _%K135128%_
                                                   '#!void)
                                                  (_%E135028135098%_)))))
                                        (_%E135028135098%_)))))
                              (_%E135028135098%_))))
                      (_%E135028135098%_)))))
          (_%E135027135130%_))))
    (define gx#free-identifier=?
      (lambda (_%xid135010%_ _%yid135011%_)
        (let ((_%xe135013%_ (gx#resolve-identifier__0 _%xid135010%_))
              (_%ye135014%_ (gx#resolve-identifier__0 _%yid135011%_)))
          (if (and _%xe135013%_ _%ye135014%_)
              (let ((_%$e135017%_ (eq? _%xe135013%_ _%ye135014%_)))
                (if _%$e135017%_
                    _%$e135017%_
                    (if (##structure-instance-of? _%xe135013%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye135014%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe135013%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye135014%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe135013%_ _%ye135014%_)
                  '#f
                  (gx#stx-eq? _%xid135010%_ _%yid135011%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid134991%_ _%yid134992%_)
        (letrec ((_%context134994%_
                  (lambda (_%e135008%_)
                    (if (##structure-direct-instance-of?
                         _%e135008%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e135008%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks134995%_
                  (lambda (_%e135003%_)
                    (if (symbol? _%e135003%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e135003%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e135003%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e135003%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap134996%_
                  (lambda (_%e135001%_)
                    (if (symbol? _%e135001%_)
                        _%e135001%_
                        (gx#syntax-local-unwrap _%e135001%_)))))
          (let ((_%x134998%_ (_%unwrap134996%_ _%xid134991%_))
                (_%y134999%_ (_%unwrap134996%_ _%yid134992%_)))
            (if (gx#stx-eq? _%x134998%_ _%y134999%_)
                (if (eq? (_%context134994%_ _%x134998%_)
                         (_%context134994%_ _%y134999%_))
                    (equal? (_%marks134995%_ _%x134998%_)
                            (_%marks134995%_ _%y134999%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx134989%_)
        (if (gx#identifier? _%stx134989%_)
            (gx#core-identifier=? _%stx134989%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx134987%_)
        (if (gx#identifier? _%stx134987%_)
            (gx#core-identifier=? _%stx134987%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx134930%_ _%where134931%_)
        (let _%lp134933%_ ((_%rest134935%_ (gx#syntax->list _%stx134930%_)))
          (let* ((_%rest134936134944%_ _%rest134935%_)
                 (_%else134938134952%_ (lambda () '#t))
                 (_%K134940134965%_
                  (lambda (_%rest134955%_ _%hd134956%_)
                    (if (gx#identifier? _%hd134956%_)
                        (if (__find (lambda (_%g134958134960%_)
                                      (gx#bound-identifier=?
                                       _%g134958134960%_
                                       _%hd134956%_))
                                    _%rest134955%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where134931%_
                             _%hd134956%_)
                            (_%lp134933%_ _%rest134955%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where134931%_
                         _%hd134956%_)))))
            (if (pair? _%rest134936134944%_)
                (let ((_%hd134941134968%_ (##car _%rest134936134944%_))
                      (_%tl134942134970%_ (##cdr _%rest134936134944%_)))
                  (let* ((_%hd134973%_ _%hd134941134968%_)
                         (_%rest134975%_ _%tl134942134970%_))
                    (_%K134940134965%_ _%rest134975%_ _%hd134973%_)))
                (_%else134938134952%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx134980%_)
        (let ((_%where134982%_ _%stx134980%_))
          (gx#check-duplicate-identifiers__% _%stx134980%_ _%where134982%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g137621_
        (let ((_g137622_ (##length _g137621_)))
          (cond ((##fx= _g137622_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g137621_))
                ((##fx= _g137622_ 2)
                 (apply gx#check-duplicate-identifiers__% _g137621_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g137621_))))))
    (define gx#core-bind-values?
      (lambda (_%stx134922%_)
        (gx#stx-andmap
         (lambda (_%x134924%_)
           (let ((_%$e134926%_ (gx#identifier? _%x134924%_)))
             (if _%$e134926%_ _%$e134926%_ (gx#stx-false? _%x134924%_))))
         _%stx134922%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx134886%_ _%rebind?134887%_ _%phi134888%_ _%ctx134889%_)
        (gx#stx-for-each1
         (lambda (_%id134891%_)
           (if (gx#identifier? _%id134891%_)
               (gx#core-bind-runtime!__%
                _%id134891%_
                _%rebind?134887%_
                _%phi134888%_
                _%ctx134889%_)
               '#!void))
         _%stx134886%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx134896%_)
        (let* ((_%rebind?134898%_ '#f)
               (_%phi134900%_ (gx#current-expander-phi))
               (_%ctx134902%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx134896%_
           _%rebind?134898%_
           _%phi134900%_
           _%ctx134902%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx134904%_ _%rebind?134905%_)
        (let* ((_%phi134907%_ (gx#current-expander-phi))
               (_%ctx134909%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx134904%_
           _%rebind?134905%_
           _%phi134907%_
           _%ctx134909%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx134911%_ _%rebind?134912%_ _%phi134913%_)
        (let ((_%ctx134915%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx134911%_
           _%rebind?134912%_
           _%phi134913%_
           _%ctx134915%_))))
    (define gx#core-bind-values!
      (lambda _g137623_
        (let ((_g137624_ (##length _g137623_)))
          (cond ((##fx= _g137624_ 1) (apply gx#core-bind-values!__0 _g137623_))
                ((##fx= _g137624_ 2) (apply gx#core-bind-values!__1 _g137623_))
                ((##fx= _g137624_ 3) (apply gx#core-bind-values!__2 _g137623_))
                ((##fx= _g137624_ 4) (apply gx#core-bind-values!__% _g137623_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g137623_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx134881%_)
        (gx#stx-map1
         (lambda (_%x134883%_)
           (if (gx#identifier? _%x134883%_)
               (gx#core-quote-syntax__0 _%x134883%_)
               '#f))
         _%stx134881%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx134874%_)
        (if (gx#identifier? _%stx134874%_)
            (let* ((_%bind134876%_ (gx#resolve-identifier__0 _%stx134874%_))
                   (_%$e134878%_ (not _%bind134876%_)))
              (if _%$e134878%_
                  _%$e134878%_
                  (##structure-instance-of?
                   _%bind134876%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id134863%_ _%form134864%_)
        (let ((_%bind134866%_ (gx#resolve-identifier__0 _%id134863%_)))
          (if (##structure-instance-of? _%bind134866%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id134863%_)
              (if (not _%bind134866%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id134863%_)))
                      (gx#core-quote-syntax__0 _%id134863%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form134864%_
                       _%id134863%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form134864%_
                   _%id134863%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id134818%_ _%rebind?134819%_ _%phi134820%_ _%ctx134821%_)
        (let* ((_%key134823%_ (gx#core-identifier-key _%id134818%_))
               (_%eid134825%_
                (gx#make-binding-id__%
                 _%key134823%_
                 '#f
                 _%phi134820%_
                 _%ctx134821%_))
               (_%bind134831%_
                (if (##structure-instance-of?
                     _%ctx134821%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid134825%_
                     _%key134823%_
                     _%phi134820%_
                     _%ctx134821%_)
                    (if (##structure-instance-of?
                         _%ctx134821%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid134825%_
                         _%key134823%_
                         _%phi134820%_)
                        (if (##structure-instance-of?
                             _%ctx134821%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid134825%_
                             _%key134823%_
                             _%phi134820%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid134825%_
                             _%key134823%_
                             _%phi134820%_))))))
          (gx#bind-identifier!__%
           _%id134818%_
           _%bind134831%_
           _%rebind?134819%_
           _%phi134820%_
           _%ctx134821%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id134837%_)
        (let* ((_%rebind?134839%_ '#f)
               (_%phi134841%_ (gx#current-expander-phi))
               (_%ctx134843%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id134837%_
           _%rebind?134839%_
           _%phi134841%_
           _%ctx134843%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id134845%_ _%rebind?134846%_)
        (let* ((_%phi134848%_ (gx#current-expander-phi))
               (_%ctx134850%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id134845%_
           _%rebind?134846%_
           _%phi134848%_
           _%ctx134850%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id134852%_ _%rebind?134853%_ _%phi134854%_)
        (let ((_%ctx134856%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id134852%_
           _%rebind?134853%_
           _%phi134854%_
           _%ctx134856%_))))
    (define gx#core-bind-runtime!
      (lambda _g137625_
        (let ((_g137626_ (##length _g137625_)))
          (cond ((##fx= _g137626_ 1)
                 (apply gx#core-bind-runtime!__0 _g137625_))
                ((##fx= _g137626_ 2)
                 (apply gx#core-bind-runtime!__1 _g137625_))
                ((##fx= _g137626_ 3)
                 (apply gx#core-bind-runtime!__2 _g137625_))
                ((##fx= _g137626_ 4)
                 (apply gx#core-bind-runtime!__% _g137625_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g137625_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id134770%_
               _%eid134771%_
               _%rebind?134772%_
               _%phi134773%_
               _%ctx134774%_)
        (let* ((_%key134776%_ (gx#core-identifier-key _%id134770%_))
               (_%bind134781%_
                (if (##structure-instance-of?
                     _%ctx134774%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid134771%_
                     _%key134776%_
                     _%phi134773%_
                     _%ctx134774%_)
                    (if (##structure-instance-of?
                         _%ctx134774%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid134771%_
                         _%key134776%_
                         _%phi134773%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid134771%_
                         _%key134776%_
                         _%phi134773%_)))))
          (gx#bind-identifier!__%
           _%id134770%_
           _%bind134781%_
           _%rebind?134772%_
           _%phi134773%_
           _%ctx134774%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id134787%_ _%eid134788%_)
        (let* ((_%rebind?134790%_ '#f)
               (_%phi134792%_ (gx#current-expander-phi))
               (_%ctx134794%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id134787%_
           _%eid134788%_
           _%rebind?134790%_
           _%phi134792%_
           _%ctx134794%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id134796%_ _%eid134797%_ _%rebind?134798%_)
        (let* ((_%phi134800%_ (gx#current-expander-phi))
               (_%ctx134802%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id134796%_
           _%eid134797%_
           _%rebind?134798%_
           _%phi134800%_
           _%ctx134802%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id134804%_ _%eid134805%_ _%rebind?134806%_ _%phi134807%_)
        (let ((_%ctx134809%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id134804%_
           _%eid134805%_
           _%rebind?134806%_
           _%phi134807%_
           _%ctx134809%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g137627_
        (let ((_g137628_ (##length _g137627_)))
          (cond ((##fx= _g137628_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g137627_))
                ((##fx= _g137628_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g137627_))
                ((##fx= _g137628_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g137627_))
                ((##fx= _g137628_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g137627_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g137627_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id134730%_
               _%eid134731%_
               _%rebind?134732%_
               _%phi134733%_
               _%ctx134734%_)
        (gx#bind-identifier!__%
         _%id134730%_
         (##structure
          gx#extern-binding::t
          _%eid134731%_
          (gx#core-identifier-key _%id134730%_)
          _%phi134733%_)
         _%rebind?134732%_
         _%phi134733%_
         _%ctx134734%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id134739%_ _%eid134740%_)
        (let* ((_%rebind?134742%_ '#f)
               (_%phi134744%_ (gx#current-expander-phi))
               (_%ctx134746%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id134739%_
           _%eid134740%_
           _%rebind?134742%_
           _%phi134744%_
           _%ctx134746%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id134748%_ _%eid134749%_ _%rebind?134750%_)
        (let* ((_%phi134752%_ (gx#current-expander-phi))
               (_%ctx134754%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id134748%_
           _%eid134749%_
           _%rebind?134750%_
           _%phi134752%_
           _%ctx134754%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id134756%_ _%eid134757%_ _%rebind?134758%_ _%phi134759%_)
        (let ((_%ctx134761%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id134756%_
           _%eid134757%_
           _%rebind?134758%_
           _%phi134759%_
           _%ctx134761%_))))
    (define gx#core-bind-extern!
      (lambda _g137629_
        (let ((_g137630_ (##length _g137629_)))
          (cond ((##fx= _g137630_ 2) (apply gx#core-bind-extern!__0 _g137629_))
                ((##fx= _g137630_ 3) (apply gx#core-bind-extern!__1 _g137629_))
                ((##fx= _g137630_ 4) (apply gx#core-bind-extern!__2 _g137629_))
                ((##fx= _g137630_ 5) (apply gx#core-bind-extern!__% _g137629_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g137629_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id134684%_
               _%e134685%_
               _%rebind?134686%_
               _%phi134687%_
               _%ctx134688%_)
        (gx#bind-identifier!__%
         _%id134684%_
         (let ((_%key134693%_ (gx#core-identifier-key _%id134684%_))
               (_%e134694%_
                (if (or (##structure-instance-of? _%e134685%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e134685%_
                         'gx#expander-context::t))
                    _%e134685%_
                    (##structure
                     gx#user-expander::t
                     _%e134685%_
                     _%ctx134688%_
                     _%phi134687%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key134693%_
             '#t
             _%phi134687%_
             _%ctx134688%_)
            _%key134693%_
            _%phi134687%_
            _%e134694%_))
         _%rebind?134686%_
         _%phi134687%_
         _%ctx134688%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id134699%_ _%e134700%_)
        (let* ((_%rebind?134702%_ '#f)
               (_%phi134704%_ (gx#current-expander-phi))
               (_%ctx134706%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id134699%_
           _%e134700%_
           _%rebind?134702%_
           _%phi134704%_
           _%ctx134706%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id134708%_ _%e134709%_ _%rebind?134710%_)
        (let* ((_%phi134712%_ (gx#current-expander-phi))
               (_%ctx134714%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id134708%_
           _%e134709%_
           _%rebind?134710%_
           _%phi134712%_
           _%ctx134714%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id134716%_ _%e134717%_ _%rebind?134718%_ _%phi134719%_)
        (let ((_%ctx134721%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id134716%_
           _%e134717%_
           _%rebind?134718%_
           _%phi134719%_
           _%ctx134721%_))))
    (define gx#core-bind-syntax!
      (lambda _g137631_
        (let ((_g137632_ (##length _g137631_)))
          (cond ((##fx= _g137632_ 2) (apply gx#core-bind-syntax!__0 _g137631_))
                ((##fx= _g137632_ 3) (apply gx#core-bind-syntax!__1 _g137631_))
                ((##fx= _g137632_ 4) (apply gx#core-bind-syntax!__2 _g137631_))
                ((##fx= _g137632_ 5) (apply gx#core-bind-syntax!__% _g137631_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g137631_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id134667%_ _%e134668%_ _%rebind?134669%_)
        (gx#core-bind-syntax!__%
         _%id134667%_
         _%e134668%_
         _%rebind?134669%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id134674%_ _%e134675%_)
        (let ((_%rebind?134677%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id134674%_
           _%e134675%_
           _%rebind?134677%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g137633_
        (let ((_g137634_ (##length _g137633_)))
          (cond ((##fx= _g137634_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g137633_))
                ((##fx= _g137634_ 3)
                 (apply gx#core-bind-root-syntax!__% _g137633_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g137633_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id134625%_
               _%alias-id134626%_
               _%rebind?134627%_
               _%phi134628%_
               _%ctx134629%_)
        (gx#bind-identifier!__%
         _%id134625%_
         (let ((_%key134631%_ (gx#core-identifier-key _%id134625%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key134631%_
             '#t
             _%phi134628%_
             _%ctx134629%_)
            _%key134631%_
            _%phi134628%_
            _%alias-id134626%_))
         _%rebind?134627%_
         _%phi134628%_
         _%ctx134629%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id134636%_ _%alias-id134637%_)
        (let* ((_%rebind?134639%_ '#f)
               (_%phi134641%_ (gx#current-expander-phi))
               (_%ctx134643%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id134636%_
           _%alias-id134637%_
           _%rebind?134639%_
           _%phi134641%_
           _%ctx134643%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id134645%_ _%alias-id134646%_ _%rebind?134647%_)
        (let* ((_%phi134649%_ (gx#current-expander-phi))
               (_%ctx134651%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id134645%_
           _%alias-id134646%_
           _%rebind?134647%_
           _%phi134649%_
           _%ctx134651%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id134653%_ _%alias-id134654%_ _%rebind?134655%_ _%phi134656%_)
        (let ((_%ctx134658%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id134653%_
           _%alias-id134654%_
           _%rebind?134655%_
           _%phi134656%_
           _%ctx134658%_))))
    (define gx#core-bind-alias!
      (lambda _g137635_
        (let ((_g137636_ (##length _g137635_)))
          (cond ((##fx= _g137636_ 2) (apply gx#core-bind-alias!__0 _g137635_))
                ((##fx= _g137636_ 3) (apply gx#core-bind-alias!__1 _g137635_))
                ((##fx= _g137636_ 4) (apply gx#core-bind-alias!__2 _g137635_))
                ((##fx= _g137636_ 5) (apply gx#core-bind-alias!__% _g137635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g137635_))))))
    (define gx#make-binding-id__%
      (lambda (_%key134575%_ _%syntax?134576%_ _%phi134577%_ _%ctx134578%_)
        (if (uninterned-symbol? _%key134575%_)
            (##gensym 'L)
            (if (pair? _%key134575%_)
                (gensym (##car _%key134575%_))
                (if (##structure-instance-of? _%ctx134578%_ 'gx#top-context::t)
                    (let ((_%ns134583%_
                           (gx#core-context-namespace__% _%ctx134578%_)))
                      (if (and (fxzero? _%phi134577%_) (not _%syntax?134576%_))
                          (if _%ns134583%_
                              (make-symbol__1 _%ns134583%_ '"#" _%key134575%_)
                              _%key134575%_)
                          (if _%syntax?134576%_
                              (make-symbol__1
                               (let ((_%$e134587%_ _%ns134583%_))
                                 (if _%$e134587%_ _%$e134587%_ '""))
                               '"[:"
                               (number->string _%phi134577%_)
                               '":]#"
                               _%key134575%_)
                              (make-symbol__1
                               (let ((_%$e134591%_ _%ns134583%_))
                                 (if _%$e134591%_ _%$e134591%_ '""))
                               '"["
                               (number->string _%phi134577%_)
                               '"]#"
                               _%key134575%_))))
                    (gensym _%key134575%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key134598%_)
        (let* ((_%syntax?134600%_ '#f)
               (_%phi134602%_ (gx#current-expander-phi))
               (_%ctx134604%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key134598%_
           _%syntax?134600%_
           _%phi134602%_
           _%ctx134604%_))))
    (define gx#make-binding-id__1
      (lambda (_%key134606%_ _%syntax?134607%_)
        (let* ((_%phi134609%_ (gx#current-expander-phi))
               (_%ctx134611%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key134606%_
           _%syntax?134607%_
           _%phi134609%_
           _%ctx134611%_))))
    (define gx#make-binding-id__2
      (lambda (_%key134613%_ _%syntax?134614%_ _%phi134615%_)
        (let ((_%ctx134617%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key134613%_
           _%syntax?134614%_
           _%phi134615%_
           _%ctx134617%_))))
    (define gx#make-binding-id
      (lambda _g137637_
        (let ((_g137638_ (##length _g137637_)))
          (cond ((##fx= _g137638_ 1) (apply gx#make-binding-id__0 _g137637_))
                ((##fx= _g137638_ 2) (apply gx#make-binding-id__1 _g137637_))
                ((##fx= _g137638_ 3) (apply gx#make-binding-id__2 _g137637_))
                ((##fx= _g137638_ 4) (apply gx#make-binding-id__% _g137637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g137637_))))))))
