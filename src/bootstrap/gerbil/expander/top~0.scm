(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712602655)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx121272%_)
        (letrec ((_%expand-special121274%_
                  (lambda (_%hd121276%_ _%K121277%_ _%rest121278%_ _%r121279%_)
                    (_%K121277%_
                     _%rest121278%_
                     (cons (gx#core-expand-top _%hd121276%_) _%r121279%_)))))
          (gx#core-expand-block__0 _%stx121272%_ _%expand-special121274%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx121025%_)
        (letrec ((_%expand-special121027%_
                  (lambda (_%hd121147%_ _%K121148%_ _%rest121149%_ _%r121150%_)
                    (let* ((_%K121154%_
                            (lambda (_%e121152%_)
                              (_%K121148%_
                               _%rest121149%_
                               (cons _%e121152%_ _%r121150%_))))
                           (_%e121155121184%_ _%hd121147%_)
                           (_%E121179121188%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121155121184%_)))
                           (_%E121175121200%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121155121184%_)
                                  (let ((_%e121180121192%_
                                         (gx#syntax-e _%e121155121184%_)))
                                    (let ((_%hd121181121195%_
                                           (##car _%e121180121192%_))
                                          (_%tl121182121197%_
                                           (##cdr _%e121180121192%_)))
                                      (if (and (gx#identifier?
                                                _%hd121181121195%_)
                                               (gx#core-identifier=?
                                                _%hd121181121195%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K121154%_
                                               (gx#core-expand-define-runtime%
                                                _%hd121147%_))
                                              (_%E121179121188%_))
                                          (_%E121179121188%_))))
                                  (_%E121179121188%_))))
                           (_%E121171121212%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121155121184%_)
                                  (let ((_%e121176121204%_
                                         (gx#syntax-e _%e121155121184%_)))
                                    (let ((_%hd121177121207%_
                                           (##car _%e121176121204%_))
                                          (_%tl121178121209%_
                                           (##cdr _%e121176121204%_)))
                                      (if (and (gx#identifier?
                                                _%hd121177121207%_)
                                               (gx#core-identifier=?
                                                _%hd121177121207%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K121154%_
                                               (gx#core-expand-define-alias%
                                                _%hd121147%_))
                                              (_%E121175121200%_))
                                          (_%E121175121200%_))))
                                  (_%E121175121200%_))))
                           (_%E121161121224%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121155121184%_)
                                  (let ((_%e121172121216%_
                                         (gx#syntax-e _%e121155121184%_)))
                                    (let ((_%hd121173121219%_
                                           (##car _%e121172121216%_))
                                          (_%tl121174121221%_
                                           (##cdr _%e121172121216%_)))
                                      (if (and (gx#identifier?
                                                _%hd121173121219%_)
                                               (gx#core-identifier=?
                                                _%hd121173121219%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K121154%_
                                               (gx#core-expand-define-syntax%
                                                _%hd121147%_))
                                              (_%E121171121212%_))
                                          (_%E121171121212%_))))
                                  (_%E121171121212%_))))
                           (_%E121157121256%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121155121184%_)
                                  (let ((_%e121162121228%_
                                         (gx#syntax-e _%e121155121184%_)))
                                    (let ((_%hd121163121231%_
                                           (##car _%e121162121228%_))
                                          (_%tl121164121233%_
                                           (##cdr _%e121162121228%_)))
                                      (if (and (gx#identifier?
                                                _%hd121163121231%_)
                                               (gx#core-identifier=?
                                                _%hd121163121231%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121164121233%_)
                                              (let ((_%e121165121236%_
                                                     (gx#syntax-e
                                                      _%tl121164121233%_)))
                                                (let ((_%hd121166121239%_
                                                       (##car _%e121165121236%_))
                                                      (_%tl121167121241%_
                                                       (##cdr _%e121165121236%_)))
                                                  (let ((_%hd-bind121244%_
                                                         _%hd121166121239%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121167121241%_)
                                                        (let ((_%e121168121246%_
                                                               (gx#syntax-e
                                                                _%tl121167121241%_)))
                                                          (let ((_%hd121169121249%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121168121246%_))
                        (_%tl121170121251%_ (##cdr _%e121168121246%_)))
                    (let ((_%expr121254%_ _%hd121169121249%_))
                      (if (gx#stx-null? _%tl121170121251%_)
                          (if (gx#core-bind-values? _%hd-bind121244%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121244%_)
                                (_%K121154%_ _%hd121147%_))
                              (_%E121161121224%_))
                          (_%E121161121224%_)))))
                (_%E121161121224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121161121224%_))
                                          (_%E121161121224%_))))
                                  (_%E121161121224%_))))
                           (_%E121156121268%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121155121184%_)
                                  (let ((_%e121158121260%_
                                         (gx#syntax-e _%e121155121184%_)))
                                    (let ((_%hd121159121263%_
                                           (##car _%e121158121260%_))
                                          (_%tl121160121265%_
                                           (##cdr _%e121158121260%_)))
                                      (if (and (gx#identifier?
                                                _%hd121159121263%_)
                                               (gx#core-identifier=?
                                                _%hd121159121263%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K121154%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd121147%_))
                                              (_%E121157121256%_))
                                          (_%E121157121256%_))))
                                  (_%E121157121256%_)))))
                      (_%E121156121268%_))))
                 (_%eval-body121028%_
                  (lambda (_%rbody121036%_)
                    (let _%lp121038%_ ((_%rest121040%_ _%rbody121036%_)
                                       (_%body121041%_ '())
                                       (_%ebody121042%_ '()))
                      (let* ((_%rest121043121051%_ _%rest121040%_)
                             (_%else121045121059%_
                              (lambda ()
                                (values _%body121041%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody121042%_)
                                          (gx#stx-source _%stx121025%_))))))
                             (_%K121047121135%_
                              (lambda (_%rest121062%_ _%hd121063%_)
                                (let* ((_%e121064121081%_ _%hd121063%_)
                                       (_%E121076121085%_
                                        (lambda ()
                                          (_%lp121038%_
                                           _%rest121062%_
                                           (cons _%hd121063%_ _%body121041%_)
                                           (cons _%hd121063%_
                                                 _%ebody121042%_))))
                                       (_%E121066121097%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121064121081%_)
                                              (let ((_%e121077121089%_
                                                     (gx#syntax-e
                                                      _%e121064121081%_)))
                                                (let ((_%hd121078121092%_
                                                       (##car _%e121077121089%_))
                                                      (_%tl121079121094%_
                                                       (##cdr _%e121077121089%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121078121092%_)
                                                           (gx#core-identifier=?
                                                            _%hd121078121092%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp121038%_
                                                           _%rest121062%_
                                                           (cons _%hd121063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body121041%_)
                   _%ebody121042%_)
                  (_%E121076121085%_))
              (_%E121076121085%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121076121085%_))))
                                       (_%E121065121131%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121064121081%_)
                                              (let ((_%e121067121101%_
                                                     (gx#syntax-e
                                                      _%e121064121081%_)))
                                                (let ((_%hd121068121104%_
                                                       (##car _%e121067121101%_))
                                                      (_%tl121069121106%_
                                                       (##cdr _%e121067121101%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121068121104%_)
                                                           (gx#core-identifier=?
                                                            _%hd121068121104%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl121069121106%_)
                                                          (let ((_%e121070121109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl121069121106%_)))
                    (let ((_%hd121071121112%_ (##car _%e121070121109%_))
                          (_%tl121072121114%_ (##cdr _%e121070121109%_)))
                      (let ((_%hd-bind121117%_ _%hd121071121112%_))
                        (if (gx#stx-pair? _%tl121072121114%_)
                            (let ((_%e121073121119%_
                                   (gx#syntax-e _%tl121072121114%_)))
                              (let ((_%hd121074121122%_
                                     (##car _%e121073121119%_))
                                    (_%tl121075121124%_
                                     (##cdr _%e121073121119%_)))
                                (let ((_%expr121127%_ _%hd121074121122%_))
                                  (if (gx#stx-null? _%tl121075121124%_)
                                      (if '#t
                                          (let ((_%ehd121129%_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind121117%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr121127%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd121063%_))))
                                            (_%lp121038%_
                                             _%rest121062%_
                                             (cons _%ehd121129%_
                                                   _%body121041%_)
                                             (cons _%ehd121129%_
                                                   _%ebody121042%_)))
                                          (_%E121066121097%_))
                                      (_%E121066121097%_)))))
                            (_%E121066121097%_)))))
                  (_%E121066121097%_))
              (_%E121066121097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121066121097%_)))))
                                  (_%E121065121131%_)))))
                        (if (##pair? _%rest121043121051%_)
                            (let ((_%hd121048121138%_
                                   (##car _%rest121043121051%_))
                                  (_%tl121049121140%_
                                   (##cdr _%rest121043121051%_)))
                              (let* ((_%hd121143%_ _%hd121048121138%_)
                                     (_%rest121145%_ _%tl121049121140%_))
                                (_%K121047121135%_
                                 _%rest121145%_
                                 _%hd121143%_)))
                            (_%else121045121059%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody121031%_
                     (gx#core-expand-block__1
                      _%stx121025%_
                      _%expand-special121027%_
                      '#f))
                    (_g121295_ (_%eval-body121028%_ _%rbody121031%_)))
               (begin
                 (let ((_g121296_
                        (if (##values? _g121295_)
                            (##vector-length _g121295_)
                            1)))
                   (if (not (##fx= _g121296_ 2))
                       (error "Context expects 2 values" _g121296_)))
                 (let ((_%expanded-body121033%_ (##vector-ref _g121295_ 0))
                       (_%value121034%_ (##vector-ref _g121295_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body121033%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value121034%_ '())))
                    (gx#stx-source _%stx121025%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx120995%_)
        (let* ((_%e120996121003%_ _%stx120995%_)
               (_%E120998121007%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120996121003%_)))
               (_%E120997121021%_
                (lambda ()
                  (if (gx#stx-pair? _%e120996121003%_)
                      (let ((_%e120999121011%_
                             (gx#syntax-e _%e120996121003%_)))
                        (let ((_%hd121000121014%_ (##car _%e120999121011%_))
                              (_%tl121001121016%_ (##cdr _%e120999121011%_)))
                          (let ((_%body121019%_ _%tl121001121016%_))
                            (if (gx#stx-list? _%body121019%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body121019%_)
                                 (gx#stx-source _%stx120995%_))
                                (_%E120998121007%_)))))
                      (_%E120998121007%_)))))
          (_%E120997121021%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx120993%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx120993%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx120939%_)
        (let* ((_%e120940120953%_ _%stx120939%_)
               (_%E120942120957%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120940120953%_)))
               (_%E120941120989%_
                (lambda ()
                  (if (gx#stx-pair? _%e120940120953%_)
                      (let ((_%e120943120961%_
                             (gx#syntax-e _%e120940120953%_)))
                        (let ((_%hd120944120964%_ (##car _%e120943120961%_))
                              (_%tl120945120966%_ (##cdr _%e120943120961%_)))
                          (if (gx#stx-pair? _%tl120945120966%_)
                              (let ((_%e120946120969%_
                                     (gx#syntax-e _%tl120945120966%_)))
                                (let ((_%hd120947120972%_
                                       (##car _%e120946120969%_))
                                      (_%tl120948120974%_
                                       (##cdr _%e120946120969%_)))
                                  (let ((_%ann120977%_ _%hd120947120972%_))
                                    (if (gx#stx-pair? _%tl120948120974%_)
                                        (let ((_%e120949120979%_
                                               (gx#syntax-e
                                                _%tl120948120974%_)))
                                          (let ((_%hd120950120982%_
                                                 (##car _%e120949120979%_))
                                                (_%tl120951120984%_
                                                 (##cdr _%e120949120979%_)))
                                            (let ((_%expr120987%_
                                                   _%hd120950120982%_))
                                              (if (gx#stx-null?
                                                   _%tl120951120984%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _%ann120977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr120987%_)
                                 '())))
               (gx#stx-source _%stx120939%_))
              (_%E120942120957%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120942120957%_)))))
                                        (_%E120942120957%_)))))
                              (_%E120942120957%_))))
                      (_%E120942120957%_)))))
          (_%E120941120989%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx120663%_ _%body120664%_)
        (letrec ((_%expand-special120666%_
                  (lambda (_%hd120934%_ _%K120935%_ _%rest120936%_ _%r120937%_)
                    (_%K120935%_
                     '()
                     (cons (_%expand-internal120667%_
                            _%hd120934%_
                            _%rest120936%_)
                           _%r120937%_))))
                 (_%expand-internal120667%_
                  (lambda (_%hd120930%_ _%rest120931%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal120669%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd120930%_ _%rest120931%_))
                          (gx#stx-source _%stx120663%_))
                         _%expand-internal-special120668%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj121289
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj121289)
                       __obj121289))))
                 (_%expand-internal-special120668%_
                  (lambda (_%hd120825%_ _%K120826%_ _%rest120827%_ _%r120828%_)
                    (let* ((_%e120829120854%_ _%hd120825%_)
                           (_%E120849120858%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120829120854%_)))
                           (_%E120845120870%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120829120854%_)
                                  (let ((_%e120850120862%_
                                         (gx#syntax-e _%e120829120854%_)))
                                    (let ((_%hd120851120865%_
                                           (##car _%e120850120862%_))
                                          (_%tl120852120867%_
                                           (##cdr _%e120850120862%_)))
                                      (if (and (gx#identifier?
                                                _%hd120851120865%_)
                                               (gx#core-identifier=?
                                                _%hd120851120865%_
                                                '%#declare))
                                          (if '#t
                                              (_%K120826%_
                                               _%rest120827%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd120825%_)
                                                     _%r120828%_))
                                              (_%E120849120858%_))
                                          (_%E120849120858%_))))
                                  (_%E120849120858%_))))
                           (_%E120841120882%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120829120854%_)
                                  (let ((_%e120846120874%_
                                         (gx#syntax-e _%e120829120854%_)))
                                    (let ((_%hd120847120877%_
                                           (##car _%e120846120874%_))
                                          (_%tl120848120879%_
                                           (##cdr _%e120846120874%_)))
                                      (if (and (gx#identifier?
                                                _%hd120847120877%_)
                                               (gx#core-identifier=?
                                                _%hd120847120877%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd120825%_)
                                                (_%K120826%_
                                                 _%rest120827%_
                                                 _%r120828%_))
                                              (_%E120845120870%_))
                                          (_%E120845120870%_))))
                                  (_%E120845120870%_))))
                           (_%E120831120894%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120829120854%_)
                                  (let ((_%e120842120886%_
                                         (gx#syntax-e _%e120829120854%_)))
                                    (let ((_%hd120843120889%_
                                           (##car _%e120842120886%_))
                                          (_%tl120844120891%_
                                           (##cdr _%e120842120886%_)))
                                      (if (and (gx#identifier?
                                                _%hd120843120889%_)
                                               (gx#core-identifier=?
                                                _%hd120843120889%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd120825%_)
                                                (_%K120826%_
                                                 _%rest120827%_
                                                 _%r120828%_))
                                              (_%E120841120882%_))
                                          (_%E120841120882%_))))
                                  (_%E120841120882%_))))
                           (_%E120830120926%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120829120854%_)
                                  (let ((_%e120832120898%_
                                         (gx#syntax-e _%e120829120854%_)))
                                    (let ((_%hd120833120901%_
                                           (##car _%e120832120898%_))
                                          (_%tl120834120903%_
                                           (##cdr _%e120832120898%_)))
                                      (if (and (gx#identifier?
                                                _%hd120833120901%_)
                                               (gx#core-identifier=?
                                                _%hd120833120901%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl120834120903%_)
                                              (let ((_%e120835120906%_
                                                     (gx#syntax-e
                                                      _%tl120834120903%_)))
                                                (let ((_%hd120836120909%_
                                                       (##car _%e120835120906%_))
                                                      (_%tl120837120911%_
                                                       (##cdr _%e120835120906%_)))
                                                  (let ((_%hd-bind120914%_
                                                         _%hd120836120909%_))
                                                    (if (gx#stx-pair?
                                                         _%tl120837120911%_)
                                                        (let ((_%e120838120916%_
                                                               (gx#syntax-e
                                                                _%tl120837120911%_)))
                                                          (let ((_%hd120839120919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e120838120916%_))
                        (_%tl120840120921%_ (##cdr _%e120838120916%_)))
                    (let ((_%expr120924%_ _%hd120839120919%_))
                      (if (gx#stx-null? _%tl120840120921%_)
                          (if (gx#core-bind-values? _%hd-bind120914%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind120914%_)
                                (_%K120826%_
                                 _%rest120827%_
                                 (cons _%hd120825%_ _%r120828%_)))
                              (_%E120831120894%_))
                          (_%E120831120894%_)))))
                (_%E120831120894%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E120831120894%_))
                                          (_%E120831120894%_))))
                                  (_%E120831120894%_)))))
                      (_%E120830120926%_))))
                 (_%wrap-internal120669%_
                  (lambda (_%rbody120671%_)
                    (let _%lp120673%_ ((_%rest120675%_ _%rbody120671%_)
                                       (_%decls120676%_ '())
                                       (_%bind120677%_ '())
                                       (_%body120678%_ '()))
                      (let* ((_%e120679120686%_ _%rest120675%_)
                             (_%E120681120735%_
                              (lambda ()
                                (let* ((_%body120730%_
                                        (let* ((_%body120689120699%_
                                                _%body120678%_)
                                               (_%else120692120707%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body120678%_)
                                                   (gx#stx-source
                                                    _%stx120663%_)))))
                                          (let ((_%K120697120727%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx120663%_)))
                                                (_%K120694120713%_
                                                 (lambda (_%expr120711%_)
                                                   _%expr120711%_)))
                                            (let ((_%try-match120691120723%_
                                                   (lambda ()
                                                     (if (##pair? _%body120689120699%_)
                                                         (let ((_%tl120696120718%_
                                                                (##cdr _%body120689120699%_))
                                                               (_%hd120695120716%_
                                                                (##car _%body120689120699%_)))
                                                           (if (##null? _%tl120696120718%_)
                                                               (let ((_%expr120721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd120695120716%_))
                         (_%K120694120713%_ _%expr120721%_))
                       (_%else120692120707%_)))
                 (_%else120692120707%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body120689120699%_)
                                                  (_%K120697120727%_)
                                                  (_%try-match120691120723%_))))))
                                       (_%body120732%_
                                        (if (null? _%bind120677%_)
                                            _%body120730%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind120677%_
                                                         (cons _%body120730%_
                                                               '())))
                                             (gx#stx-source _%stx120663%_)))))
                                  (if (null? _%decls120676%_)
                                      _%body120732%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls120676%_
                                                   (cons _%body120732%_ '())))
                                       (gx#stx-source _%stx120663%_))))))
                             (_%E120680120821%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120679120686%_)
                                    (let ((_%e120682120739%_
                                           (gx#syntax-e _%e120679120686%_)))
                                      (let ((_%hd120683120742%_
                                             (##car _%e120682120739%_))
                                            (_%tl120684120744%_
                                             (##cdr _%e120682120739%_)))
                                        (let* ((_%hd120747%_
                                                _%hd120683120742%_)
                                               (_%rest120749%_
                                                _%tl120684120744%_))
                                          (if '#t
                                              (let* ((_%e120750120767%_
                                                      _%hd120747%_)
                                                     (_%E120762120771%_
                                                      (lambda ()
                                                        (if (null? _%bind120677%_)
                                                            (_%lp120673%_
                                                             _%rest120749%_
                                                             _%decls120676%_
                                                             _%bind120677%_
                                                             (cons _%hd120747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body120678%_))
                    (_%lp120673%_
                     _%rest120749%_
                     _%decls120676%_
                     (cons (cons '#f (cons _%hd120747%_ '())) _%bind120677%_)
                     _%body120678%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E120752120785%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e120750120767%_)
                                                            (let ((_%e120763120775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e120750120767%_)))
                      (let ((_%hd120764120778%_ (##car _%e120763120775%_))
                            (_%tl120765120780%_ (##cdr _%e120763120775%_)))
                        (if (and (gx#identifier? _%hd120764120778%_)
                                 (gx#core-identifier=?
                                  _%hd120764120778%_
                                  '%#declare))
                            (let ((_%xdecls120783%_ _%tl120765120780%_))
                              (if '#t
                                  (_%lp120673%_
                                   _%rest120749%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls120676%_
                                    _%xdecls120783%_)
                                   _%bind120677%_
                                   _%body120678%_)
                                  (_%E120762120771%_)))
                            (_%E120762120771%_))))
                    (_%E120762120771%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E120751120817%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e120750120767%_)
                                                            (let ((_%e120753120789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e120750120767%_)))
                      (let ((_%hd120754120792%_ (##car _%e120753120789%_))
                            (_%tl120755120794%_ (##cdr _%e120753120789%_)))
                        (if (and (gx#identifier? _%hd120754120792%_)
                                 (gx#core-identifier=?
                                  _%hd120754120792%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%tl120755120794%_)
                                (let ((_%e120756120797%_
                                       (gx#syntax-e _%tl120755120794%_)))
                                  (let ((_%hd120757120800%_
                                         (##car _%e120756120797%_))
                                        (_%tl120758120802%_
                                         (##cdr _%e120756120797%_)))
                                    (let ((_%hd-bind120805%_
                                           _%hd120757120800%_))
                                      (if (gx#stx-pair? _%tl120758120802%_)
                                          (let ((_%e120759120807%_
                                                 (gx#syntax-e
                                                  _%tl120758120802%_)))
                                            (let ((_%hd120760120810%_
                                                   (##car _%e120759120807%_))
                                                  (_%tl120761120812%_
                                                   (##cdr _%e120759120807%_)))
                                              (let ((_%expr120815%_
                                                     _%hd120760120810%_))
                                                (if (gx#stx-null?
                                                     _%tl120761120812%_)
                                                    (if '#t
                                                        (_%lp120673%_
                                                         _%rest120749%_
                                                         _%decls120676%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind120805%_)
                             (cons (gx#core-expand-expression _%expr120815%_)
                                   '()))
                       _%bind120677%_)
                 _%body120678%_)
                (_%E120752120785%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120752120785%_)))))
                                          (_%E120752120785%_)))))
                                (_%E120752120785%_))
                            (_%E120752120785%_))))
                    (_%E120752120785%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120751120817%_))
                                              (_%E120681120735%_)))))
                                    (_%E120681120735%_)))))
                        (_%E120680120821%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body120664%_)
            (gx#stx-source _%stx120663%_))
           _%expand-special120666%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx120601%_)
        (let* ((_%e120602120609%_ _%stx120601%_)
               (_%E120604120613%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120602120609%_)))
               (_%E120603120659%_
                (lambda ()
                  (if (gx#stx-pair? _%e120602120609%_)
                      (let ((_%e120605120617%_
                             (gx#syntax-e _%e120602120609%_)))
                        (let ((_%hd120606120620%_ (##car _%e120605120617%_))
                              (_%tl120607120622%_ (##cdr _%e120605120617%_)))
                          (let ((_%body120625%_ _%tl120607120622%_))
                            (if (gx#stx-list? _%body120625%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl120627%_)
                                     (let* ((_%e120628120635%_ _%decl120627%_)
                                            (_%E120630120639%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e120628120635%_)))
                                            (_%E120629120655%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e120628120635%_)
                                                   (let ((_%e120631120643%_
                                                          (gx#syntax-e
                                                           _%e120628120635%_)))
                                                     (let ((_%hd120632120646%_
                                                            (##car _%e120631120643%_))
                                                           (_%tl120633120648%_
                                                            (##cdr _%e120631120643%_)))
                                                       (let* ((_%head120651%_
                                                               _%hd120632120646%_)
                                                              (_%args120653%_
                                                               _%tl120633120648%_))
                                                         (if (gx#stx-list?
                                                              _%args120653%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl120627%_)
                                                             (_%E120630120639%_)))))
                                                   (_%E120630120639%_)))))
                                       (_%E120629120655%_)))
                                   _%body120625%_))
                                 (gx#stx-source _%stx120601%_))
                                (_%E120604120613%_)))))
                      (_%E120604120613%_)))))
          (_%E120603120659%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx120505%_)
        (let* ((_%e120506120513%_ _%stx120505%_)
               (_%E120508120517%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120506120513%_)))
               (_%E120507120597%_
                (lambda ()
                  (if (gx#stx-pair? _%e120506120513%_)
                      (let ((_%e120509120521%_
                             (gx#syntax-e _%e120506120513%_)))
                        (let ((_%hd120510120524%_ (##car _%e120509120521%_))
                              (_%tl120511120526%_ (##cdr _%e120509120521%_)))
                          (let ((_%body120529%_ _%tl120511120526%_))
                            (if '#t
                                (let _%lp120531%_ ((_%rest120533%_
                                                    _%body120529%_)
                                                   (_%r120534%_ '()))
                                  (let* ((_%e120535120549%_ _%rest120533%_)
                                         (_%E120547120553%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx120505%_)))
                                         (_%E120537120557%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%e120535120549%_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r120534%_))
                                                     (gx#stx-source
                                                      _%stx120505%_))
                                                    (_%E120547120553%_))
                                                (_%E120547120553%_))))
                                         (_%E120536120593%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%e120535120549%_)
                                                (let ((_%e120538120561%_
                                                       (gx#syntax-e
                                                        _%e120535120549%_)))
                                                  (let ((_%hd120539120564%_
                                                         (##car _%e120538120561%_))
                                                        (_%tl120540120566%_
                                                         (##cdr _%e120538120561%_)))
                                                    (if (gx#stx-pair?
                                                         _%hd120539120564%_)
                                                        (let ((_%e120541120569%_
                                                               (gx#syntax-e
                                                                _%hd120539120564%_)))
                                                          (let ((_%hd120542120572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e120541120569%_))
                        (_%tl120543120574%_ (##cdr _%e120541120569%_)))
                    (let ((_%id120577%_ _%hd120542120572%_))
                      (if (gx#stx-pair? _%tl120543120574%_)
                          (let ((_%e120544120579%_
                                 (gx#syntax-e _%tl120543120574%_)))
                            (let ((_%hd120545120582%_
                                   (##car _%e120544120579%_))
                                  (_%tl120546120584%_
                                   (##cdr _%e120544120579%_)))
                              (let ((_%eid120587%_ _%hd120545120582%_))
                                (if (gx#stx-null? _%tl120546120584%_)
                                    (let ((_%rest120589%_ _%tl120540120566%_))
                                      (if (and (gx#identifier? _%id120577%_)
                                               (gx#identifier? _%eid120587%_))
                                          (let ((_%eid120591%_
                                                 (gx#stx-e _%eid120587%_)))
                                            (gx#core-bind-extern!__0
                                             _%id120577%_
                                             _%eid120591%_)
                                            (_%lp120531%_
                                             _%rest120589%_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _%id120577%_)
                                                         (cons _%eid120591%_
                                                               '()))
                                                   _%r120534%_)))
                                          (_%E120537120557%_)))
                                    (_%E120537120557%_)))))
                          (_%E120537120557%_)))))
                (_%E120537120557%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120537120557%_)))))
                                    (_%E120536120593%_)))
                                (_%E120508120517%_)))))
                      (_%E120508120517%_)))))
          (_%E120507120597%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx120451%_)
        (let* ((_%e120452120465%_ _%stx120451%_)
               (_%E120454120469%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120452120465%_)))
               (_%E120453120501%_
                (lambda ()
                  (if (gx#stx-pair? _%e120452120465%_)
                      (let ((_%e120455120473%_
                             (gx#syntax-e _%e120452120465%_)))
                        (let ((_%hd120456120476%_ (##car _%e120455120473%_))
                              (_%tl120457120478%_ (##cdr _%e120455120473%_)))
                          (if (gx#stx-pair? _%tl120457120478%_)
                              (let ((_%e120458120481%_
                                     (gx#syntax-e _%tl120457120478%_)))
                                (let ((_%hd120459120484%_
                                       (##car _%e120458120481%_))
                                      (_%tl120460120486%_
                                       (##cdr _%e120458120481%_)))
                                  (let ((_%hd120489%_ _%hd120459120484%_))
                                    (if (gx#stx-pair? _%tl120460120486%_)
                                        (let ((_%e120461120491%_
                                               (gx#syntax-e
                                                _%tl120460120486%_)))
                                          (let ((_%hd120462120494%_
                                                 (##car _%e120461120491%_))
                                                (_%tl120463120496%_
                                                 (##cdr _%e120461120491%_)))
                                            (let ((_%expr120499%_
                                                   _%hd120462120494%_))
                                              (if (gx#stx-null?
                                                   _%tl120463120496%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd120489%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd120489%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd120489%_)
                             (cons (gx#core-expand-expression _%expr120499%_)
                                   '())))
                 (gx#stx-source _%stx120451%_)))
              (_%E120454120469%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120454120469%_)))))
                                        (_%E120454120469%_)))))
                              (_%E120454120469%_))))
                      (_%E120454120469%_)))))
          (_%E120453120501%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx120395%_)
        (let* ((_%e120396120409%_ _%stx120395%_)
               (_%E120398120413%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120396120409%_)))
               (_%E120397120447%_
                (lambda ()
                  (if (gx#stx-pair? _%e120396120409%_)
                      (let ((_%e120399120417%_
                             (gx#syntax-e _%e120396120409%_)))
                        (let ((_%hd120400120420%_ (##car _%e120399120417%_))
                              (_%tl120401120422%_ (##cdr _%e120399120417%_)))
                          (if (gx#stx-pair? _%tl120401120422%_)
                              (let ((_%e120402120425%_
                                     (gx#syntax-e _%tl120401120422%_)))
                                (let ((_%hd120403120428%_
                                       (##car _%e120402120425%_))
                                      (_%tl120404120430%_
                                       (##cdr _%e120402120425%_)))
                                  (let ((_%id120433%_ _%hd120403120428%_))
                                    (if (gx#stx-pair? _%tl120404120430%_)
                                        (let ((_%e120405120435%_
                                               (gx#syntax-e
                                                _%tl120404120430%_)))
                                          (let ((_%hd120406120438%_
                                                 (##car _%e120405120435%_))
                                                (_%tl120407120440%_
                                                 (##cdr _%e120405120435%_)))
                                            (let ((_%binding-id120443%_
                                                   _%hd120406120438%_))
                                              (if (gx#stx-null?
                                                   _%tl120407120440%_)
                                                  (if (and (gx#identifier?
                                                            _%id120433%_)
                                                           (gx#identifier?
                                                            _%binding-id120443%_))
                                                      (let ((_%eid120445%_
                                                             (gx#stx-e
                                                              _%binding-id120443%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id120433%_
                                                         _%eid120445%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id120433%_)
                             (cons _%eid120445%_ '())))))
              (_%E120398120413%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120398120413%_)))))
                                        (_%E120398120413%_)))))
                              (_%E120398120413%_))))
                      (_%E120398120413%_)))))
          (_%E120397120447%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx120338%_)
        (let* ((_%e120339120352%_ _%stx120338%_)
               (_%E120341120356%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120339120352%_)))
               (_%E120340120391%_
                (lambda ()
                  (if (gx#stx-pair? _%e120339120352%_)
                      (let ((_%e120342120360%_
                             (gx#syntax-e _%e120339120352%_)))
                        (let ((_%hd120343120363%_ (##car _%e120342120360%_))
                              (_%tl120344120365%_ (##cdr _%e120342120360%_)))
                          (if (gx#stx-pair? _%tl120344120365%_)
                              (let ((_%e120345120368%_
                                     (gx#syntax-e _%tl120344120365%_)))
                                (let ((_%hd120346120371%_
                                       (##car _%e120345120368%_))
                                      (_%tl120347120373%_
                                       (##cdr _%e120345120368%_)))
                                  (let ((_%id120376%_ _%hd120346120371%_))
                                    (if (gx#stx-pair? _%tl120347120373%_)
                                        (let ((_%e120348120378%_
                                               (gx#syntax-e
                                                _%tl120347120373%_)))
                                          (let ((_%hd120349120381%_
                                                 (##car _%e120348120378%_))
                                                (_%tl120350120383%_
                                                 (##cdr _%e120348120378%_)))
                                            (let ((_%expr120386%_
                                                   _%hd120349120381%_))
                                              (if (gx#stx-null?
                                                   _%tl120350120383%_)
                                                  (if (gx#identifier?
                                                       _%id120376%_)
                                                      (let ((_g121297_
                                                             (gx#core-expand-expression+1
                                                              _%expr120386%_)))
                                                        (begin
                                                          (let ((_g121298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g121297_)
                             (##vector-length _g121297_)
                             1)))
                    (if (not (##fx= _g121298_ 2))
                        (error "Context expects 2 values" _g121298_)))
                  (let ((_%e-stx120388%_ (##vector-ref _g121297_ 0))
                        (_%e120389%_ (##vector-ref _g121297_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id120376%_ _%e120389%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id120376%_)
                                   (cons _%e-stx120388%_ '())))
                       (gx#stx-source _%stx120338%_))))))
              (_%E120341120356%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120341120356%_)))))
                                        (_%E120341120356%_)))))
                              (_%E120341120356%_))))
                      (_%E120341120356%_)))))
          (_%E120340120391%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx120282%_)
        (let* ((_%e120283120296%_ _%stx120282%_)
               (_%E120285120300%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120283120296%_)))
               (_%E120284120334%_
                (lambda ()
                  (if (gx#stx-pair? _%e120283120296%_)
                      (let ((_%e120286120304%_
                             (gx#syntax-e _%e120283120296%_)))
                        (let ((_%hd120287120307%_ (##car _%e120286120304%_))
                              (_%tl120288120309%_ (##cdr _%e120286120304%_)))
                          (if (gx#stx-pair? _%tl120288120309%_)
                              (let ((_%e120289120312%_
                                     (gx#syntax-e _%tl120288120309%_)))
                                (let ((_%hd120290120315%_
                                       (##car _%e120289120312%_))
                                      (_%tl120291120317%_
                                       (##cdr _%e120289120312%_)))
                                  (let ((_%id120320%_ _%hd120290120315%_))
                                    (if (gx#stx-pair? _%tl120291120317%_)
                                        (let ((_%e120292120322%_
                                               (gx#syntax-e
                                                _%tl120291120317%_)))
                                          (let ((_%hd120293120325%_
                                                 (##car _%e120292120322%_))
                                                (_%tl120294120327%_
                                                 (##cdr _%e120292120322%_)))
                                            (let ((_%alias-id120330%_
                                                   _%hd120293120325%_))
                                              (if (gx#stx-null?
                                                   _%tl120294120327%_)
                                                  (if (and (gx#identifier?
                                                            _%id120320%_)
                                                           (gx#identifier?
                                                            _%alias-id120330%_))
                                                      (let ((_%alias-id120332%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id120330%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id120320%_
                                                         _%alias-id120332%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id120320%_)
                             (cons _%alias-id120332%_ '())))))
              (_%E120285120300%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120285120300%_)))))
                                        (_%E120285120300%_)))))
                              (_%E120285120300%_))))
                      (_%E120285120300%_)))))
          (_%E120284120334%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx120225%_ _%wrap?120226%_)
        (let* ((_%e120227120237%_ _%stx120225%_)
               (_%E120229120241%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120227120237%_)))
               (_%E120228120268%_
                (lambda ()
                  (if (gx#stx-pair? _%e120227120237%_)
                      (let ((_%e120230120245%_
                             (gx#syntax-e _%e120227120237%_)))
                        (let ((_%hd120231120248%_ (##car _%e120230120245%_))
                              (_%tl120232120250%_ (##cdr _%e120230120245%_)))
                          (if (gx#stx-pair? _%tl120232120250%_)
                              (let ((_%e120233120253%_
                                     (gx#syntax-e _%tl120232120250%_)))
                                (let ((_%hd120234120256%_
                                       (##car _%e120233120253%_))
                                      (_%tl120235120258%_
                                       (##cdr _%e120233120253%_)))
                                  (let* ((_%hd120261%_ _%hd120234120256%_)
                                         (_%body120263%_ _%tl120235120258%_))
                                    (if (gx#core-bind-values? _%hd120261%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd120261%_)
                                           (let ((_%body120266%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd120261%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120225%_
                                                               _%body120263%_)
                                                              '()))))
                                             (if _%wrap?120226%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body120266%_)
                                                  (gx#stx-source
                                                   _%stx120225%_))
                                                 _%body120266%_)))
                                         gx#current-expander-context
                                         (let ((__obj121290
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121290)
                                           __obj121290))
                                        (_%E120229120241%_)))))
                              (_%E120229120241%_))))
                      (_%E120229120241%_)))))
          (_%E120228120268%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx120275%_)
        (let ((_%wrap?120277%_ '#t))
          (gx#core-expand-lambda%__% _%stx120275%_ _%wrap?120277%_))))
    (define gx#core-expand-lambda%
      (lambda _g121300_
        (let ((_g121299_ (##length _g121300_)))
          (cond ((##fx= _g121299_ 1)
                 (apply gx#core-expand-lambda%__0 _g121300_))
                ((##fx= _g121299_ 2)
                 (apply gx#core-expand-lambda%__% _g121300_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g121300_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx120189%_)
        (let* ((_%e120190120197%_ _%stx120189%_)
               (_%E120192120201%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120190120197%_)))
               (_%E120191120220%_
                (lambda ()
                  (if (gx#stx-pair? _%e120190120197%_)
                      (let ((_%e120193120205%_
                             (gx#syntax-e _%e120190120197%_)))
                        (let ((_%hd120194120208%_ (##car _%e120193120205%_))
                              (_%tl120195120210%_ (##cdr _%e120193120205%_)))
                          (let ((_%clauses120213%_ _%tl120195120210%_))
                            (if (gx#stx-list? _%clauses120213%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause120215%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause120215%_)
                                       (let ((_%$e120217%_
                                              (gx#stx-source
                                               _%clause120215%_)))
                                         (if _%$e120217%_
                                             _%$e120217%_
                                             (gx#stx-source _%stx120189%_))))
                                      '#f))
                                   _%clauses120213%_))
                                 (gx#stx-source _%stx120189%_))
                                (_%E120192120201%_)))))
                      (_%E120192120201%_)))))
          (_%E120191120220%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx120143%_)
        (let* ((_%e120144120154%_ _%stx120143%_)
               (_%E120146120158%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120144120154%_)))
               (_%E120145120185%_
                (lambda ()
                  (if (gx#stx-pair? _%e120144120154%_)
                      (let ((_%e120147120162%_
                             (gx#syntax-e _%e120144120154%_)))
                        (let ((_%hd120148120165%_ (##car _%e120147120162%_))
                              (_%tl120149120167%_ (##cdr _%e120147120162%_)))
                          (if (gx#stx-pair? _%tl120149120167%_)
                              (let ((_%e120150120170%_
                                     (gx#syntax-e _%tl120149120167%_)))
                                (let ((_%hd120151120173%_
                                       (##car _%e120150120170%_))
                                      (_%tl120152120175%_
                                       (##cdr _%e120150120170%_)))
                                  (let* ((_%hd120178%_ _%hd120151120173%_)
                                         (_%body120180%_ _%tl120152120175%_))
                                    (if (gx#core-expand-let-bind? _%hd120178%_)
                                        (let ((_%expressions120182%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd120178%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd120178%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd120178%_
                                                           _%expressions120182%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx120143%_
                         _%body120180%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx120143%_)))
                                           gx#current-expander-context
                                           (let ((__obj121291
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj121291)
                                             __obj121291)))
                                        (_%E120146120158%_)))))
                              (_%E120146120158%_))))
                      (_%E120146120158%_)))))
          (_%E120145120185%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx120088%_ _%form120089%_)
        (let* ((_%e120090120100%_ _%stx120088%_)
               (_%E120092120104%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120090120100%_)))
               (_%E120091120129%_
                (lambda ()
                  (if (gx#stx-pair? _%e120090120100%_)
                      (let ((_%e120093120108%_
                             (gx#syntax-e _%e120090120100%_)))
                        (let ((_%hd120094120111%_ (##car _%e120093120108%_))
                              (_%tl120095120113%_ (##cdr _%e120093120108%_)))
                          (if (gx#stx-pair? _%tl120095120113%_)
                              (let ((_%e120096120116%_
                                     (gx#syntax-e _%tl120095120113%_)))
                                (let ((_%hd120097120119%_
                                       (##car _%e120096120116%_))
                                      (_%tl120098120121%_
                                       (##cdr _%e120096120116%_)))
                                  (let* ((_%hd120124%_ _%hd120097120119%_)
                                         (_%body120126%_ _%tl120098120121%_))
                                    (if (gx#core-expand-let-bind? _%hd120124%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd120124%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form120089%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd120124%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd120124%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120088%_
                                                               _%body120126%_)
                                                              '())))
                                            (gx#stx-source _%stx120088%_)))
                                         gx#current-expander-context
                                         (let ((__obj121292
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121292)
                                           __obj121292))
                                        (_%E120092120104%_)))))
                              (_%E120092120104%_))))
                      (_%E120092120104%_)))))
          (_%E120091120129%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx120136%_)
        (let ((_%form120138%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx120136%_ _%form120138%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g121302_
        (let ((_g121301_ (##length _g121302_)))
          (cond ((##fx= _g121301_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g121302_))
                ((##fx= _g121301_ 2)
                 (apply gx#core-expand-letrec-values%__% _g121302_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g121302_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx120085%_)
        (gx#core-expand-letrec-values%__% _%stx120085%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx120042%_)
        (if (gx#stx-list? _%stx120042%_)
            (gx#stx-andmap
             (lambda (_%bind120044%_)
               (let* ((_%e120045120055%_ _%bind120044%_)
                      (_%E120047120059%_ (lambda () '#f))
                      (_%E120046120081%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120045120055%_)
                             (let ((_%e120048120063%_
                                    (gx#syntax-e _%e120045120055%_)))
                               (let ((_%hd120049120066%_
                                      (##car _%e120048120063%_))
                                     (_%tl120050120068%_
                                      (##cdr _%e120048120063%_)))
                                 (let ((_%hd120071%_ _%hd120049120066%_))
                                   (if (gx#stx-pair? _%tl120050120068%_)
                                       (let ((_%e120051120073%_
                                              (gx#syntax-e
                                               _%tl120050120068%_)))
                                         (let ((_%hd120052120076%_
                                                (##car _%e120051120073%_))
                                               (_%tl120053120078%_
                                                (##cdr _%e120051120073%_)))
                                           (if (gx#stx-null?
                                                _%tl120053120078%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd120071%_)
                                                   (_%E120047120059%_))
                                               (_%E120047120059%_))))
                                       (_%E120047120059%_)))))
                             (_%E120047120059%_)))))
                 (_%E120046120081%_)))
             _%stx120042%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind120001%_)
        (let* ((_%e120002120012%_ _%bind120001%_)
               (_%E120004120016%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120002120012%_)))
               (_%E120003120038%_
                (lambda ()
                  (if (gx#stx-pair? _%e120002120012%_)
                      (let ((_%e120005120020%_
                             (gx#syntax-e _%e120002120012%_)))
                        (let ((_%hd120006120023%_ (##car _%e120005120020%_))
                              (_%tl120007120025%_ (##cdr _%e120005120020%_)))
                          (if (gx#stx-pair? _%tl120007120025%_)
                              (let ((_%e120008120028%_
                                     (gx#syntax-e _%tl120007120025%_)))
                                (let ((_%hd120009120031%_
                                       (##car _%e120008120028%_))
                                      (_%tl120010120033%_
                                       (##cdr _%e120008120028%_)))
                                  (let ((_%expr120036%_ _%hd120009120031%_))
                                    (if (gx#stx-null? _%tl120010120033%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120036%_)
                                            (_%E120004120016%_))
                                        (_%E120004120016%_)))))
                              (_%E120004120016%_))))
                      (_%E120004120016%_)))))
          (_%E120003120038%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind119960%_)
        (let* ((_%e119961119971%_ _%bind119960%_)
               (_%E119963119975%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119961119971%_)))
               (_%E119962119997%_
                (lambda ()
                  (if (gx#stx-pair? _%e119961119971%_)
                      (let ((_%e119964119979%_
                             (gx#syntax-e _%e119961119971%_)))
                        (let ((_%hd119965119982%_ (##car _%e119964119979%_))
                              (_%tl119966119984%_ (##cdr _%e119964119979%_)))
                          (let ((_%hd119987%_ _%hd119965119982%_))
                            (if (gx#stx-pair? _%tl119966119984%_)
                                (let ((_%e119967119989%_
                                       (gx#syntax-e _%tl119966119984%_)))
                                  (let ((_%hd119968119992%_
                                         (##car _%e119967119989%_))
                                        (_%tl119969119994%_
                                         (##cdr _%e119967119989%_)))
                                    (if (gx#stx-null? _%tl119969119994%_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _%hd119987%_)
                                            (_%E119963119975%_))
                                        (_%E119963119975%_))))
                                (_%E119963119975%_)))))
                      (_%E119963119975%_)))))
          (_%E119962119997%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind119918%_ _%expr119919%_)
        (let* ((_%e119920119930%_ _%bind119918%_)
               (_%E119922119934%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119920119930%_)))
               (_%E119921119956%_
                (lambda ()
                  (if (gx#stx-pair? _%e119920119930%_)
                      (let ((_%e119923119938%_
                             (gx#syntax-e _%e119920119930%_)))
                        (let ((_%hd119924119941%_ (##car _%e119923119938%_))
                              (_%tl119925119943%_ (##cdr _%e119923119938%_)))
                          (let ((_%hd119946%_ _%hd119924119941%_))
                            (if (gx#stx-pair? _%tl119925119943%_)
                                (let ((_%e119926119948%_
                                       (gx#syntax-e _%tl119925119943%_)))
                                  (let ((_%hd119927119951%_
                                         (##car _%e119926119948%_))
                                        (_%tl119928119953%_
                                         (##cdr _%e119926119948%_)))
                                    (if (gx#stx-null? _%tl119928119953%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd119946%_)
                                                  (cons _%expr119919%_ '()))
                                            (_%E119922119934%_))
                                        (_%E119922119934%_))))
                                (_%E119922119934%_)))))
                      (_%E119922119934%_)))))
          (_%E119921119956%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx119872%_)
        (let* ((_%e119873119883%_ _%stx119872%_)
               (_%E119875119887%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119873119883%_)))
               (_%E119874119914%_
                (lambda ()
                  (if (gx#stx-pair? _%e119873119883%_)
                      (let ((_%e119876119891%_
                             (gx#syntax-e _%e119873119883%_)))
                        (let ((_%hd119877119894%_ (##car _%e119876119891%_))
                              (_%tl119878119896%_ (##cdr _%e119876119891%_)))
                          (if (gx#stx-pair? _%tl119878119896%_)
                              (let ((_%e119879119899%_
                                     (gx#syntax-e _%tl119878119896%_)))
                                (let ((_%hd119880119902%_
                                       (##car _%e119879119899%_))
                                      (_%tl119881119904%_
                                       (##cdr _%e119879119899%_)))
                                  (let* ((_%hd119907%_ _%hd119880119902%_)
                                         (_%body119909%_ _%tl119881119904%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd119907%_)
                                        (let ((_%expanders119911%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd119907%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd119907%_
                                              _%expanders119911%_)
                                             (gx#core-expand-local-block
                                              _%stx119872%_
                                              _%body119909%_))
                                           gx#current-expander-context
                                           (let ((__obj121293
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj121293)
                                             __obj121293)))
                                        (_%E119875119887%_)))))
                              (_%E119875119887%_))))
                      (_%E119875119887%_)))))
          (_%E119874119914%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx119821%_)
        (let* ((_%e119822119832%_ _%stx119821%_)
               (_%E119824119836%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119822119832%_)))
               (_%E119823119868%_
                (lambda ()
                  (if (gx#stx-pair? _%e119822119832%_)
                      (let ((_%e119825119840%_
                             (gx#syntax-e _%e119822119832%_)))
                        (let ((_%hd119826119843%_ (##car _%e119825119840%_))
                              (_%tl119827119845%_ (##cdr _%e119825119840%_)))
                          (if (gx#stx-pair? _%tl119827119845%_)
                              (let ((_%e119828119848%_
                                     (gx#syntax-e _%tl119827119845%_)))
                                (let ((_%hd119829119851%_
                                       (##car _%e119828119848%_))
                                      (_%tl119830119853%_
                                       (##cdr _%e119828119848%_)))
                                  (let* ((_%hd119856%_ _%hd119829119851%_)
                                         (_%body119858%_ _%tl119830119853%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd119856%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd119856%_
                                            (make-list
                                             (gx#stx-length _%hd119856%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g119860119863%_
                                                     _%g119861119865%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g119860119863%_
                                               _%g119861119865%_
                                               '#t))
                                            _%hd119856%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd119856%_))
                                           (gx#core-expand-local-block
                                            _%stx119821%_
                                            _%body119858%_))
                                         gx#current-expander-context
                                         (let ((__obj121294
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121294)
                                           __obj121294))
                                        (_%E119824119836%_)))))
                              (_%E119824119836%_))))
                      (_%E119824119836%_)))))
          (_%E119823119868%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx119778%_)
        (if (gx#stx-list? _%stx119778%_)
            (gx#stx-andmap
             (lambda (_%bind119780%_)
               (let* ((_%e119781119791%_ _%bind119780%_)
                      (_%E119783119795%_ (lambda () '#f))
                      (_%E119782119817%_
                       (lambda ()
                         (if (gx#stx-pair? _%e119781119791%_)
                             (let ((_%e119784119799%_
                                    (gx#syntax-e _%e119781119791%_)))
                               (let ((_%hd119785119802%_
                                      (##car _%e119784119799%_))
                                     (_%tl119786119804%_
                                      (##cdr _%e119784119799%_)))
                                 (let ((_%hd119807%_ _%hd119785119802%_))
                                   (if (gx#stx-pair? _%tl119786119804%_)
                                       (let ((_%e119787119809%_
                                              (gx#syntax-e
                                               _%tl119786119804%_)))
                                         (let ((_%hd119788119812%_
                                                (##car _%e119787119809%_))
                                               (_%tl119789119814%_
                                                (##cdr _%e119787119809%_)))
                                           (if (gx#stx-null?
                                                _%tl119789119814%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd119807%_)
                                                   (_%E119783119795%_))
                                               (_%E119783119795%_))))
                                       (_%E119783119795%_)))))
                             (_%E119783119795%_)))))
                 (_%E119782119817%_)))
             _%stx119778%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind119734%_)
        (let* ((_%e119735119745%_ _%bind119734%_)
               (_%E119737119749%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119735119745%_)))
               (_%E119736119774%_
                (lambda ()
                  (if (gx#stx-pair? _%e119735119745%_)
                      (let ((_%e119738119753%_
                             (gx#syntax-e _%e119735119745%_)))
                        (let ((_%hd119739119756%_ (##car _%e119738119753%_))
                              (_%tl119740119758%_ (##cdr _%e119738119753%_)))
                          (if (gx#stx-pair? _%tl119740119758%_)
                              (let ((_%e119741119761%_
                                     (gx#syntax-e _%tl119740119758%_)))
                                (let ((_%hd119742119764%_
                                       (##car _%e119741119761%_))
                                      (_%tl119743119766%_
                                       (##cdr _%e119741119761%_)))
                                  (let ((_%expr119769%_ _%hd119742119764%_))
                                    (if (gx#stx-null? _%tl119743119766%_)
                                        (if '#t
                                            (let ((_g121303_
                                                   (gx#core-expand-expression+1
                                                    _%expr119769%_)))
                                              (begin
                                                (let ((_g121304_
                                                       (if (##values?
                                                            _g121303_)
                                                           (##vector-length
                                                            _g121303_)
                                                           1)))
                                                  (if (not (##fx= _g121304_ 2))
                                                      (error "Context expects 2 values"
                                                             _g121304_)))
                                                (let ((_%_119771%_
                                                       (##vector-ref
                                                        _g121303_
                                                        0))
                                                      (_%e119772%_
                                                       (##vector-ref
                                                        _g121303_
                                                        1)))
                                                  _%e119772%_)))
                                            (_%E119737119749%_))
                                        (_%E119737119749%_)))))
                              (_%E119737119749%_))))
                      (_%E119737119749%_)))))
          (_%E119736119774%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind119679%_ _%e119680%_ _%rebind?119681%_)
        (let* ((_%e119682119692%_ _%bind119679%_)
               (_%E119684119696%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119682119692%_)))
               (_%E119683119718%_
                (lambda ()
                  (if (gx#stx-pair? _%e119682119692%_)
                      (let ((_%e119685119700%_
                             (gx#syntax-e _%e119682119692%_)))
                        (let ((_%hd119686119703%_ (##car _%e119685119700%_))
                              (_%tl119687119705%_ (##cdr _%e119685119700%_)))
                          (let ((_%id119708%_ _%hd119686119703%_))
                            (if (gx#stx-pair? _%tl119687119705%_)
                                (let ((_%e119688119710%_
                                       (gx#syntax-e _%tl119687119705%_)))
                                  (let ((_%hd119689119713%_
                                         (##car _%e119688119710%_))
                                        (_%tl119690119715%_
                                         (##cdr _%e119688119710%_)))
                                    (if (gx#stx-null? _%tl119690119715%_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _%id119708%_
                                             _%e119680%_
                                             _%rebind?119681%_)
                                            (_%E119684119696%_))
                                        (_%E119684119696%_))))
                                (_%E119684119696%_)))))
                      (_%E119684119696%_)))))
          (_%E119683119718%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind119725%_ _%e119726%_)
        (let ((_%rebind?119728%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind119725%_
           _%e119726%_
           _%rebind?119728%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g121306_
        (let ((_g121305_ (##length _g121306_)))
          (cond ((##fx= _g121305_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g121306_))
                ((##fx= _g121305_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g121306_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g121306_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx119637%_)
        (let* ((_%e119638119648%_ _%stx119637%_)
               (_%E119640119652%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119638119648%_)))
               (_%E119639119674%_
                (lambda ()
                  (if (gx#stx-pair? _%e119638119648%_)
                      (let ((_%e119641119656%_
                             (gx#syntax-e _%e119638119648%_)))
                        (let ((_%hd119642119659%_ (##car _%e119641119656%_))
                              (_%tl119643119661%_ (##cdr _%e119641119656%_)))
                          (if (gx#stx-pair? _%tl119643119661%_)
                              (let ((_%e119644119664%_
                                     (gx#syntax-e _%tl119643119661%_)))
                                (let ((_%hd119645119667%_
                                       (##car _%e119644119664%_))
                                      (_%tl119646119669%_
                                       (##cdr _%e119644119664%_)))
                                  (let ((_%expr119672%_ _%hd119645119667%_))
                                    (if (gx#stx-null? _%tl119646119669%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr119672%_)
                                            (_%E119640119652%_))
                                        (_%E119640119652%_)))))
                              (_%E119640119652%_))))
                      (_%E119640119652%_)))))
          (_%E119639119674%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx119596%_)
        (let* ((_%e119597119607%_ _%stx119596%_)
               (_%E119599119611%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119597119607%_)))
               (_%E119598119633%_
                (lambda ()
                  (if (gx#stx-pair? _%e119597119607%_)
                      (let ((_%e119600119615%_
                             (gx#syntax-e _%e119597119607%_)))
                        (let ((_%hd119601119618%_ (##car _%e119600119615%_))
                              (_%tl119602119620%_ (##cdr _%e119600119615%_)))
                          (if (gx#stx-pair? _%tl119602119620%_)
                              (let ((_%e119603119623%_
                                     (gx#syntax-e _%tl119602119620%_)))
                                (let ((_%hd119604119626%_
                                       (##car _%e119603119623%_))
                                      (_%tl119605119628%_
                                       (##cdr _%e119603119623%_)))
                                  (let ((_%e119631%_ _%hd119604119626%_))
                                    (if (gx#stx-null? _%tl119605119628%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e119631%_)
                                                         '()))
                                             (gx#stx-source _%stx119596%_))
                                            (_%E119599119611%_))
                                        (_%E119599119611%_)))))
                              (_%E119599119611%_))))
                      (_%E119599119611%_)))))
          (_%E119598119633%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx119555%_)
        (let* ((_%e119556119566%_ _%stx119555%_)
               (_%E119558119570%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119556119566%_)))
               (_%E119557119592%_
                (lambda ()
                  (if (gx#stx-pair? _%e119556119566%_)
                      (let ((_%e119559119574%_
                             (gx#syntax-e _%e119556119566%_)))
                        (let ((_%hd119560119577%_ (##car _%e119559119574%_))
                              (_%tl119561119579%_ (##cdr _%e119559119574%_)))
                          (if (gx#stx-pair? _%tl119561119579%_)
                              (let ((_%e119562119582%_
                                     (gx#syntax-e _%tl119561119579%_)))
                                (let ((_%hd119563119585%_
                                       (##car _%e119562119582%_))
                                      (_%tl119564119587%_
                                       (##cdr _%e119562119582%_)))
                                  (let ((_%e119590%_ _%hd119563119585%_))
                                    (if (gx#stx-null? _%tl119564119587%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _%e119590%_)
                                                         '()))
                                             (gx#stx-source _%stx119555%_))
                                            (_%E119558119570%_))
                                        (_%E119558119570%_)))))
                              (_%E119558119570%_))))
                      (_%E119558119570%_)))))
          (_%E119557119592%_))))
    (define gx#core-expand-call%
      (lambda (_%stx119512%_)
        (let* ((_%e119513119523%_ _%stx119512%_)
               (_%E119515119527%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119513119523%_)))
               (_%E119514119551%_
                (lambda ()
                  (if (gx#stx-pair? _%e119513119523%_)
                      (let ((_%e119516119531%_
                             (gx#syntax-e _%e119513119523%_)))
                        (let ((_%hd119517119534%_ (##car _%e119516119531%_))
                              (_%tl119518119536%_ (##cdr _%e119516119531%_)))
                          (if (gx#stx-pair? _%tl119518119536%_)
                              (let ((_%e119519119539%_
                                     (gx#syntax-e _%tl119518119536%_)))
                                (let ((_%hd119520119542%_
                                       (##car _%e119519119539%_))
                                      (_%tl119521119544%_
                                       (##cdr _%e119519119539%_)))
                                  (let* ((_%rator119547%_ _%hd119520119542%_)
                                         (_%args119549%_ _%tl119521119544%_))
                                    (if (gx#stx-list? _%args119549%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator119547%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args119549%_))
                                         (gx#stx-source _%stx119512%_))
                                        (_%E119515119527%_)))))
                              (_%E119515119527%_))))
                      (_%E119515119527%_)))))
          (_%E119514119551%_))))
    (define gx#core-expand-if%
      (lambda (_%stx119445%_)
        (let* ((_%e119446119462%_ _%stx119445%_)
               (_%E119448119466%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119446119462%_)))
               (_%E119447119508%_
                (lambda ()
                  (if (gx#stx-pair? _%e119446119462%_)
                      (let ((_%e119449119470%_
                             (gx#syntax-e _%e119446119462%_)))
                        (let ((_%hd119450119473%_ (##car _%e119449119470%_))
                              (_%tl119451119475%_ (##cdr _%e119449119470%_)))
                          (if (gx#stx-pair? _%tl119451119475%_)
                              (let ((_%e119452119478%_
                                     (gx#syntax-e _%tl119451119475%_)))
                                (let ((_%hd119453119481%_
                                       (##car _%e119452119478%_))
                                      (_%tl119454119483%_
                                       (##cdr _%e119452119478%_)))
                                  (let ((_%test119486%_ _%hd119453119481%_))
                                    (if (gx#stx-pair? _%tl119454119483%_)
                                        (let ((_%e119455119488%_
                                               (gx#syntax-e
                                                _%tl119454119483%_)))
                                          (let ((_%hd119456119491%_
                                                 (##car _%e119455119488%_))
                                                (_%tl119457119493%_
                                                 (##cdr _%e119455119488%_)))
                                            (let ((_%K119496%_
                                                   _%hd119456119491%_))
                                              (if (gx#stx-pair?
                                                   _%tl119457119493%_)
                                                  (let ((_%e119458119498%_
                                                         (gx#syntax-e
                                                          _%tl119457119493%_)))
                                                    (let ((_%hd119459119501%_
                                                           (##car _%e119458119498%_))
                                                          (_%tl119460119503%_
                                                           (##cdr _%e119458119498%_)))
                                                      (let ((_%E119506%_
                                                             _%hd119459119501%_))
                                                        (if (gx#stx-null?
                                                             _%tl119460119503%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _%test119486%_)
                                     (cons (gx#core-expand-expression
                                            _%K119496%_)
                                           (cons (gx#core-expand-expression
                                                  _%E119506%_)
                                                 '()))))
                         (gx#stx-source _%stx119445%_))
                        (_%E119448119466%_))
                    (_%E119448119466%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119448119466%_)))))
                                        (_%E119448119466%_)))))
                              (_%E119448119466%_))))
                      (_%E119448119466%_)))))
          (_%E119447119508%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx119404%_)
        (let* ((_%e119405119415%_ _%stx119404%_)
               (_%E119407119419%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119405119415%_)))
               (_%E119406119441%_
                (lambda ()
                  (if (gx#stx-pair? _%e119405119415%_)
                      (let ((_%e119408119423%_
                             (gx#syntax-e _%e119405119415%_)))
                        (let ((_%hd119409119426%_ (##car _%e119408119423%_))
                              (_%tl119410119428%_ (##cdr _%e119408119423%_)))
                          (if (gx#stx-pair? _%tl119410119428%_)
                              (let ((_%e119411119431%_
                                     (gx#syntax-e _%tl119410119428%_)))
                                (let ((_%hd119412119434%_
                                       (##car _%e119411119431%_))
                                      (_%tl119413119436%_
                                       (##cdr _%e119411119431%_)))
                                  (let ((_%id119439%_ _%hd119412119434%_))
                                    (if (gx#stx-null? _%tl119413119436%_)
                                        (if (gx#identifier? _%id119439%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id119439%_
                                                          _%stx119404%_)
                                                         '()))
                                             (gx#stx-source _%stx119404%_))
                                            (_%E119407119419%_))
                                        (_%E119407119419%_)))))
                              (_%E119407119419%_))))
                      (_%E119407119419%_)))))
          (_%E119406119441%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx119350%_)
        (let* ((_%e119351119364%_ _%stx119350%_)
               (_%E119353119368%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119351119364%_)))
               (_%E119352119400%_
                (lambda ()
                  (if (gx#stx-pair? _%e119351119364%_)
                      (let ((_%e119354119372%_
                             (gx#syntax-e _%e119351119364%_)))
                        (let ((_%hd119355119375%_ (##car _%e119354119372%_))
                              (_%tl119356119377%_ (##cdr _%e119354119372%_)))
                          (if (gx#stx-pair? _%tl119356119377%_)
                              (let ((_%e119357119380%_
                                     (gx#syntax-e _%tl119356119377%_)))
                                (let ((_%hd119358119383%_
                                       (##car _%e119357119380%_))
                                      (_%tl119359119385%_
                                       (##cdr _%e119357119380%_)))
                                  (let ((_%id119388%_ _%hd119358119383%_))
                                    (if (gx#stx-pair? _%tl119359119385%_)
                                        (let ((_%e119360119390%_
                                               (gx#syntax-e
                                                _%tl119359119385%_)))
                                          (let ((_%hd119361119393%_
                                                 (##car _%e119360119390%_))
                                                (_%tl119362119395%_
                                                 (##cdr _%e119360119390%_)))
                                            (let ((_%expr119398%_
                                                   _%hd119361119393%_))
                                              (if (gx#stx-null?
                                                   _%tl119362119395%_)
                                                  (if (gx#identifier?
                                                       _%id119388%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id119388%_
                            _%stx119350%_)
                           (cons (gx#core-expand-expression _%expr119398%_)
                                 '())))
               (gx#stx-source _%stx119350%_))
              (_%E119353119368%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119353119368%_)))))
                                        (_%E119353119368%_)))))
                              (_%E119353119368%_))))
                      (_%E119353119368%_)))))
          (_%E119352119400%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx119195%_)
        (letrec ((_%generate119197%_
                  (lambda (_%body119227%_)
                    (let _%lp119229%_ ((_%rest119231%_ _%body119227%_)
                                       (_%ns119232%_
                                        (gx#core-context-namespace__0))
                                       (_%r119233%_ '()))
                      (let* ((_%e119234119249%_ _%rest119231%_)
                             (_%E119247119253%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e119234119249%_)))
                             (_%E119243119257%_
                              (lambda ()
                                (if (gx#stx-null? _%e119234119249%_)
                                    (if '#t
                                        (reverse _%r119233%_)
                                        (_%E119247119253%_))
                                    (_%E119247119253%_))))
                             (_%E119236119314%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119234119249%_)
                                    (let ((_%e119244119261%_
                                           (gx#syntax-e _%e119234119249%_)))
                                      (let ((_%hd119245119264%_
                                             (##car _%e119244119261%_))
                                            (_%tl119246119266%_
                                             (##cdr _%e119244119261%_)))
                                        (let* ((_%hd119269%_
                                                _%hd119245119264%_)
                                               (_%rest119271%_
                                                _%tl119246119266%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd119269%_)
                                                  (_%lp119229%_
                                                   _%rest119271%_
                                                   _%ns119232%_
                                                   (cons (cons _%hd119269%_
                                                               (cons (if _%ns119232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd119269%_
                                  _%ns119232%_
                                  '"#"
                                  _%hd119269%_)
                                 _%hd119269%_)
                             '()))
                 _%r119233%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%e119272119282%_
                                                          _%hd119269%_)
                                                         (_%E119274119286%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e119272119282%_)))
                                                         (_%E119273119310%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e119272119282%_)
                        (let ((_%e119275119290%_
                               (gx#syntax-e _%e119272119282%_)))
                          (let ((_%hd119276119293%_ (##car _%e119275119290%_))
                                (_%tl119277119295%_ (##cdr _%e119275119290%_)))
                            (let ((_%id119298%_ _%hd119276119293%_))
                              (if (gx#stx-pair? _%tl119277119295%_)
                                  (let ((_%e119278119300%_
                                         (gx#syntax-e _%tl119277119295%_)))
                                    (let ((_%hd119279119303%_
                                           (##car _%e119278119300%_))
                                          (_%tl119280119305%_
                                           (##cdr _%e119278119300%_)))
                                      (let ((_%eid119308%_ _%hd119279119303%_))
                                        (if (gx#stx-null? _%tl119280119305%_)
                                            (if (and (gx#identifier?
                                                      _%id119298%_)
                                                     (gx#identifier?
                                                      _%eid119308%_))
                                                (_%lp119229%_
                                                 _%rest119271%_
                                                 _%ns119232%_
                                                 (cons (cons _%id119298%_
                                                             (cons _%eid119308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r119233%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E119274119286%_))
                                            (_%E119274119286%_)))))
                                  (_%E119274119286%_)))))
                        (_%E119274119286%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119273119310%_)))
                                              (_%E119243119257%_)))))
                                    (_%E119243119257%_))))
                             (_%E119235119346%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119234119249%_)
                                    (let ((_%e119237119318%_
                                           (gx#syntax-e _%e119234119249%_)))
                                      (let ((_%hd119238119321%_
                                             (##car _%e119237119318%_))
                                            (_%tl119239119323%_
                                             (##cdr _%e119237119318%_)))
                                        (if (eq? (gx#stx-e _%hd119238119321%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl119239119323%_)
                                                (let ((_%e119240119326%_
                                                       (gx#syntax-e
                                                        _%tl119239119323%_)))
                                                  (let ((_%hd119241119329%_
                                                         (##car _%e119240119326%_))
                                                        (_%tl119242119331%_
                                                         (##cdr _%e119240119326%_)))
                                                    (let* ((_%ns119334%_
                                                            _%hd119241119329%_)
                                                           (_%rest119336%_
                                                            _%tl119242119331%_))
                                                      (if '#t
                                                          (let ((_%ns119344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns119334%_)
                             (symbol->string (gx#stx-e _%ns119334%_))
                             (if (or (gx#stx-string? _%ns119334%_)
                                     (gx#stx-false? _%ns119334%_))
                                 (gx#stx-e _%ns119334%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _%stx119195%_
                                  _%ns119334%_)))))
                    (_%lp119229%_ _%rest119336%_ _%ns119344%_ _%r119233%_))
                  (_%E119236119314%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E119236119314%_))
                                            (_%E119236119314%_))))
                                    (_%E119236119314%_)))))
                        (_%E119235119346%_))))))
          (let* ((_%e119198119205%_ _%stx119195%_)
                 (_%E119200119209%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119198119205%_)))
                 (_%E119199119223%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119198119205%_)
                        (let ((_%e119201119213%_
                               (gx#syntax-e _%e119198119205%_)))
                          (let ((_%hd119202119216%_ (##car _%e119201119213%_))
                                (_%tl119203119218%_ (##cdr _%e119201119213%_)))
                            (let ((_%body119221%_ _%tl119203119218%_))
                              (if (gx#stx-list? _%body119221%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate119197%_ _%body119221%_))
                                  (_%E119200119209%_)))))
                        (_%E119200119209%_)))))
            (_%E119199119223%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx119141%_)
        (let* ((_%e119142119155%_ _%stx119141%_)
               (_%E119144119159%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119142119155%_)))
               (_%E119143119191%_
                (lambda ()
                  (if (gx#stx-pair? _%e119142119155%_)
                      (let ((_%e119145119163%_
                             (gx#syntax-e _%e119142119155%_)))
                        (let ((_%hd119146119166%_ (##car _%e119145119163%_))
                              (_%tl119147119168%_ (##cdr _%e119145119163%_)))
                          (if (gx#stx-pair? _%tl119147119168%_)
                              (let ((_%e119148119171%_
                                     (gx#syntax-e _%tl119147119168%_)))
                                (let ((_%hd119149119174%_
                                       (##car _%e119148119171%_))
                                      (_%tl119150119176%_
                                       (##cdr _%e119148119171%_)))
                                  (let ((_%hd119179%_ _%hd119149119174%_))
                                    (if (gx#stx-pair? _%tl119150119176%_)
                                        (let ((_%e119151119181%_
                                               (gx#syntax-e
                                                _%tl119150119176%_)))
                                          (let ((_%hd119152119184%_
                                                 (##car _%e119151119181%_))
                                                (_%tl119153119186%_
                                                 (##cdr _%e119151119181%_)))
                                            (let ((_%expr119189%_
                                                   _%hd119152119184%_))
                                              (if (gx#stx-null?
                                                   _%tl119153119186%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd119179%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd119179%_)
                          (cons _%expr119189%_ '())))
              (_%E119144119159%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119144119159%_)))))
                                        (_%E119144119159%_)))))
                              (_%E119144119159%_))))
                      (_%E119144119159%_)))))
          (_%E119143119191%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx119087%_)
        (let* ((_%e119088119101%_ _%stx119087%_)
               (_%E119090119105%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119088119101%_)))
               (_%E119089119137%_
                (lambda ()
                  (if (gx#stx-pair? _%e119088119101%_)
                      (let ((_%e119091119109%_
                             (gx#syntax-e _%e119088119101%_)))
                        (let ((_%hd119092119112%_ (##car _%e119091119109%_))
                              (_%tl119093119114%_ (##cdr _%e119091119109%_)))
                          (if (gx#stx-pair? _%tl119093119114%_)
                              (let ((_%e119094119117%_
                                     (gx#syntax-e _%tl119093119114%_)))
                                (let ((_%hd119095119120%_
                                       (##car _%e119094119117%_))
                                      (_%tl119096119122%_
                                       (##cdr _%e119094119117%_)))
                                  (let ((_%hd119125%_ _%hd119095119120%_))
                                    (if (gx#stx-pair? _%tl119096119122%_)
                                        (let ((_%e119097119127%_
                                               (gx#syntax-e
                                                _%tl119096119122%_)))
                                          (let ((_%hd119098119130%_
                                                 (##car _%e119097119127%_))
                                                (_%tl119099119132%_
                                                 (##cdr _%e119097119127%_)))
                                            (let ((_%expr119135%_
                                                   _%hd119098119130%_))
                                              (if (gx#stx-null?
                                                   _%tl119099119132%_)
                                                  (if (gx#identifier?
                                                       _%hd119125%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd119125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr119135%_ '())))
              (_%E119090119105%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119090119105%_)))))
                                        (_%E119090119105%_)))))
                              (_%E119090119105%_))))
                      (_%E119090119105%_)))))
          (_%E119089119137%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx119033%_)
        (let* ((_%e119034119047%_ _%stx119033%_)
               (_%E119036119051%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119034119047%_)))
               (_%E119035119083%_
                (lambda ()
                  (if (gx#stx-pair? _%e119034119047%_)
                      (let ((_%e119037119055%_
                             (gx#syntax-e _%e119034119047%_)))
                        (let ((_%hd119038119058%_ (##car _%e119037119055%_))
                              (_%tl119039119060%_ (##cdr _%e119037119055%_)))
                          (if (gx#stx-pair? _%tl119039119060%_)
                              (let ((_%e119040119063%_
                                     (gx#syntax-e _%tl119039119060%_)))
                                (let ((_%hd119041119066%_
                                       (##car _%e119040119063%_))
                                      (_%tl119042119068%_
                                       (##cdr _%e119040119063%_)))
                                  (let ((_%id119071%_ _%hd119041119066%_))
                                    (if (gx#stx-pair? _%tl119042119068%_)
                                        (let ((_%e119043119073%_
                                               (gx#syntax-e
                                                _%tl119042119068%_)))
                                          (let ((_%hd119044119076%_
                                                 (##car _%e119043119073%_))
                                                (_%tl119045119078%_
                                                 (##cdr _%e119043119073%_)))
                                            (let ((_%alias-id119081%_
                                                   _%hd119044119076%_))
                                              (if (gx#stx-null?
                                                   _%tl119045119078%_)
                                                  (if (and (gx#identifier?
                                                            _%id119071%_)
                                                           (gx#identifier?
                                                            _%alias-id119081%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id119071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id119081%_ '())))
              (_%E119036119051%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119036119051%_)))))
                                        (_%E119036119051%_)))))
                              (_%E119036119051%_))))
                      (_%E119036119051%_)))))
          (_%E119035119083%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx118990%_)
        (let* ((_%e118991119001%_ _%stx118990%_)
               (_%E118993119005%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e118991119001%_)))
               (_%E118992119029%_
                (lambda ()
                  (if (gx#stx-pair? _%e118991119001%_)
                      (let ((_%e118994119009%_
                             (gx#syntax-e _%e118991119001%_)))
                        (let ((_%hd118995119012%_ (##car _%e118994119009%_))
                              (_%tl118996119014%_ (##cdr _%e118994119009%_)))
                          (if (gx#stx-pair? _%tl118996119014%_)
                              (let ((_%e118997119017%_
                                     (gx#syntax-e _%tl118996119014%_)))
                                (let ((_%hd118998119020%_
                                       (##car _%e118997119017%_))
                                      (_%tl118999119022%_
                                       (##cdr _%e118997119017%_)))
                                  (let* ((_%hd119025%_ _%hd118998119020%_)
                                         (_%body119027%_ _%tl118999119022%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd119025%_)
                                             (gx#stx-list? _%body119027%_)
                                             (not (gx#stx-null?
                                                   _%body119027%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd119025%_)
                                         _%body119027%_)
                                        (_%E118993119005%_)))))
                              (_%E118993119005%_))))
                      (_%E118993119005%_)))))
          (_%E118992119029%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx118926%_)
        (letrec ((_%generate118928%_
                  (lambda (_%clause118958%_)
                    (let* ((_%e118959118966%_ _%clause118958%_)
                           (_%E118961118970%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx118926%_
                               _%clause118958%_)))
                           (_%E118960118986%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118959118966%_)
                                  (let ((_%e118962118974%_
                                         (gx#syntax-e _%e118959118966%_)))
                                    (let ((_%hd118963118977%_
                                           (##car _%e118962118974%_))
                                          (_%tl118964118979%_
                                           (##cdr _%e118962118974%_)))
                                      (let* ((_%hd118982%_ _%hd118963118977%_)
                                             (_%body118984%_
                                              _%tl118964118979%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd118982%_)
                                                 (gx#stx-list? _%body118984%_)
                                                 (not (gx#stx-null?
                                                       _%body118984%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd118982%_)
                                                   _%body118984%_)
                                             (gx#stx-source _%clause118958%_))
                                            (_%E118961118970%_)))))
                                  (_%E118961118970%_)))))
                      (_%E118960118986%_)))))
          (let* ((_%e118929118936%_ _%stx118926%_)
                 (_%E118931118940%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e118929118936%_)))
                 (_%E118930118954%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118929118936%_)
                        (let ((_%e118932118944%_
                               (gx#syntax-e _%e118929118936%_)))
                          (let ((_%hd118933118947%_ (##car _%e118932118944%_))
                                (_%tl118934118949%_ (##cdr _%e118932118944%_)))
                            (let ((_%clauses118952%_ _%tl118934118949%_))
                              (if (gx#stx-list? _%clauses118952%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate118928%_
                                    _%clauses118952%_))
                                  (_%E118931118940%_)))))
                        (_%E118931118940%_)))))
            (_%E118930118954%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx118827%_ _%form118828%_)
        (letrec ((_%generate118830%_
                  (lambda (_%bind118873%_)
                    (let* ((_%e118874118884%_ _%bind118873%_)
                           (_%E118876118888%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx118827%_
                               _%bind118873%_)))
                           (_%E118875118912%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118874118884%_)
                                  (let ((_%e118877118892%_
                                         (gx#syntax-e _%e118874118884%_)))
                                    (let ((_%hd118878118895%_
                                           (##car _%e118877118892%_))
                                          (_%tl118879118897%_
                                           (##cdr _%e118877118892%_)))
                                      (let ((_%ids118900%_ _%hd118878118895%_))
                                        (if (gx#stx-pair? _%tl118879118897%_)
                                            (let ((_%e118880118902%_
                                                   (gx#syntax-e
                                                    _%tl118879118897%_)))
                                              (let ((_%hd118881118905%_
                                                     (##car _%e118880118902%_))
                                                    (_%tl118882118907%_
                                                     (##cdr _%e118880118902%_)))
                                                (let ((_%expr118910%_
                                                       _%hd118881118905%_))
                                                  (if (gx#stx-null?
                                                       _%tl118882118907%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids118900%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids118900%_)
                        (cons _%expr118910%_ '()))
                  (_%E118876118888%_))
              (_%E118876118888%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E118876118888%_)))))
                                  (_%E118876118888%_)))))
                      (_%E118875118912%_)))))
          (let* ((_%e118831118841%_ _%stx118827%_)
                 (_%E118833118845%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e118831118841%_)))
                 (_%E118832118869%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118831118841%_)
                        (let ((_%e118834118849%_
                               (gx#syntax-e _%e118831118841%_)))
                          (let ((_%hd118835118852%_ (##car _%e118834118849%_))
                                (_%tl118836118854%_ (##cdr _%e118834118849%_)))
                            (if (gx#stx-pair? _%tl118836118854%_)
                                (let ((_%e118837118857%_
                                       (gx#syntax-e _%tl118836118854%_)))
                                  (let ((_%hd118838118860%_
                                         (##car _%e118837118857%_))
                                        (_%tl118839118862%_
                                         (##cdr _%e118837118857%_)))
                                    (let* ((_%hd118865%_ _%hd118838118860%_)
                                           (_%body118867%_ _%tl118839118862%_))
                                      (if (and (gx#stx-list? _%hd118865%_)
                                               (gx#stx-list? _%body118867%_)
                                               (not (gx#stx-null?
                                                     _%body118867%_)))
                                          (gx#core-cons*
                                           _%form118828%_
                                           (gx#stx-map1
                                            _%generate118830%_
                                            _%hd118865%_)
                                           _%body118867%_)
                                          (_%E118833118845%_)))))
                                (_%E118833118845%_))))
                        (_%E118833118845%_)))))
            (_%E118832118869%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx118919%_)
        (let ((_%form118921%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx118919%_ _%form118921%_))))
    (define gx#macro-expand-let-values
      (lambda _g121308_
        (let ((_g121307_ (##length _g121308_)))
          (cond ((##fx= _g121307_ 1)
                 (apply gx#macro-expand-let-values__0 _g121308_))
                ((##fx= _g121307_ 2)
                 (apply gx#macro-expand-let-values__% _g121308_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g121308_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx118824%_)
        (gx#macro-expand-let-values__% _%stx118824%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx118822%_)
        (gx#macro-expand-let-values__% _%stx118822%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx118713%_)
        (let* ((_%e118714118740%_ _%stx118713%_)
               (_%E118726118744%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e118714118740%_)))
               (_%E118716118786%_
                (lambda ()
                  (if (gx#stx-pair? _%e118714118740%_)
                      (let ((_%e118727118748%_
                             (gx#syntax-e _%e118714118740%_)))
                        (let ((_%hd118728118751%_ (##car _%e118727118748%_))
                              (_%tl118729118753%_ (##cdr _%e118727118748%_)))
                          (if (gx#stx-pair? _%tl118729118753%_)
                              (let ((_%e118730118756%_
                                     (gx#syntax-e _%tl118729118753%_)))
                                (let ((_%hd118731118759%_
                                       (##car _%e118730118756%_))
                                      (_%tl118732118761%_
                                       (##cdr _%e118730118756%_)))
                                  (let ((_%test118764%_ _%hd118731118759%_))
                                    (if (gx#stx-pair? _%tl118732118761%_)
                                        (let ((_%e118733118766%_
                                               (gx#syntax-e
                                                _%tl118732118761%_)))
                                          (let ((_%hd118734118769%_
                                                 (##car _%e118733118766%_))
                                                (_%tl118735118771%_
                                                 (##cdr _%e118733118766%_)))
                                            (let ((_%K118774%_
                                                   _%hd118734118769%_))
                                              (if (gx#stx-pair?
                                                   _%tl118735118771%_)
                                                  (let ((_%e118736118776%_
                                                         (gx#syntax-e
                                                          _%tl118735118771%_)))
                                                    (let ((_%hd118737118779%_
                                                           (##car _%e118736118776%_))
                                                          (_%tl118738118781%_
                                                           (##cdr _%e118736118776%_)))
                                                      (let ((_%E118784%_
                                                             _%hd118737118779%_))
                                                        (if (gx#stx-null?
                                                             _%tl118738118781%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test118764%_
                         _%K118774%_
                         _%E118784%_)
                        (_%E118726118744%_))
                    (_%E118726118744%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E118726118744%_)))))
                                        (_%E118726118744%_)))))
                              (_%E118726118744%_))))
                      (_%E118726118744%_))))
               (_%E118715118818%_
                (lambda ()
                  (if (gx#stx-pair? _%e118714118740%_)
                      (let ((_%e118717118790%_
                             (gx#syntax-e _%e118714118740%_)))
                        (let ((_%hd118718118793%_ (##car _%e118717118790%_))
                              (_%tl118719118795%_ (##cdr _%e118717118790%_)))
                          (if (gx#stx-pair? _%tl118719118795%_)
                              (let ((_%e118720118798%_
                                     (gx#syntax-e _%tl118719118795%_)))
                                (let ((_%hd118721118801%_
                                       (##car _%e118720118798%_))
                                      (_%tl118722118803%_
                                       (##cdr _%e118720118798%_)))
                                  (let ((_%test118806%_ _%hd118721118801%_))
                                    (if (gx#stx-pair? _%tl118722118803%_)
                                        (let ((_%e118723118808%_
                                               (gx#syntax-e
                                                _%tl118722118803%_)))
                                          (let ((_%hd118724118811%_
                                                 (##car _%e118723118808%_))
                                                (_%tl118725118813%_
                                                 (##cdr _%e118723118808%_)))
                                            (let ((_%K118816%_
                                                   _%hd118724118811%_))
                                              (if (gx#stx-null?
                                                   _%tl118725118813%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test118806%_
                                                       _%K118816%_
                                                       '#!void)
                                                      (_%E118716118786%_))
                                                  (_%E118716118786%_)))))
                                        (_%E118716118786%_)))))
                              (_%E118716118786%_))))
                      (_%E118716118786%_)))))
          (_%E118715118818%_))))
    (define gx#free-identifier=?
      (lambda (_%xid118698%_ _%yid118699%_)
        (let ((_%xe118701%_ (gx#resolve-identifier__0 _%xid118698%_))
              (_%ye118702%_ (gx#resolve-identifier__0 _%yid118699%_)))
          (if (and _%xe118701%_ _%ye118702%_)
              (let ((_%$e118705%_ (eq? _%xe118701%_ _%ye118702%_)))
                (if _%$e118705%_
                    _%$e118705%_
                    (if (##structure-instance-of? _%xe118701%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye118702%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe118701%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye118702%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe118701%_ _%ye118702%_)
                  '#f
                  (gx#stx-eq? _%xid118698%_ _%yid118699%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid118679%_ _%yid118680%_)
        (letrec ((_%context118682%_
                  (lambda (_%e118696%_)
                    (if (##structure-direct-instance-of?
                         _%e118696%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e118696%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks118683%_
                  (lambda (_%e118691%_)
                    (if (symbol? _%e118691%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e118691%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e118691%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e118691%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap118684%_
                  (lambda (_%e118689%_)
                    (if (symbol? _%e118689%_)
                        _%e118689%_
                        (gx#syntax-local-unwrap _%e118689%_)))))
          (let ((_%x118686%_ (_%unwrap118684%_ _%xid118679%_))
                (_%y118687%_ (_%unwrap118684%_ _%yid118680%_)))
            (if (gx#stx-eq? _%x118686%_ _%y118687%_)
                (if (eq? (_%context118682%_ _%x118686%_)
                         (_%context118682%_ _%y118687%_))
                    (equal? (_%marks118683%_ _%x118686%_)
                            (_%marks118683%_ _%y118687%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx118677%_)
        (if (gx#identifier? _%stx118677%_)
            (gx#core-identifier=? _%stx118677%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx118675%_)
        (if (gx#identifier? _%stx118675%_)
            (gx#core-identifier=? _%stx118675%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx118618%_ _%where118619%_)
        (let _%lp118621%_ ((_%rest118623%_ (gx#syntax->list _%stx118618%_)))
          (let* ((_%rest118624118632%_ _%rest118623%_)
                 (_%else118626118640%_ (lambda () '#t))
                 (_%K118628118653%_
                  (lambda (_%rest118643%_ _%hd118644%_)
                    (if (not (gx#identifier? _%hd118644%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where118619%_
                         _%hd118644%_)
                        (if (__find (lambda (_%g118646118648%_)
                                      (gx#bound-identifier=?
                                       _%g118646118648%_
                                       _%hd118644%_))
                                    _%rest118643%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where118619%_
                             _%hd118644%_)
                            (_%lp118621%_ _%rest118643%_))))))
            (if (##pair? _%rest118624118632%_)
                (let ((_%hd118629118656%_ (##car _%rest118624118632%_))
                      (_%tl118630118658%_ (##cdr _%rest118624118632%_)))
                  (let* ((_%hd118661%_ _%hd118629118656%_)
                         (_%rest118663%_ _%tl118630118658%_))
                    (_%K118628118653%_ _%rest118663%_ _%hd118661%_)))
                (_%else118626118640%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx118668%_)
        (let ((_%where118670%_ _%stx118668%_))
          (gx#check-duplicate-identifiers__% _%stx118668%_ _%where118670%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g121310_
        (let ((_g121309_ (##length _g121310_)))
          (cond ((##fx= _g121309_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g121310_))
                ((##fx= _g121309_ 2)
                 (apply gx#check-duplicate-identifiers__% _g121310_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g121310_))))))
    (define gx#core-bind-values?
      (lambda (_%stx118610%_)
        (gx#stx-andmap
         (lambda (_%x118612%_)
           (let ((_%$e118614%_ (gx#identifier? _%x118612%_)))
             (if _%$e118614%_ _%$e118614%_ (gx#stx-false? _%x118612%_))))
         _%stx118610%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx118574%_ _%rebind?118575%_ _%phi118576%_ _%ctx118577%_)
        (gx#stx-for-each1
         (lambda (_%id118579%_)
           (if (gx#identifier? _%id118579%_)
               (gx#core-bind-runtime!__%
                _%id118579%_
                _%rebind?118575%_
                _%phi118576%_
                _%ctx118577%_)
               '#!void))
         _%stx118574%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx118584%_)
        (let* ((_%rebind?118586%_ '#f)
               (_%phi118588%_ (gx#current-expander-phi))
               (_%ctx118590%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118584%_
           _%rebind?118586%_
           _%phi118588%_
           _%ctx118590%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx118592%_ _%rebind?118593%_)
        (let* ((_%phi118595%_ (gx#current-expander-phi))
               (_%ctx118597%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118592%_
           _%rebind?118593%_
           _%phi118595%_
           _%ctx118597%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx118599%_ _%rebind?118600%_ _%phi118601%_)
        (let ((_%ctx118603%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118599%_
           _%rebind?118600%_
           _%phi118601%_
           _%ctx118603%_))))
    (define gx#core-bind-values!
      (lambda _g121312_
        (let ((_g121311_ (##length _g121312_)))
          (cond ((##fx= _g121311_ 1) (apply gx#core-bind-values!__0 _g121312_))
                ((##fx= _g121311_ 2) (apply gx#core-bind-values!__1 _g121312_))
                ((##fx= _g121311_ 3) (apply gx#core-bind-values!__2 _g121312_))
                ((##fx= _g121311_ 4) (apply gx#core-bind-values!__% _g121312_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g121312_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx118569%_)
        (gx#stx-map1
         (lambda (_%x118571%_)
           (if (gx#identifier? _%x118571%_)
               (gx#core-quote-syntax__0 _%x118571%_)
               '#f))
         _%stx118569%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx118562%_)
        (if (gx#identifier? _%stx118562%_)
            (let* ((_%bind118564%_ (gx#resolve-identifier__0 _%stx118562%_))
                   (_%$e118566%_ (not _%bind118564%_)))
              (if _%$e118566%_
                  _%$e118566%_
                  (##structure-instance-of?
                   _%bind118564%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id118551%_ _%form118552%_)
        (let ((_%bind118554%_ (gx#resolve-identifier__0 _%id118551%_)))
          (if (##structure-instance-of? _%bind118554%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id118551%_)
              (if (not _%bind118554%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id118551%_)))
                      (gx#core-quote-syntax__0 _%id118551%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form118552%_
                       _%id118551%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form118552%_
                   _%id118551%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id118506%_ _%rebind?118507%_ _%phi118508%_ _%ctx118509%_)
        (let* ((_%key118511%_ (gx#core-identifier-key _%id118506%_))
               (_%eid118513%_
                (gx#make-binding-id__%
                 _%key118511%_
                 '#f
                 _%phi118508%_
                 _%ctx118509%_))
               (_%bind118519%_
                (if (##structure-instance-of?
                     _%ctx118509%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid118513%_
                     _%key118511%_
                     _%phi118508%_
                     _%ctx118509%_)
                    (if (##structure-instance-of?
                         _%ctx118509%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid118513%_
                         _%key118511%_
                         _%phi118508%_)
                        (if (##structure-instance-of?
                             _%ctx118509%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid118513%_
                             _%key118511%_
                             _%phi118508%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid118513%_
                             _%key118511%_
                             _%phi118508%_))))))
          (gx#bind-identifier!__%
           _%id118506%_
           _%bind118519%_
           _%rebind?118507%_
           _%phi118508%_
           _%ctx118509%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id118525%_)
        (let* ((_%rebind?118527%_ '#f)
               (_%phi118529%_ (gx#current-expander-phi))
               (_%ctx118531%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118525%_
           _%rebind?118527%_
           _%phi118529%_
           _%ctx118531%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id118533%_ _%rebind?118534%_)
        (let* ((_%phi118536%_ (gx#current-expander-phi))
               (_%ctx118538%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118533%_
           _%rebind?118534%_
           _%phi118536%_
           _%ctx118538%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id118540%_ _%rebind?118541%_ _%phi118542%_)
        (let ((_%ctx118544%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118540%_
           _%rebind?118541%_
           _%phi118542%_
           _%ctx118544%_))))
    (define gx#core-bind-runtime!
      (lambda _g121314_
        (let ((_g121313_ (##length _g121314_)))
          (cond ((##fx= _g121313_ 1)
                 (apply gx#core-bind-runtime!__0 _g121314_))
                ((##fx= _g121313_ 2)
                 (apply gx#core-bind-runtime!__1 _g121314_))
                ((##fx= _g121313_ 3)
                 (apply gx#core-bind-runtime!__2 _g121314_))
                ((##fx= _g121313_ 4)
                 (apply gx#core-bind-runtime!__% _g121314_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g121314_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id118458%_
               _%eid118459%_
               _%rebind?118460%_
               _%phi118461%_
               _%ctx118462%_)
        (let* ((_%key118464%_ (gx#core-identifier-key _%id118458%_))
               (_%bind118469%_
                (if (##structure-instance-of?
                     _%ctx118462%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid118459%_
                     _%key118464%_
                     _%phi118461%_
                     _%ctx118462%_)
                    (if (##structure-instance-of?
                         _%ctx118462%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid118459%_
                         _%key118464%_
                         _%phi118461%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid118459%_
                         _%key118464%_
                         _%phi118461%_)))))
          (gx#bind-identifier!__%
           _%id118458%_
           _%bind118469%_
           _%rebind?118460%_
           _%phi118461%_
           _%ctx118462%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id118475%_ _%eid118476%_)
        (let* ((_%rebind?118478%_ '#f)
               (_%phi118480%_ (gx#current-expander-phi))
               (_%ctx118482%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118475%_
           _%eid118476%_
           _%rebind?118478%_
           _%phi118480%_
           _%ctx118482%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id118484%_ _%eid118485%_ _%rebind?118486%_)
        (let* ((_%phi118488%_ (gx#current-expander-phi))
               (_%ctx118490%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118484%_
           _%eid118485%_
           _%rebind?118486%_
           _%phi118488%_
           _%ctx118490%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id118492%_ _%eid118493%_ _%rebind?118494%_ _%phi118495%_)
        (let ((_%ctx118497%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118492%_
           _%eid118493%_
           _%rebind?118494%_
           _%phi118495%_
           _%ctx118497%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g121316_
        (let ((_g121315_ (##length _g121316_)))
          (cond ((##fx= _g121315_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g121316_))
                ((##fx= _g121315_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g121316_))
                ((##fx= _g121315_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g121316_))
                ((##fx= _g121315_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g121316_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g121316_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id118418%_
               _%eid118419%_
               _%rebind?118420%_
               _%phi118421%_
               _%ctx118422%_)
        (gx#bind-identifier!__%
         _%id118418%_
         (##structure
          gx#extern-binding::t
          _%eid118419%_
          (gx#core-identifier-key _%id118418%_)
          _%phi118421%_)
         _%rebind?118420%_
         _%phi118421%_
         _%ctx118422%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id118427%_ _%eid118428%_)
        (let* ((_%rebind?118430%_ '#f)
               (_%phi118432%_ (gx#current-expander-phi))
               (_%ctx118434%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118427%_
           _%eid118428%_
           _%rebind?118430%_
           _%phi118432%_
           _%ctx118434%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id118436%_ _%eid118437%_ _%rebind?118438%_)
        (let* ((_%phi118440%_ (gx#current-expander-phi))
               (_%ctx118442%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118436%_
           _%eid118437%_
           _%rebind?118438%_
           _%phi118440%_
           _%ctx118442%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id118444%_ _%eid118445%_ _%rebind?118446%_ _%phi118447%_)
        (let ((_%ctx118449%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118444%_
           _%eid118445%_
           _%rebind?118446%_
           _%phi118447%_
           _%ctx118449%_))))
    (define gx#core-bind-extern!
      (lambda _g121318_
        (let ((_g121317_ (##length _g121318_)))
          (cond ((##fx= _g121317_ 2) (apply gx#core-bind-extern!__0 _g121318_))
                ((##fx= _g121317_ 3) (apply gx#core-bind-extern!__1 _g121318_))
                ((##fx= _g121317_ 4) (apply gx#core-bind-extern!__2 _g121318_))
                ((##fx= _g121317_ 5) (apply gx#core-bind-extern!__% _g121318_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g121318_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id118372%_
               _%e118373%_
               _%rebind?118374%_
               _%phi118375%_
               _%ctx118376%_)
        (gx#bind-identifier!__%
         _%id118372%_
         (let ((_%key118381%_ (gx#core-identifier-key _%id118372%_))
               (_%e118382%_
                (if (or (##structure-instance-of? _%e118373%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e118373%_
                         'gx#expander-context::t))
                    _%e118373%_
                    (##structure
                     gx#user-expander::t
                     _%e118373%_
                     _%ctx118376%_
                     _%phi118375%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key118381%_
             '#t
             _%phi118375%_
             _%ctx118376%_)
            _%key118381%_
            _%phi118375%_
            _%e118382%_))
         _%rebind?118374%_
         _%phi118375%_
         _%ctx118376%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id118387%_ _%e118388%_)
        (let* ((_%rebind?118390%_ '#f)
               (_%phi118392%_ (gx#current-expander-phi))
               (_%ctx118394%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118387%_
           _%e118388%_
           _%rebind?118390%_
           _%phi118392%_
           _%ctx118394%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id118396%_ _%e118397%_ _%rebind?118398%_)
        (let* ((_%phi118400%_ (gx#current-expander-phi))
               (_%ctx118402%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118396%_
           _%e118397%_
           _%rebind?118398%_
           _%phi118400%_
           _%ctx118402%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id118404%_ _%e118405%_ _%rebind?118406%_ _%phi118407%_)
        (let ((_%ctx118409%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118404%_
           _%e118405%_
           _%rebind?118406%_
           _%phi118407%_
           _%ctx118409%_))))
    (define gx#core-bind-syntax!
      (lambda _g121320_
        (let ((_g121319_ (##length _g121320_)))
          (cond ((##fx= _g121319_ 2) (apply gx#core-bind-syntax!__0 _g121320_))
                ((##fx= _g121319_ 3) (apply gx#core-bind-syntax!__1 _g121320_))
                ((##fx= _g121319_ 4) (apply gx#core-bind-syntax!__2 _g121320_))
                ((##fx= _g121319_ 5) (apply gx#core-bind-syntax!__% _g121320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g121320_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id118355%_ _%e118356%_ _%rebind?118357%_)
        (gx#core-bind-syntax!__%
         _%id118355%_
         _%e118356%_
         _%rebind?118357%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id118362%_ _%e118363%_)
        (let ((_%rebind?118365%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id118362%_
           _%e118363%_
           _%rebind?118365%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g121322_
        (let ((_g121321_ (##length _g121322_)))
          (cond ((##fx= _g121321_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g121322_))
                ((##fx= _g121321_ 3)
                 (apply gx#core-bind-root-syntax!__% _g121322_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g121322_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id118313%_
               _%alias-id118314%_
               _%rebind?118315%_
               _%phi118316%_
               _%ctx118317%_)
        (gx#bind-identifier!__%
         _%id118313%_
         (let ((_%key118319%_ (gx#core-identifier-key _%id118313%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key118319%_
             '#t
             _%phi118316%_
             _%ctx118317%_)
            _%key118319%_
            _%phi118316%_
            _%alias-id118314%_))
         _%rebind?118315%_
         _%phi118316%_
         _%ctx118317%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id118324%_ _%alias-id118325%_)
        (let* ((_%rebind?118327%_ '#f)
               (_%phi118329%_ (gx#current-expander-phi))
               (_%ctx118331%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118324%_
           _%alias-id118325%_
           _%rebind?118327%_
           _%phi118329%_
           _%ctx118331%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id118333%_ _%alias-id118334%_ _%rebind?118335%_)
        (let* ((_%phi118337%_ (gx#current-expander-phi))
               (_%ctx118339%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118333%_
           _%alias-id118334%_
           _%rebind?118335%_
           _%phi118337%_
           _%ctx118339%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id118341%_ _%alias-id118342%_ _%rebind?118343%_ _%phi118344%_)
        (let ((_%ctx118346%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118341%_
           _%alias-id118342%_
           _%rebind?118343%_
           _%phi118344%_
           _%ctx118346%_))))
    (define gx#core-bind-alias!
      (lambda _g121324_
        (let ((_g121323_ (##length _g121324_)))
          (cond ((##fx= _g121323_ 2) (apply gx#core-bind-alias!__0 _g121324_))
                ((##fx= _g121323_ 3) (apply gx#core-bind-alias!__1 _g121324_))
                ((##fx= _g121323_ 4) (apply gx#core-bind-alias!__2 _g121324_))
                ((##fx= _g121323_ 5) (apply gx#core-bind-alias!__% _g121324_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g121324_))))))
    (define gx#make-binding-id__%
      (lambda (_%key118263%_ _%syntax?118264%_ _%phi118265%_ _%ctx118266%_)
        (if (uninterned-symbol? _%key118263%_)
            (##gensym 'L)
            (if (pair? _%key118263%_)
                (gensym (car _%key118263%_))
                (if (##structure-instance-of? _%ctx118266%_ 'gx#top-context::t)
                    (let ((_%ns118271%_
                           (gx#core-context-namespace__% _%ctx118266%_)))
                      (if (and (fxzero? _%phi118265%_) (not _%syntax?118264%_))
                          (if _%ns118271%_
                              (make-symbol__1 _%ns118271%_ '"#" _%key118263%_)
                              _%key118263%_)
                          (if _%syntax?118264%_
                              (make-symbol__1
                               (let ((_%$e118275%_ _%ns118271%_))
                                 (if _%$e118275%_ _%$e118275%_ '""))
                               '"[:"
                               (number->string _%phi118265%_)
                               '":]#"
                               _%key118263%_)
                              (make-symbol__1
                               (let ((_%$e118279%_ _%ns118271%_))
                                 (if _%$e118279%_ _%$e118279%_ '""))
                               '"["
                               (number->string _%phi118265%_)
                               '"]#"
                               _%key118263%_))))
                    (gensym _%key118263%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key118286%_)
        (let* ((_%syntax?118288%_ '#f)
               (_%phi118290%_ (gx#current-expander-phi))
               (_%ctx118292%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118286%_
           _%syntax?118288%_
           _%phi118290%_
           _%ctx118292%_))))
    (define gx#make-binding-id__1
      (lambda (_%key118294%_ _%syntax?118295%_)
        (let* ((_%phi118297%_ (gx#current-expander-phi))
               (_%ctx118299%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118294%_
           _%syntax?118295%_
           _%phi118297%_
           _%ctx118299%_))))
    (define gx#make-binding-id__2
      (lambda (_%key118301%_ _%syntax?118302%_ _%phi118303%_)
        (let ((_%ctx118305%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118301%_
           _%syntax?118302%_
           _%phi118303%_
           _%ctx118305%_))))
    (define gx#make-binding-id
      (lambda _g121326_
        (let ((_g121325_ (##length _g121326_)))
          (cond ((##fx= _g121325_ 1) (apply gx#make-binding-id__0 _g121326_))
                ((##fx= _g121325_ 2) (apply gx#make-binding-id__1 _g121326_))
                ((##fx= _g121325_ 3) (apply gx#make-binding-id__2 _g121326_))
                ((##fx= _g121325_ 4) (apply gx#make-binding-id__% _g121326_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g121326_))))))))
