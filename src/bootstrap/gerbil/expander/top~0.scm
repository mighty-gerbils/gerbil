(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712702631)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx121334%_)
        (letrec ((_%expand-special121336%_
                  (lambda (_%hd121338%_ _%K121339%_ _%rest121340%_ _%r121341%_)
                    (_%K121339%_
                     _%rest121340%_
                     (cons (gx#core-expand-top _%hd121338%_) _%r121341%_)))))
          (gx#core-expand-block__0 _%stx121334%_ _%expand-special121336%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx121087%_)
        (letrec ((_%expand-special121089%_
                  (lambda (_%hd121209%_ _%K121210%_ _%rest121211%_ _%r121212%_)
                    (let* ((_%K121216%_
                            (lambda (_%e121214%_)
                              (_%K121210%_
                               _%rest121211%_
                               (cons _%e121214%_ _%r121212%_))))
                           (_%e121217121246%_ _%hd121209%_)
                           (_%E121241121250%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121217121246%_)))
                           (_%E121237121262%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121217121246%_)
                                  (let ((_%e121242121254%_
                                         (gx#syntax-e _%e121217121246%_)))
                                    (let ((_%hd121243121257%_
                                           (##car _%e121242121254%_))
                                          (_%tl121244121259%_
                                           (##cdr _%e121242121254%_)))
                                      (if (and (gx#identifier?
                                                _%hd121243121257%_)
                                               (gx#core-identifier=?
                                                _%hd121243121257%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K121216%_
                                               (gx#core-expand-define-runtime%
                                                _%hd121209%_))
                                              (_%E121241121250%_))
                                          (_%E121241121250%_))))
                                  (_%E121241121250%_))))
                           (_%E121233121274%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121217121246%_)
                                  (let ((_%e121238121266%_
                                         (gx#syntax-e _%e121217121246%_)))
                                    (let ((_%hd121239121269%_
                                           (##car _%e121238121266%_))
                                          (_%tl121240121271%_
                                           (##cdr _%e121238121266%_)))
                                      (if (and (gx#identifier?
                                                _%hd121239121269%_)
                                               (gx#core-identifier=?
                                                _%hd121239121269%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K121216%_
                                               (gx#core-expand-define-alias%
                                                _%hd121209%_))
                                              (_%E121237121262%_))
                                          (_%E121237121262%_))))
                                  (_%E121237121262%_))))
                           (_%E121223121286%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121217121246%_)
                                  (let ((_%e121234121278%_
                                         (gx#syntax-e _%e121217121246%_)))
                                    (let ((_%hd121235121281%_
                                           (##car _%e121234121278%_))
                                          (_%tl121236121283%_
                                           (##cdr _%e121234121278%_)))
                                      (if (and (gx#identifier?
                                                _%hd121235121281%_)
                                               (gx#core-identifier=?
                                                _%hd121235121281%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K121216%_
                                               (gx#core-expand-define-syntax%
                                                _%hd121209%_))
                                              (_%E121233121274%_))
                                          (_%E121233121274%_))))
                                  (_%E121233121274%_))))
                           (_%E121219121318%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121217121246%_)
                                  (let ((_%e121224121290%_
                                         (gx#syntax-e _%e121217121246%_)))
                                    (let ((_%hd121225121293%_
                                           (##car _%e121224121290%_))
                                          (_%tl121226121295%_
                                           (##cdr _%e121224121290%_)))
                                      (if (and (gx#identifier?
                                                _%hd121225121293%_)
                                               (gx#core-identifier=?
                                                _%hd121225121293%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121226121295%_)
                                              (let ((_%e121227121298%_
                                                     (gx#syntax-e
                                                      _%tl121226121295%_)))
                                                (let ((_%hd121228121301%_
                                                       (##car _%e121227121298%_))
                                                      (_%tl121229121303%_
                                                       (##cdr _%e121227121298%_)))
                                                  (let ((_%hd-bind121306%_
                                                         _%hd121228121301%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121229121303%_)
                                                        (let ((_%e121230121308%_
                                                               (gx#syntax-e
                                                                _%tl121229121303%_)))
                                                          (let ((_%hd121231121311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121230121308%_))
                        (_%tl121232121313%_ (##cdr _%e121230121308%_)))
                    (let ((_%expr121316%_ _%hd121231121311%_))
                      (if (gx#stx-null? _%tl121232121313%_)
                          (if (gx#core-bind-values? _%hd-bind121306%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121306%_)
                                (_%K121216%_ _%hd121209%_))
                              (_%E121223121286%_))
                          (_%E121223121286%_)))))
                (_%E121223121286%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121223121286%_))
                                          (_%E121223121286%_))))
                                  (_%E121223121286%_))))
                           (_%E121218121330%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121217121246%_)
                                  (let ((_%e121220121322%_
                                         (gx#syntax-e _%e121217121246%_)))
                                    (let ((_%hd121221121325%_
                                           (##car _%e121220121322%_))
                                          (_%tl121222121327%_
                                           (##cdr _%e121220121322%_)))
                                      (if (and (gx#identifier?
                                                _%hd121221121325%_)
                                               (gx#core-identifier=?
                                                _%hd121221121325%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K121216%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd121209%_))
                                              (_%E121219121318%_))
                                          (_%E121219121318%_))))
                                  (_%E121219121318%_)))))
                      (_%E121218121330%_))))
                 (_%eval-body121090%_
                  (lambda (_%rbody121098%_)
                    (let _%lp121100%_ ((_%rest121102%_ _%rbody121098%_)
                                       (_%body121103%_ '())
                                       (_%ebody121104%_ '()))
                      (let* ((_%rest121105121113%_ _%rest121102%_)
                             (_%else121107121121%_
                              (lambda ()
                                (values _%body121103%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody121104%_)
                                          (gx#stx-source _%stx121087%_))))))
                             (_%K121109121197%_
                              (lambda (_%rest121124%_ _%hd121125%_)
                                (let* ((_%e121126121143%_ _%hd121125%_)
                                       (_%E121138121147%_
                                        (lambda ()
                                          (_%lp121100%_
                                           _%rest121124%_
                                           (cons _%hd121125%_ _%body121103%_)
                                           (cons _%hd121125%_
                                                 _%ebody121104%_))))
                                       (_%E121128121159%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121126121143%_)
                                              (let ((_%e121139121151%_
                                                     (gx#syntax-e
                                                      _%e121126121143%_)))
                                                (let ((_%hd121140121154%_
                                                       (##car _%e121139121151%_))
                                                      (_%tl121141121156%_
                                                       (##cdr _%e121139121151%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121140121154%_)
                                                           (gx#core-identifier=?
                                                            _%hd121140121154%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp121100%_
                                                           _%rest121124%_
                                                           (cons _%hd121125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body121103%_)
                   _%ebody121104%_)
                  (_%E121138121147%_))
              (_%E121138121147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121138121147%_))))
                                       (_%E121127121193%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121126121143%_)
                                              (let ((_%e121129121163%_
                                                     (gx#syntax-e
                                                      _%e121126121143%_)))
                                                (let ((_%hd121130121166%_
                                                       (##car _%e121129121163%_))
                                                      (_%tl121131121168%_
                                                       (##cdr _%e121129121163%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121130121166%_)
                                                           (gx#core-identifier=?
                                                            _%hd121130121166%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl121131121168%_)
                                                          (let ((_%e121132121171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl121131121168%_)))
                    (let ((_%hd121133121174%_ (##car _%e121132121171%_))
                          (_%tl121134121176%_ (##cdr _%e121132121171%_)))
                      (let ((_%hd-bind121179%_ _%hd121133121174%_))
                        (if (gx#stx-pair? _%tl121134121176%_)
                            (let ((_%e121135121181%_
                                   (gx#syntax-e _%tl121134121176%_)))
                              (let ((_%hd121136121184%_
                                     (##car _%e121135121181%_))
                                    (_%tl121137121186%_
                                     (##cdr _%e121135121181%_)))
                                (let ((_%expr121189%_ _%hd121136121184%_))
                                  (if (gx#stx-null? _%tl121137121186%_)
                                      (if '#t
                                          (let ((_%ehd121191%_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind121179%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr121189%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd121125%_))))
                                            (_%lp121100%_
                                             _%rest121124%_
                                             (cons _%ehd121191%_
                                                   _%body121103%_)
                                             (cons _%ehd121191%_
                                                   _%ebody121104%_)))
                                          (_%E121128121159%_))
                                      (_%E121128121159%_)))))
                            (_%E121128121159%_)))))
                  (_%E121128121159%_))
              (_%E121128121159%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121128121159%_)))))
                                  (_%E121127121193%_)))))
                        (if (##pair? _%rest121105121113%_)
                            (let ((_%hd121110121200%_
                                   (##car _%rest121105121113%_))
                                  (_%tl121111121202%_
                                   (##cdr _%rest121105121113%_)))
                              (let* ((_%hd121205%_ _%hd121110121200%_)
                                     (_%rest121207%_ _%tl121111121202%_))
                                (_%K121109121197%_
                                 _%rest121207%_
                                 _%hd121205%_)))
                            (_%else121107121121%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody121093%_
                     (gx#core-expand-block__1
                      _%stx121087%_
                      _%expand-special121089%_
                      '#f))
                    (_g121357_ (_%eval-body121090%_ _%rbody121093%_)))
               (begin
                 (let ((_g121358_
                        (if (##values? _g121357_)
                            (##vector-length _g121357_)
                            1)))
                   (if (not (##fx= _g121358_ 2))
                       (error "Context expects 2 values" _g121358_)))
                 (let ((_%expanded-body121095%_ (##vector-ref _g121357_ 0))
                       (_%value121096%_ (##vector-ref _g121357_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body121095%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value121096%_ '())))
                    (gx#stx-source _%stx121087%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx121057%_)
        (let* ((_%e121058121065%_ _%stx121057%_)
               (_%E121060121069%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121058121065%_)))
               (_%E121059121083%_
                (lambda ()
                  (if (gx#stx-pair? _%e121058121065%_)
                      (let ((_%e121061121073%_
                             (gx#syntax-e _%e121058121065%_)))
                        (let ((_%hd121062121076%_ (##car _%e121061121073%_))
                              (_%tl121063121078%_ (##cdr _%e121061121073%_)))
                          (let ((_%body121081%_ _%tl121063121078%_))
                            (if (gx#stx-list? _%body121081%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body121081%_)
                                 (gx#stx-source _%stx121057%_))
                                (_%E121060121069%_)))))
                      (_%E121060121069%_)))))
          (_%E121059121083%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx121055%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx121055%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx121001%_)
        (let* ((_%e121002121015%_ _%stx121001%_)
               (_%E121004121019%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121002121015%_)))
               (_%E121003121051%_
                (lambda ()
                  (if (gx#stx-pair? _%e121002121015%_)
                      (let ((_%e121005121023%_
                             (gx#syntax-e _%e121002121015%_)))
                        (let ((_%hd121006121026%_ (##car _%e121005121023%_))
                              (_%tl121007121028%_ (##cdr _%e121005121023%_)))
                          (if (gx#stx-pair? _%tl121007121028%_)
                              (let ((_%e121008121031%_
                                     (gx#syntax-e _%tl121007121028%_)))
                                (let ((_%hd121009121034%_
                                       (##car _%e121008121031%_))
                                      (_%tl121010121036%_
                                       (##cdr _%e121008121031%_)))
                                  (let ((_%ann121039%_ _%hd121009121034%_))
                                    (if (gx#stx-pair? _%tl121010121036%_)
                                        (let ((_%e121011121041%_
                                               (gx#syntax-e
                                                _%tl121010121036%_)))
                                          (let ((_%hd121012121044%_
                                                 (##car _%e121011121041%_))
                                                (_%tl121013121046%_
                                                 (##cdr _%e121011121041%_)))
                                            (let ((_%expr121049%_
                                                   _%hd121012121044%_))
                                              (if (gx#stx-null?
                                                   _%tl121013121046%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _%ann121039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr121049%_)
                                 '())))
               (gx#stx-source _%stx121001%_))
              (_%E121004121019%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121004121019%_)))))
                                        (_%E121004121019%_)))))
                              (_%E121004121019%_))))
                      (_%E121004121019%_)))))
          (_%E121003121051%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx120725%_ _%body120726%_)
        (letrec ((_%expand-special120728%_
                  (lambda (_%hd120996%_ _%K120997%_ _%rest120998%_ _%r120999%_)
                    (_%K120997%_
                     '()
                     (cons (_%expand-internal120729%_
                            _%hd120996%_
                            _%rest120998%_)
                           _%r120999%_))))
                 (_%expand-internal120729%_
                  (lambda (_%hd120992%_ _%rest120993%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal120731%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd120992%_ _%rest120993%_))
                          (gx#stx-source _%stx120725%_))
                         _%expand-internal-special120730%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj121351
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj121351)
                       __obj121351))))
                 (_%expand-internal-special120730%_
                  (lambda (_%hd120887%_ _%K120888%_ _%rest120889%_ _%r120890%_)
                    (let* ((_%e120891120916%_ _%hd120887%_)
                           (_%E120911120920%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120891120916%_)))
                           (_%E120907120932%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120891120916%_)
                                  (let ((_%e120912120924%_
                                         (gx#syntax-e _%e120891120916%_)))
                                    (let ((_%hd120913120927%_
                                           (##car _%e120912120924%_))
                                          (_%tl120914120929%_
                                           (##cdr _%e120912120924%_)))
                                      (if (and (gx#identifier?
                                                _%hd120913120927%_)
                                               (gx#core-identifier=?
                                                _%hd120913120927%_
                                                '%#declare))
                                          (if '#t
                                              (_%K120888%_
                                               _%rest120889%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd120887%_)
                                                     _%r120890%_))
                                              (_%E120911120920%_))
                                          (_%E120911120920%_))))
                                  (_%E120911120920%_))))
                           (_%E120903120944%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120891120916%_)
                                  (let ((_%e120908120936%_
                                         (gx#syntax-e _%e120891120916%_)))
                                    (let ((_%hd120909120939%_
                                           (##car _%e120908120936%_))
                                          (_%tl120910120941%_
                                           (##cdr _%e120908120936%_)))
                                      (if (and (gx#identifier?
                                                _%hd120909120939%_)
                                               (gx#core-identifier=?
                                                _%hd120909120939%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd120887%_)
                                                (_%K120888%_
                                                 _%rest120889%_
                                                 _%r120890%_))
                                              (_%E120907120932%_))
                                          (_%E120907120932%_))))
                                  (_%E120907120932%_))))
                           (_%E120893120956%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120891120916%_)
                                  (let ((_%e120904120948%_
                                         (gx#syntax-e _%e120891120916%_)))
                                    (let ((_%hd120905120951%_
                                           (##car _%e120904120948%_))
                                          (_%tl120906120953%_
                                           (##cdr _%e120904120948%_)))
                                      (if (and (gx#identifier?
                                                _%hd120905120951%_)
                                               (gx#core-identifier=?
                                                _%hd120905120951%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd120887%_)
                                                (_%K120888%_
                                                 _%rest120889%_
                                                 _%r120890%_))
                                              (_%E120903120944%_))
                                          (_%E120903120944%_))))
                                  (_%E120903120944%_))))
                           (_%E120892120988%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120891120916%_)
                                  (let ((_%e120894120960%_
                                         (gx#syntax-e _%e120891120916%_)))
                                    (let ((_%hd120895120963%_
                                           (##car _%e120894120960%_))
                                          (_%tl120896120965%_
                                           (##cdr _%e120894120960%_)))
                                      (if (and (gx#identifier?
                                                _%hd120895120963%_)
                                               (gx#core-identifier=?
                                                _%hd120895120963%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl120896120965%_)
                                              (let ((_%e120897120968%_
                                                     (gx#syntax-e
                                                      _%tl120896120965%_)))
                                                (let ((_%hd120898120971%_
                                                       (##car _%e120897120968%_))
                                                      (_%tl120899120973%_
                                                       (##cdr _%e120897120968%_)))
                                                  (let ((_%hd-bind120976%_
                                                         _%hd120898120971%_))
                                                    (if (gx#stx-pair?
                                                         _%tl120899120973%_)
                                                        (let ((_%e120900120978%_
                                                               (gx#syntax-e
                                                                _%tl120899120973%_)))
                                                          (let ((_%hd120901120981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e120900120978%_))
                        (_%tl120902120983%_ (##cdr _%e120900120978%_)))
                    (let ((_%expr120986%_ _%hd120901120981%_))
                      (if (gx#stx-null? _%tl120902120983%_)
                          (if (gx#core-bind-values? _%hd-bind120976%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind120976%_)
                                (_%K120888%_
                                 _%rest120889%_
                                 (cons _%hd120887%_ _%r120890%_)))
                              (_%E120893120956%_))
                          (_%E120893120956%_)))))
                (_%E120893120956%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E120893120956%_))
                                          (_%E120893120956%_))))
                                  (_%E120893120956%_)))))
                      (_%E120892120988%_))))
                 (_%wrap-internal120731%_
                  (lambda (_%rbody120733%_)
                    (let _%lp120735%_ ((_%rest120737%_ _%rbody120733%_)
                                       (_%decls120738%_ '())
                                       (_%bind120739%_ '())
                                       (_%body120740%_ '()))
                      (let* ((_%e120741120748%_ _%rest120737%_)
                             (_%E120743120797%_
                              (lambda ()
                                (let* ((_%body120792%_
                                        (let* ((_%body120751120761%_
                                                _%body120740%_)
                                               (_%else120754120769%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body120740%_)
                                                   (gx#stx-source
                                                    _%stx120725%_)))))
                                          (let ((_%K120759120789%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx120725%_)))
                                                (_%K120756120775%_
                                                 (lambda (_%expr120773%_)
                                                   _%expr120773%_)))
                                            (let ((_%try-match120753120785%_
                                                   (lambda ()
                                                     (if (##pair? _%body120751120761%_)
                                                         (let ((_%tl120758120780%_
                                                                (##cdr _%body120751120761%_))
                                                               (_%hd120757120778%_
                                                                (##car _%body120751120761%_)))
                                                           (if (##null? _%tl120758120780%_)
                                                               (let ((_%expr120783%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd120757120778%_))
                         (_%K120756120775%_ _%expr120783%_))
                       (_%else120754120769%_)))
                 (_%else120754120769%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body120751120761%_)
                                                  (_%K120759120789%_)
                                                  (_%try-match120753120785%_))))))
                                       (_%body120794%_
                                        (if (null? _%bind120739%_)
                                            _%body120792%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind120739%_
                                                         (cons _%body120792%_
                                                               '())))
                                             (gx#stx-source _%stx120725%_)))))
                                  (if (null? _%decls120738%_)
                                      _%body120794%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls120738%_
                                                   (cons _%body120794%_ '())))
                                       (gx#stx-source _%stx120725%_))))))
                             (_%E120742120883%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120741120748%_)
                                    (let ((_%e120744120801%_
                                           (gx#syntax-e _%e120741120748%_)))
                                      (let ((_%hd120745120804%_
                                             (##car _%e120744120801%_))
                                            (_%tl120746120806%_
                                             (##cdr _%e120744120801%_)))
                                        (let* ((_%hd120809%_
                                                _%hd120745120804%_)
                                               (_%rest120811%_
                                                _%tl120746120806%_))
                                          (if '#t
                                              (let* ((_%e120812120829%_
                                                      _%hd120809%_)
                                                     (_%E120824120833%_
                                                      (lambda ()
                                                        (if (null? _%bind120739%_)
                                                            (_%lp120735%_
                                                             _%rest120811%_
                                                             _%decls120738%_
                                                             _%bind120739%_
                                                             (cons _%hd120809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body120740%_))
                    (_%lp120735%_
                     _%rest120811%_
                     _%decls120738%_
                     (cons (cons '#f (cons _%hd120809%_ '())) _%bind120739%_)
                     _%body120740%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E120814120847%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e120812120829%_)
                                                            (let ((_%e120825120837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e120812120829%_)))
                      (let ((_%hd120826120840%_ (##car _%e120825120837%_))
                            (_%tl120827120842%_ (##cdr _%e120825120837%_)))
                        (if (and (gx#identifier? _%hd120826120840%_)
                                 (gx#core-identifier=?
                                  _%hd120826120840%_
                                  '%#declare))
                            (let ((_%xdecls120845%_ _%tl120827120842%_))
                              (if '#t
                                  (_%lp120735%_
                                   _%rest120811%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls120738%_
                                    _%xdecls120845%_)
                                   _%bind120739%_
                                   _%body120740%_)
                                  (_%E120824120833%_)))
                            (_%E120824120833%_))))
                    (_%E120824120833%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E120813120879%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e120812120829%_)
                                                            (let ((_%e120815120851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e120812120829%_)))
                      (let ((_%hd120816120854%_ (##car _%e120815120851%_))
                            (_%tl120817120856%_ (##cdr _%e120815120851%_)))
                        (if (and (gx#identifier? _%hd120816120854%_)
                                 (gx#core-identifier=?
                                  _%hd120816120854%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%tl120817120856%_)
                                (let ((_%e120818120859%_
                                       (gx#syntax-e _%tl120817120856%_)))
                                  (let ((_%hd120819120862%_
                                         (##car _%e120818120859%_))
                                        (_%tl120820120864%_
                                         (##cdr _%e120818120859%_)))
                                    (let ((_%hd-bind120867%_
                                           _%hd120819120862%_))
                                      (if (gx#stx-pair? _%tl120820120864%_)
                                          (let ((_%e120821120869%_
                                                 (gx#syntax-e
                                                  _%tl120820120864%_)))
                                            (let ((_%hd120822120872%_
                                                   (##car _%e120821120869%_))
                                                  (_%tl120823120874%_
                                                   (##cdr _%e120821120869%_)))
                                              (let ((_%expr120877%_
                                                     _%hd120822120872%_))
                                                (if (gx#stx-null?
                                                     _%tl120823120874%_)
                                                    (if '#t
                                                        (_%lp120735%_
                                                         _%rest120811%_
                                                         _%decls120738%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind120867%_)
                             (cons (gx#core-expand-expression _%expr120877%_)
                                   '()))
                       _%bind120739%_)
                 _%body120740%_)
                (_%E120814120847%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120814120847%_)))))
                                          (_%E120814120847%_)))))
                                (_%E120814120847%_))
                            (_%E120814120847%_))))
                    (_%E120814120847%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120813120879%_))
                                              (_%E120743120797%_)))))
                                    (_%E120743120797%_)))))
                        (_%E120742120883%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body120726%_)
            (gx#stx-source _%stx120725%_))
           _%expand-special120728%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx120663%_)
        (let* ((_%e120664120671%_ _%stx120663%_)
               (_%E120666120675%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120664120671%_)))
               (_%E120665120721%_
                (lambda ()
                  (if (gx#stx-pair? _%e120664120671%_)
                      (let ((_%e120667120679%_
                             (gx#syntax-e _%e120664120671%_)))
                        (let ((_%hd120668120682%_ (##car _%e120667120679%_))
                              (_%tl120669120684%_ (##cdr _%e120667120679%_)))
                          (let ((_%body120687%_ _%tl120669120684%_))
                            (if (gx#stx-list? _%body120687%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl120689%_)
                                     (let* ((_%e120690120697%_ _%decl120689%_)
                                            (_%E120692120701%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e120690120697%_)))
                                            (_%E120691120717%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e120690120697%_)
                                                   (let ((_%e120693120705%_
                                                          (gx#syntax-e
                                                           _%e120690120697%_)))
                                                     (let ((_%hd120694120708%_
                                                            (##car _%e120693120705%_))
                                                           (_%tl120695120710%_
                                                            (##cdr _%e120693120705%_)))
                                                       (let* ((_%head120713%_
                                                               _%hd120694120708%_)
                                                              (_%args120715%_
                                                               _%tl120695120710%_))
                                                         (if (gx#stx-list?
                                                              _%args120715%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl120689%_)
                                                             (_%E120692120701%_)))))
                                                   (_%E120692120701%_)))))
                                       (_%E120691120717%_)))
                                   _%body120687%_))
                                 (gx#stx-source _%stx120663%_))
                                (_%E120666120675%_)))))
                      (_%E120666120675%_)))))
          (_%E120665120721%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx120567%_)
        (let* ((_%e120568120575%_ _%stx120567%_)
               (_%E120570120579%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120568120575%_)))
               (_%E120569120659%_
                (lambda ()
                  (if (gx#stx-pair? _%e120568120575%_)
                      (let ((_%e120571120583%_
                             (gx#syntax-e _%e120568120575%_)))
                        (let ((_%hd120572120586%_ (##car _%e120571120583%_))
                              (_%tl120573120588%_ (##cdr _%e120571120583%_)))
                          (let ((_%body120591%_ _%tl120573120588%_))
                            (if '#t
                                (let _%lp120593%_ ((_%rest120595%_
                                                    _%body120591%_)
                                                   (_%r120596%_ '()))
                                  (let* ((_%e120597120611%_ _%rest120595%_)
                                         (_%E120609120615%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx120567%_)))
                                         (_%E120599120619%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%e120597120611%_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r120596%_))
                                                     (gx#stx-source
                                                      _%stx120567%_))
                                                    (_%E120609120615%_))
                                                (_%E120609120615%_))))
                                         (_%E120598120655%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%e120597120611%_)
                                                (let ((_%e120600120623%_
                                                       (gx#syntax-e
                                                        _%e120597120611%_)))
                                                  (let ((_%hd120601120626%_
                                                         (##car _%e120600120623%_))
                                                        (_%tl120602120628%_
                                                         (##cdr _%e120600120623%_)))
                                                    (if (gx#stx-pair?
                                                         _%hd120601120626%_)
                                                        (let ((_%e120603120631%_
                                                               (gx#syntax-e
                                                                _%hd120601120626%_)))
                                                          (let ((_%hd120604120634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e120603120631%_))
                        (_%tl120605120636%_ (##cdr _%e120603120631%_)))
                    (let ((_%id120639%_ _%hd120604120634%_))
                      (if (gx#stx-pair? _%tl120605120636%_)
                          (let ((_%e120606120641%_
                                 (gx#syntax-e _%tl120605120636%_)))
                            (let ((_%hd120607120644%_
                                   (##car _%e120606120641%_))
                                  (_%tl120608120646%_
                                   (##cdr _%e120606120641%_)))
                              (let ((_%eid120649%_ _%hd120607120644%_))
                                (if (gx#stx-null? _%tl120608120646%_)
                                    (let ((_%rest120651%_ _%tl120602120628%_))
                                      (if (and (gx#identifier? _%id120639%_)
                                               (gx#identifier? _%eid120649%_))
                                          (let ((_%eid120653%_
                                                 (gx#stx-e _%eid120649%_)))
                                            (gx#core-bind-extern!__0
                                             _%id120639%_
                                             _%eid120653%_)
                                            (_%lp120593%_
                                             _%rest120651%_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _%id120639%_)
                                                         (cons _%eid120653%_
                                                               '()))
                                                   _%r120596%_)))
                                          (_%E120599120619%_)))
                                    (_%E120599120619%_)))))
                          (_%E120599120619%_)))))
                (_%E120599120619%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120599120619%_)))))
                                    (_%E120598120655%_)))
                                (_%E120570120579%_)))))
                      (_%E120570120579%_)))))
          (_%E120569120659%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx120513%_)
        (let* ((_%e120514120527%_ _%stx120513%_)
               (_%E120516120531%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120514120527%_)))
               (_%E120515120563%_
                (lambda ()
                  (if (gx#stx-pair? _%e120514120527%_)
                      (let ((_%e120517120535%_
                             (gx#syntax-e _%e120514120527%_)))
                        (let ((_%hd120518120538%_ (##car _%e120517120535%_))
                              (_%tl120519120540%_ (##cdr _%e120517120535%_)))
                          (if (gx#stx-pair? _%tl120519120540%_)
                              (let ((_%e120520120543%_
                                     (gx#syntax-e _%tl120519120540%_)))
                                (let ((_%hd120521120546%_
                                       (##car _%e120520120543%_))
                                      (_%tl120522120548%_
                                       (##cdr _%e120520120543%_)))
                                  (let ((_%hd120551%_ _%hd120521120546%_))
                                    (if (gx#stx-pair? _%tl120522120548%_)
                                        (let ((_%e120523120553%_
                                               (gx#syntax-e
                                                _%tl120522120548%_)))
                                          (let ((_%hd120524120556%_
                                                 (##car _%e120523120553%_))
                                                (_%tl120525120558%_
                                                 (##cdr _%e120523120553%_)))
                                            (let ((_%expr120561%_
                                                   _%hd120524120556%_))
                                              (if (gx#stx-null?
                                                   _%tl120525120558%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd120551%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd120551%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd120551%_)
                             (cons (gx#core-expand-expression _%expr120561%_)
                                   '())))
                 (gx#stx-source _%stx120513%_)))
              (_%E120516120531%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120516120531%_)))))
                                        (_%E120516120531%_)))))
                              (_%E120516120531%_))))
                      (_%E120516120531%_)))))
          (_%E120515120563%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx120457%_)
        (let* ((_%e120458120471%_ _%stx120457%_)
               (_%E120460120475%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120458120471%_)))
               (_%E120459120509%_
                (lambda ()
                  (if (gx#stx-pair? _%e120458120471%_)
                      (let ((_%e120461120479%_
                             (gx#syntax-e _%e120458120471%_)))
                        (let ((_%hd120462120482%_ (##car _%e120461120479%_))
                              (_%tl120463120484%_ (##cdr _%e120461120479%_)))
                          (if (gx#stx-pair? _%tl120463120484%_)
                              (let ((_%e120464120487%_
                                     (gx#syntax-e _%tl120463120484%_)))
                                (let ((_%hd120465120490%_
                                       (##car _%e120464120487%_))
                                      (_%tl120466120492%_
                                       (##cdr _%e120464120487%_)))
                                  (let ((_%id120495%_ _%hd120465120490%_))
                                    (if (gx#stx-pair? _%tl120466120492%_)
                                        (let ((_%e120467120497%_
                                               (gx#syntax-e
                                                _%tl120466120492%_)))
                                          (let ((_%hd120468120500%_
                                                 (##car _%e120467120497%_))
                                                (_%tl120469120502%_
                                                 (##cdr _%e120467120497%_)))
                                            (let ((_%binding-id120505%_
                                                   _%hd120468120500%_))
                                              (if (gx#stx-null?
                                                   _%tl120469120502%_)
                                                  (if (and (gx#identifier?
                                                            _%id120495%_)
                                                           (gx#identifier?
                                                            _%binding-id120505%_))
                                                      (let ((_%eid120507%_
                                                             (gx#stx-e
                                                              _%binding-id120505%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id120495%_
                                                         _%eid120507%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id120495%_)
                             (cons _%eid120507%_ '())))))
              (_%E120460120475%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120460120475%_)))))
                                        (_%E120460120475%_)))))
                              (_%E120460120475%_))))
                      (_%E120460120475%_)))))
          (_%E120459120509%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx120400%_)
        (let* ((_%e120401120414%_ _%stx120400%_)
               (_%E120403120418%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120401120414%_)))
               (_%E120402120453%_
                (lambda ()
                  (if (gx#stx-pair? _%e120401120414%_)
                      (let ((_%e120404120422%_
                             (gx#syntax-e _%e120401120414%_)))
                        (let ((_%hd120405120425%_ (##car _%e120404120422%_))
                              (_%tl120406120427%_ (##cdr _%e120404120422%_)))
                          (if (gx#stx-pair? _%tl120406120427%_)
                              (let ((_%e120407120430%_
                                     (gx#syntax-e _%tl120406120427%_)))
                                (let ((_%hd120408120433%_
                                       (##car _%e120407120430%_))
                                      (_%tl120409120435%_
                                       (##cdr _%e120407120430%_)))
                                  (let ((_%id120438%_ _%hd120408120433%_))
                                    (if (gx#stx-pair? _%tl120409120435%_)
                                        (let ((_%e120410120440%_
                                               (gx#syntax-e
                                                _%tl120409120435%_)))
                                          (let ((_%hd120411120443%_
                                                 (##car _%e120410120440%_))
                                                (_%tl120412120445%_
                                                 (##cdr _%e120410120440%_)))
                                            (let ((_%expr120448%_
                                                   _%hd120411120443%_))
                                              (if (gx#stx-null?
                                                   _%tl120412120445%_)
                                                  (if (gx#identifier?
                                                       _%id120438%_)
                                                      (let ((_g121359_
                                                             (gx#core-expand-expression+1
                                                              _%expr120448%_)))
                                                        (begin
                                                          (let ((_g121360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g121359_)
                             (##vector-length _g121359_)
                             1)))
                    (if (not (##fx= _g121360_ 2))
                        (error "Context expects 2 values" _g121360_)))
                  (let ((_%e-stx120450%_ (##vector-ref _g121359_ 0))
                        (_%e120451%_ (##vector-ref _g121359_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id120438%_ _%e120451%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id120438%_)
                                   (cons _%e-stx120450%_ '())))
                       (gx#stx-source _%stx120400%_))))))
              (_%E120403120418%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120403120418%_)))))
                                        (_%E120403120418%_)))))
                              (_%E120403120418%_))))
                      (_%E120403120418%_)))))
          (_%E120402120453%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx120344%_)
        (let* ((_%e120345120358%_ _%stx120344%_)
               (_%E120347120362%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120345120358%_)))
               (_%E120346120396%_
                (lambda ()
                  (if (gx#stx-pair? _%e120345120358%_)
                      (let ((_%e120348120366%_
                             (gx#syntax-e _%e120345120358%_)))
                        (let ((_%hd120349120369%_ (##car _%e120348120366%_))
                              (_%tl120350120371%_ (##cdr _%e120348120366%_)))
                          (if (gx#stx-pair? _%tl120350120371%_)
                              (let ((_%e120351120374%_
                                     (gx#syntax-e _%tl120350120371%_)))
                                (let ((_%hd120352120377%_
                                       (##car _%e120351120374%_))
                                      (_%tl120353120379%_
                                       (##cdr _%e120351120374%_)))
                                  (let ((_%id120382%_ _%hd120352120377%_))
                                    (if (gx#stx-pair? _%tl120353120379%_)
                                        (let ((_%e120354120384%_
                                               (gx#syntax-e
                                                _%tl120353120379%_)))
                                          (let ((_%hd120355120387%_
                                                 (##car _%e120354120384%_))
                                                (_%tl120356120389%_
                                                 (##cdr _%e120354120384%_)))
                                            (let ((_%alias-id120392%_
                                                   _%hd120355120387%_))
                                              (if (gx#stx-null?
                                                   _%tl120356120389%_)
                                                  (if (and (gx#identifier?
                                                            _%id120382%_)
                                                           (gx#identifier?
                                                            _%alias-id120392%_))
                                                      (let ((_%alias-id120394%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id120392%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id120382%_
                                                         _%alias-id120394%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id120382%_)
                             (cons _%alias-id120394%_ '())))))
              (_%E120347120362%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120347120362%_)))))
                                        (_%E120347120362%_)))))
                              (_%E120347120362%_))))
                      (_%E120347120362%_)))))
          (_%E120346120396%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx120287%_ _%wrap?120288%_)
        (let* ((_%e120289120299%_ _%stx120287%_)
               (_%E120291120303%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120289120299%_)))
               (_%E120290120330%_
                (lambda ()
                  (if (gx#stx-pair? _%e120289120299%_)
                      (let ((_%e120292120307%_
                             (gx#syntax-e _%e120289120299%_)))
                        (let ((_%hd120293120310%_ (##car _%e120292120307%_))
                              (_%tl120294120312%_ (##cdr _%e120292120307%_)))
                          (if (gx#stx-pair? _%tl120294120312%_)
                              (let ((_%e120295120315%_
                                     (gx#syntax-e _%tl120294120312%_)))
                                (let ((_%hd120296120318%_
                                       (##car _%e120295120315%_))
                                      (_%tl120297120320%_
                                       (##cdr _%e120295120315%_)))
                                  (let* ((_%hd120323%_ _%hd120296120318%_)
                                         (_%body120325%_ _%tl120297120320%_))
                                    (if (gx#core-bind-values? _%hd120323%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd120323%_)
                                           (let ((_%body120328%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd120323%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120287%_
                                                               _%body120325%_)
                                                              '()))))
                                             (if _%wrap?120288%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body120328%_)
                                                  (gx#stx-source
                                                   _%stx120287%_))
                                                 _%body120328%_)))
                                         gx#current-expander-context
                                         (let ((__obj121352
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121352)
                                           __obj121352))
                                        (_%E120291120303%_)))))
                              (_%E120291120303%_))))
                      (_%E120291120303%_)))))
          (_%E120290120330%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx120337%_)
        (let ((_%wrap?120339%_ '#t))
          (gx#core-expand-lambda%__% _%stx120337%_ _%wrap?120339%_))))
    (define gx#core-expand-lambda%
      (lambda _g121362_
        (let ((_g121361_ (##length _g121362_)))
          (cond ((##fx= _g121361_ 1)
                 (apply gx#core-expand-lambda%__0 _g121362_))
                ((##fx= _g121361_ 2)
                 (apply gx#core-expand-lambda%__% _g121362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g121362_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx120251%_)
        (let* ((_%e120252120259%_ _%stx120251%_)
               (_%E120254120263%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120252120259%_)))
               (_%E120253120282%_
                (lambda ()
                  (if (gx#stx-pair? _%e120252120259%_)
                      (let ((_%e120255120267%_
                             (gx#syntax-e _%e120252120259%_)))
                        (let ((_%hd120256120270%_ (##car _%e120255120267%_))
                              (_%tl120257120272%_ (##cdr _%e120255120267%_)))
                          (let ((_%clauses120275%_ _%tl120257120272%_))
                            (if (gx#stx-list? _%clauses120275%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause120277%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause120277%_)
                                       (let ((_%$e120279%_
                                              (gx#stx-source
                                               _%clause120277%_)))
                                         (if _%$e120279%_
                                             _%$e120279%_
                                             (gx#stx-source _%stx120251%_))))
                                      '#f))
                                   _%clauses120275%_))
                                 (gx#stx-source _%stx120251%_))
                                (_%E120254120263%_)))))
                      (_%E120254120263%_)))))
          (_%E120253120282%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx120205%_)
        (let* ((_%e120206120216%_ _%stx120205%_)
               (_%E120208120220%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120206120216%_)))
               (_%E120207120247%_
                (lambda ()
                  (if (gx#stx-pair? _%e120206120216%_)
                      (let ((_%e120209120224%_
                             (gx#syntax-e _%e120206120216%_)))
                        (let ((_%hd120210120227%_ (##car _%e120209120224%_))
                              (_%tl120211120229%_ (##cdr _%e120209120224%_)))
                          (if (gx#stx-pair? _%tl120211120229%_)
                              (let ((_%e120212120232%_
                                     (gx#syntax-e _%tl120211120229%_)))
                                (let ((_%hd120213120235%_
                                       (##car _%e120212120232%_))
                                      (_%tl120214120237%_
                                       (##cdr _%e120212120232%_)))
                                  (let* ((_%hd120240%_ _%hd120213120235%_)
                                         (_%body120242%_ _%tl120214120237%_))
                                    (if (gx#core-expand-let-bind? _%hd120240%_)
                                        (let ((_%expressions120244%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd120240%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd120240%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd120240%_
                                                           _%expressions120244%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx120205%_
                         _%body120242%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx120205%_)))
                                           gx#current-expander-context
                                           (let ((__obj121353
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj121353)
                                             __obj121353)))
                                        (_%E120208120220%_)))))
                              (_%E120208120220%_))))
                      (_%E120208120220%_)))))
          (_%E120207120247%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx120150%_ _%form120151%_)
        (let* ((_%e120152120162%_ _%stx120150%_)
               (_%E120154120166%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120152120162%_)))
               (_%E120153120191%_
                (lambda ()
                  (if (gx#stx-pair? _%e120152120162%_)
                      (let ((_%e120155120170%_
                             (gx#syntax-e _%e120152120162%_)))
                        (let ((_%hd120156120173%_ (##car _%e120155120170%_))
                              (_%tl120157120175%_ (##cdr _%e120155120170%_)))
                          (if (gx#stx-pair? _%tl120157120175%_)
                              (let ((_%e120158120178%_
                                     (gx#syntax-e _%tl120157120175%_)))
                                (let ((_%hd120159120181%_
                                       (##car _%e120158120178%_))
                                      (_%tl120160120183%_
                                       (##cdr _%e120158120178%_)))
                                  (let* ((_%hd120186%_ _%hd120159120181%_)
                                         (_%body120188%_ _%tl120160120183%_))
                                    (if (gx#core-expand-let-bind? _%hd120186%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd120186%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form120151%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd120186%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd120186%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120150%_
                                                               _%body120188%_)
                                                              '())))
                                            (gx#stx-source _%stx120150%_)))
                                         gx#current-expander-context
                                         (let ((__obj121354
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121354)
                                           __obj121354))
                                        (_%E120154120166%_)))))
                              (_%E120154120166%_))))
                      (_%E120154120166%_)))))
          (_%E120153120191%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx120198%_)
        (let ((_%form120200%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx120198%_ _%form120200%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g121364_
        (let ((_g121363_ (##length _g121364_)))
          (cond ((##fx= _g121363_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g121364_))
                ((##fx= _g121363_ 2)
                 (apply gx#core-expand-letrec-values%__% _g121364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g121364_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx120147%_)
        (gx#core-expand-letrec-values%__% _%stx120147%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx120104%_)
        (if (gx#stx-list? _%stx120104%_)
            (gx#stx-andmap
             (lambda (_%bind120106%_)
               (let* ((_%e120107120117%_ _%bind120106%_)
                      (_%E120109120121%_ (lambda () '#f))
                      (_%E120108120143%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120107120117%_)
                             (let ((_%e120110120125%_
                                    (gx#syntax-e _%e120107120117%_)))
                               (let ((_%hd120111120128%_
                                      (##car _%e120110120125%_))
                                     (_%tl120112120130%_
                                      (##cdr _%e120110120125%_)))
                                 (let ((_%hd120133%_ _%hd120111120128%_))
                                   (if (gx#stx-pair? _%tl120112120130%_)
                                       (let ((_%e120113120135%_
                                              (gx#syntax-e
                                               _%tl120112120130%_)))
                                         (let ((_%hd120114120138%_
                                                (##car _%e120113120135%_))
                                               (_%tl120115120140%_
                                                (##cdr _%e120113120135%_)))
                                           (if (gx#stx-null?
                                                _%tl120115120140%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd120133%_)
                                                   (_%E120109120121%_))
                                               (_%E120109120121%_))))
                                       (_%E120109120121%_)))))
                             (_%E120109120121%_)))))
                 (_%E120108120143%_)))
             _%stx120104%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind120063%_)
        (let* ((_%e120064120074%_ _%bind120063%_)
               (_%E120066120078%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120064120074%_)))
               (_%E120065120100%_
                (lambda ()
                  (if (gx#stx-pair? _%e120064120074%_)
                      (let ((_%e120067120082%_
                             (gx#syntax-e _%e120064120074%_)))
                        (let ((_%hd120068120085%_ (##car _%e120067120082%_))
                              (_%tl120069120087%_ (##cdr _%e120067120082%_)))
                          (if (gx#stx-pair? _%tl120069120087%_)
                              (let ((_%e120070120090%_
                                     (gx#syntax-e _%tl120069120087%_)))
                                (let ((_%hd120071120093%_
                                       (##car _%e120070120090%_))
                                      (_%tl120072120095%_
                                       (##cdr _%e120070120090%_)))
                                  (let ((_%expr120098%_ _%hd120071120093%_))
                                    (if (gx#stx-null? _%tl120072120095%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120098%_)
                                            (_%E120066120078%_))
                                        (_%E120066120078%_)))))
                              (_%E120066120078%_))))
                      (_%E120066120078%_)))))
          (_%E120065120100%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind120022%_)
        (let* ((_%e120023120033%_ _%bind120022%_)
               (_%E120025120037%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120023120033%_)))
               (_%E120024120059%_
                (lambda ()
                  (if (gx#stx-pair? _%e120023120033%_)
                      (let ((_%e120026120041%_
                             (gx#syntax-e _%e120023120033%_)))
                        (let ((_%hd120027120044%_ (##car _%e120026120041%_))
                              (_%tl120028120046%_ (##cdr _%e120026120041%_)))
                          (let ((_%hd120049%_ _%hd120027120044%_))
                            (if (gx#stx-pair? _%tl120028120046%_)
                                (let ((_%e120029120051%_
                                       (gx#syntax-e _%tl120028120046%_)))
                                  (let ((_%hd120030120054%_
                                         (##car _%e120029120051%_))
                                        (_%tl120031120056%_
                                         (##cdr _%e120029120051%_)))
                                    (if (gx#stx-null? _%tl120031120056%_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _%hd120049%_)
                                            (_%E120025120037%_))
                                        (_%E120025120037%_))))
                                (_%E120025120037%_)))))
                      (_%E120025120037%_)))))
          (_%E120024120059%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind119980%_ _%expr119981%_)
        (let* ((_%e119982119992%_ _%bind119980%_)
               (_%E119984119996%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119982119992%_)))
               (_%E119983120018%_
                (lambda ()
                  (if (gx#stx-pair? _%e119982119992%_)
                      (let ((_%e119985120000%_
                             (gx#syntax-e _%e119982119992%_)))
                        (let ((_%hd119986120003%_ (##car _%e119985120000%_))
                              (_%tl119987120005%_ (##cdr _%e119985120000%_)))
                          (let ((_%hd120008%_ _%hd119986120003%_))
                            (if (gx#stx-pair? _%tl119987120005%_)
                                (let ((_%e119988120010%_
                                       (gx#syntax-e _%tl119987120005%_)))
                                  (let ((_%hd119989120013%_
                                         (##car _%e119988120010%_))
                                        (_%tl119990120015%_
                                         (##cdr _%e119988120010%_)))
                                    (if (gx#stx-null? _%tl119990120015%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd120008%_)
                                                  (cons _%expr119981%_ '()))
                                            (_%E119984119996%_))
                                        (_%E119984119996%_))))
                                (_%E119984119996%_)))))
                      (_%E119984119996%_)))))
          (_%E119983120018%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx119934%_)
        (let* ((_%e119935119945%_ _%stx119934%_)
               (_%E119937119949%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119935119945%_)))
               (_%E119936119976%_
                (lambda ()
                  (if (gx#stx-pair? _%e119935119945%_)
                      (let ((_%e119938119953%_
                             (gx#syntax-e _%e119935119945%_)))
                        (let ((_%hd119939119956%_ (##car _%e119938119953%_))
                              (_%tl119940119958%_ (##cdr _%e119938119953%_)))
                          (if (gx#stx-pair? _%tl119940119958%_)
                              (let ((_%e119941119961%_
                                     (gx#syntax-e _%tl119940119958%_)))
                                (let ((_%hd119942119964%_
                                       (##car _%e119941119961%_))
                                      (_%tl119943119966%_
                                       (##cdr _%e119941119961%_)))
                                  (let* ((_%hd119969%_ _%hd119942119964%_)
                                         (_%body119971%_ _%tl119943119966%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd119969%_)
                                        (let ((_%expanders119973%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd119969%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd119969%_
                                              _%expanders119973%_)
                                             (gx#core-expand-local-block
                                              _%stx119934%_
                                              _%body119971%_))
                                           gx#current-expander-context
                                           (let ((__obj121355
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj121355)
                                             __obj121355)))
                                        (_%E119937119949%_)))))
                              (_%E119937119949%_))))
                      (_%E119937119949%_)))))
          (_%E119936119976%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx119883%_)
        (let* ((_%e119884119894%_ _%stx119883%_)
               (_%E119886119898%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119884119894%_)))
               (_%E119885119930%_
                (lambda ()
                  (if (gx#stx-pair? _%e119884119894%_)
                      (let ((_%e119887119902%_
                             (gx#syntax-e _%e119884119894%_)))
                        (let ((_%hd119888119905%_ (##car _%e119887119902%_))
                              (_%tl119889119907%_ (##cdr _%e119887119902%_)))
                          (if (gx#stx-pair? _%tl119889119907%_)
                              (let ((_%e119890119910%_
                                     (gx#syntax-e _%tl119889119907%_)))
                                (let ((_%hd119891119913%_
                                       (##car _%e119890119910%_))
                                      (_%tl119892119915%_
                                       (##cdr _%e119890119910%_)))
                                  (let* ((_%hd119918%_ _%hd119891119913%_)
                                         (_%body119920%_ _%tl119892119915%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd119918%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd119918%_
                                            (make-list
                                             (gx#stx-length _%hd119918%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g119922119925%_
                                                     _%g119923119927%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g119922119925%_
                                               _%g119923119927%_
                                               '#t))
                                            _%hd119918%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd119918%_))
                                           (gx#core-expand-local-block
                                            _%stx119883%_
                                            _%body119920%_))
                                         gx#current-expander-context
                                         (let ((__obj121356
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121356)
                                           __obj121356))
                                        (_%E119886119898%_)))))
                              (_%E119886119898%_))))
                      (_%E119886119898%_)))))
          (_%E119885119930%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx119840%_)
        (if (gx#stx-list? _%stx119840%_)
            (gx#stx-andmap
             (lambda (_%bind119842%_)
               (let* ((_%e119843119853%_ _%bind119842%_)
                      (_%E119845119857%_ (lambda () '#f))
                      (_%E119844119879%_
                       (lambda ()
                         (if (gx#stx-pair? _%e119843119853%_)
                             (let ((_%e119846119861%_
                                    (gx#syntax-e _%e119843119853%_)))
                               (let ((_%hd119847119864%_
                                      (##car _%e119846119861%_))
                                     (_%tl119848119866%_
                                      (##cdr _%e119846119861%_)))
                                 (let ((_%hd119869%_ _%hd119847119864%_))
                                   (if (gx#stx-pair? _%tl119848119866%_)
                                       (let ((_%e119849119871%_
                                              (gx#syntax-e
                                               _%tl119848119866%_)))
                                         (let ((_%hd119850119874%_
                                                (##car _%e119849119871%_))
                                               (_%tl119851119876%_
                                                (##cdr _%e119849119871%_)))
                                           (if (gx#stx-null?
                                                _%tl119851119876%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd119869%_)
                                                   (_%E119845119857%_))
                                               (_%E119845119857%_))))
                                       (_%E119845119857%_)))))
                             (_%E119845119857%_)))))
                 (_%E119844119879%_)))
             _%stx119840%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind119796%_)
        (let* ((_%e119797119807%_ _%bind119796%_)
               (_%E119799119811%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119797119807%_)))
               (_%E119798119836%_
                (lambda ()
                  (if (gx#stx-pair? _%e119797119807%_)
                      (let ((_%e119800119815%_
                             (gx#syntax-e _%e119797119807%_)))
                        (let ((_%hd119801119818%_ (##car _%e119800119815%_))
                              (_%tl119802119820%_ (##cdr _%e119800119815%_)))
                          (if (gx#stx-pair? _%tl119802119820%_)
                              (let ((_%e119803119823%_
                                     (gx#syntax-e _%tl119802119820%_)))
                                (let ((_%hd119804119826%_
                                       (##car _%e119803119823%_))
                                      (_%tl119805119828%_
                                       (##cdr _%e119803119823%_)))
                                  (let ((_%expr119831%_ _%hd119804119826%_))
                                    (if (gx#stx-null? _%tl119805119828%_)
                                        (if '#t
                                            (let ((_g121365_
                                                   (gx#core-expand-expression+1
                                                    _%expr119831%_)))
                                              (begin
                                                (let ((_g121366_
                                                       (if (##values?
                                                            _g121365_)
                                                           (##vector-length
                                                            _g121365_)
                                                           1)))
                                                  (if (not (##fx= _g121366_ 2))
                                                      (error "Context expects 2 values"
                                                             _g121366_)))
                                                (let ((_%_119833%_
                                                       (##vector-ref
                                                        _g121365_
                                                        0))
                                                      (_%e119834%_
                                                       (##vector-ref
                                                        _g121365_
                                                        1)))
                                                  _%e119834%_)))
                                            (_%E119799119811%_))
                                        (_%E119799119811%_)))))
                              (_%E119799119811%_))))
                      (_%E119799119811%_)))))
          (_%E119798119836%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind119741%_ _%e119742%_ _%rebind?119743%_)
        (let* ((_%e119744119754%_ _%bind119741%_)
               (_%E119746119758%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119744119754%_)))
               (_%E119745119780%_
                (lambda ()
                  (if (gx#stx-pair? _%e119744119754%_)
                      (let ((_%e119747119762%_
                             (gx#syntax-e _%e119744119754%_)))
                        (let ((_%hd119748119765%_ (##car _%e119747119762%_))
                              (_%tl119749119767%_ (##cdr _%e119747119762%_)))
                          (let ((_%id119770%_ _%hd119748119765%_))
                            (if (gx#stx-pair? _%tl119749119767%_)
                                (let ((_%e119750119772%_
                                       (gx#syntax-e _%tl119749119767%_)))
                                  (let ((_%hd119751119775%_
                                         (##car _%e119750119772%_))
                                        (_%tl119752119777%_
                                         (##cdr _%e119750119772%_)))
                                    (if (gx#stx-null? _%tl119752119777%_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _%id119770%_
                                             _%e119742%_
                                             _%rebind?119743%_)
                                            (_%E119746119758%_))
                                        (_%E119746119758%_))))
                                (_%E119746119758%_)))))
                      (_%E119746119758%_)))))
          (_%E119745119780%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind119787%_ _%e119788%_)
        (let ((_%rebind?119790%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind119787%_
           _%e119788%_
           _%rebind?119790%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g121368_
        (let ((_g121367_ (##length _g121368_)))
          (cond ((##fx= _g121367_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g121368_))
                ((##fx= _g121367_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g121368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g121368_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx119699%_)
        (let* ((_%e119700119710%_ _%stx119699%_)
               (_%E119702119714%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119700119710%_)))
               (_%E119701119736%_
                (lambda ()
                  (if (gx#stx-pair? _%e119700119710%_)
                      (let ((_%e119703119718%_
                             (gx#syntax-e _%e119700119710%_)))
                        (let ((_%hd119704119721%_ (##car _%e119703119718%_))
                              (_%tl119705119723%_ (##cdr _%e119703119718%_)))
                          (if (gx#stx-pair? _%tl119705119723%_)
                              (let ((_%e119706119726%_
                                     (gx#syntax-e _%tl119705119723%_)))
                                (let ((_%hd119707119729%_
                                       (##car _%e119706119726%_))
                                      (_%tl119708119731%_
                                       (##cdr _%e119706119726%_)))
                                  (let ((_%expr119734%_ _%hd119707119729%_))
                                    (if (gx#stx-null? _%tl119708119731%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr119734%_)
                                            (_%E119702119714%_))
                                        (_%E119702119714%_)))))
                              (_%E119702119714%_))))
                      (_%E119702119714%_)))))
          (_%E119701119736%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx119658%_)
        (let* ((_%e119659119669%_ _%stx119658%_)
               (_%E119661119673%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119659119669%_)))
               (_%E119660119695%_
                (lambda ()
                  (if (gx#stx-pair? _%e119659119669%_)
                      (let ((_%e119662119677%_
                             (gx#syntax-e _%e119659119669%_)))
                        (let ((_%hd119663119680%_ (##car _%e119662119677%_))
                              (_%tl119664119682%_ (##cdr _%e119662119677%_)))
                          (if (gx#stx-pair? _%tl119664119682%_)
                              (let ((_%e119665119685%_
                                     (gx#syntax-e _%tl119664119682%_)))
                                (let ((_%hd119666119688%_
                                       (##car _%e119665119685%_))
                                      (_%tl119667119690%_
                                       (##cdr _%e119665119685%_)))
                                  (let ((_%e119693%_ _%hd119666119688%_))
                                    (if (gx#stx-null? _%tl119667119690%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e119693%_)
                                                         '()))
                                             (gx#stx-source _%stx119658%_))
                                            (_%E119661119673%_))
                                        (_%E119661119673%_)))))
                              (_%E119661119673%_))))
                      (_%E119661119673%_)))))
          (_%E119660119695%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx119617%_)
        (let* ((_%e119618119628%_ _%stx119617%_)
               (_%E119620119632%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119618119628%_)))
               (_%E119619119654%_
                (lambda ()
                  (if (gx#stx-pair? _%e119618119628%_)
                      (let ((_%e119621119636%_
                             (gx#syntax-e _%e119618119628%_)))
                        (let ((_%hd119622119639%_ (##car _%e119621119636%_))
                              (_%tl119623119641%_ (##cdr _%e119621119636%_)))
                          (if (gx#stx-pair? _%tl119623119641%_)
                              (let ((_%e119624119644%_
                                     (gx#syntax-e _%tl119623119641%_)))
                                (let ((_%hd119625119647%_
                                       (##car _%e119624119644%_))
                                      (_%tl119626119649%_
                                       (##cdr _%e119624119644%_)))
                                  (let ((_%e119652%_ _%hd119625119647%_))
                                    (if (gx#stx-null? _%tl119626119649%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _%e119652%_)
                                                         '()))
                                             (gx#stx-source _%stx119617%_))
                                            (_%E119620119632%_))
                                        (_%E119620119632%_)))))
                              (_%E119620119632%_))))
                      (_%E119620119632%_)))))
          (_%E119619119654%_))))
    (define gx#core-expand-call%
      (lambda (_%stx119574%_)
        (let* ((_%e119575119585%_ _%stx119574%_)
               (_%E119577119589%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119575119585%_)))
               (_%E119576119613%_
                (lambda ()
                  (if (gx#stx-pair? _%e119575119585%_)
                      (let ((_%e119578119593%_
                             (gx#syntax-e _%e119575119585%_)))
                        (let ((_%hd119579119596%_ (##car _%e119578119593%_))
                              (_%tl119580119598%_ (##cdr _%e119578119593%_)))
                          (if (gx#stx-pair? _%tl119580119598%_)
                              (let ((_%e119581119601%_
                                     (gx#syntax-e _%tl119580119598%_)))
                                (let ((_%hd119582119604%_
                                       (##car _%e119581119601%_))
                                      (_%tl119583119606%_
                                       (##cdr _%e119581119601%_)))
                                  (let* ((_%rator119609%_ _%hd119582119604%_)
                                         (_%args119611%_ _%tl119583119606%_))
                                    (if (gx#stx-list? _%args119611%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator119609%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args119611%_))
                                         (gx#stx-source _%stx119574%_))
                                        (_%E119577119589%_)))))
                              (_%E119577119589%_))))
                      (_%E119577119589%_)))))
          (_%E119576119613%_))))
    (define gx#core-expand-if%
      (lambda (_%stx119507%_)
        (let* ((_%e119508119524%_ _%stx119507%_)
               (_%E119510119528%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119508119524%_)))
               (_%E119509119570%_
                (lambda ()
                  (if (gx#stx-pair? _%e119508119524%_)
                      (let ((_%e119511119532%_
                             (gx#syntax-e _%e119508119524%_)))
                        (let ((_%hd119512119535%_ (##car _%e119511119532%_))
                              (_%tl119513119537%_ (##cdr _%e119511119532%_)))
                          (if (gx#stx-pair? _%tl119513119537%_)
                              (let ((_%e119514119540%_
                                     (gx#syntax-e _%tl119513119537%_)))
                                (let ((_%hd119515119543%_
                                       (##car _%e119514119540%_))
                                      (_%tl119516119545%_
                                       (##cdr _%e119514119540%_)))
                                  (let ((_%test119548%_ _%hd119515119543%_))
                                    (if (gx#stx-pair? _%tl119516119545%_)
                                        (let ((_%e119517119550%_
                                               (gx#syntax-e
                                                _%tl119516119545%_)))
                                          (let ((_%hd119518119553%_
                                                 (##car _%e119517119550%_))
                                                (_%tl119519119555%_
                                                 (##cdr _%e119517119550%_)))
                                            (let ((_%K119558%_
                                                   _%hd119518119553%_))
                                              (if (gx#stx-pair?
                                                   _%tl119519119555%_)
                                                  (let ((_%e119520119560%_
                                                         (gx#syntax-e
                                                          _%tl119519119555%_)))
                                                    (let ((_%hd119521119563%_
                                                           (##car _%e119520119560%_))
                                                          (_%tl119522119565%_
                                                           (##cdr _%e119520119560%_)))
                                                      (let ((_%E119568%_
                                                             _%hd119521119563%_))
                                                        (if (gx#stx-null?
                                                             _%tl119522119565%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _%test119548%_)
                                     (cons (gx#core-expand-expression
                                            _%K119558%_)
                                           (cons (gx#core-expand-expression
                                                  _%E119568%_)
                                                 '()))))
                         (gx#stx-source _%stx119507%_))
                        (_%E119510119528%_))
                    (_%E119510119528%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119510119528%_)))))
                                        (_%E119510119528%_)))))
                              (_%E119510119528%_))))
                      (_%E119510119528%_)))))
          (_%E119509119570%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx119466%_)
        (let* ((_%e119467119477%_ _%stx119466%_)
               (_%E119469119481%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119467119477%_)))
               (_%E119468119503%_
                (lambda ()
                  (if (gx#stx-pair? _%e119467119477%_)
                      (let ((_%e119470119485%_
                             (gx#syntax-e _%e119467119477%_)))
                        (let ((_%hd119471119488%_ (##car _%e119470119485%_))
                              (_%tl119472119490%_ (##cdr _%e119470119485%_)))
                          (if (gx#stx-pair? _%tl119472119490%_)
                              (let ((_%e119473119493%_
                                     (gx#syntax-e _%tl119472119490%_)))
                                (let ((_%hd119474119496%_
                                       (##car _%e119473119493%_))
                                      (_%tl119475119498%_
                                       (##cdr _%e119473119493%_)))
                                  (let ((_%id119501%_ _%hd119474119496%_))
                                    (if (gx#stx-null? _%tl119475119498%_)
                                        (if (gx#identifier? _%id119501%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id119501%_
                                                          _%stx119466%_)
                                                         '()))
                                             (gx#stx-source _%stx119466%_))
                                            (_%E119469119481%_))
                                        (_%E119469119481%_)))))
                              (_%E119469119481%_))))
                      (_%E119469119481%_)))))
          (_%E119468119503%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx119412%_)
        (let* ((_%e119413119426%_ _%stx119412%_)
               (_%E119415119430%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119413119426%_)))
               (_%E119414119462%_
                (lambda ()
                  (if (gx#stx-pair? _%e119413119426%_)
                      (let ((_%e119416119434%_
                             (gx#syntax-e _%e119413119426%_)))
                        (let ((_%hd119417119437%_ (##car _%e119416119434%_))
                              (_%tl119418119439%_ (##cdr _%e119416119434%_)))
                          (if (gx#stx-pair? _%tl119418119439%_)
                              (let ((_%e119419119442%_
                                     (gx#syntax-e _%tl119418119439%_)))
                                (let ((_%hd119420119445%_
                                       (##car _%e119419119442%_))
                                      (_%tl119421119447%_
                                       (##cdr _%e119419119442%_)))
                                  (let ((_%id119450%_ _%hd119420119445%_))
                                    (if (gx#stx-pair? _%tl119421119447%_)
                                        (let ((_%e119422119452%_
                                               (gx#syntax-e
                                                _%tl119421119447%_)))
                                          (let ((_%hd119423119455%_
                                                 (##car _%e119422119452%_))
                                                (_%tl119424119457%_
                                                 (##cdr _%e119422119452%_)))
                                            (let ((_%expr119460%_
                                                   _%hd119423119455%_))
                                              (if (gx#stx-null?
                                                   _%tl119424119457%_)
                                                  (if (gx#identifier?
                                                       _%id119450%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id119450%_
                            _%stx119412%_)
                           (cons (gx#core-expand-expression _%expr119460%_)
                                 '())))
               (gx#stx-source _%stx119412%_))
              (_%E119415119430%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119415119430%_)))))
                                        (_%E119415119430%_)))))
                              (_%E119415119430%_))))
                      (_%E119415119430%_)))))
          (_%E119414119462%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx119257%_)
        (letrec ((_%generate119259%_
                  (lambda (_%body119289%_)
                    (let _%lp119291%_ ((_%rest119293%_ _%body119289%_)
                                       (_%ns119294%_
                                        (gx#core-context-namespace__0))
                                       (_%r119295%_ '()))
                      (let* ((_%e119296119311%_ _%rest119293%_)
                             (_%E119309119315%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e119296119311%_)))
                             (_%E119305119319%_
                              (lambda ()
                                (if (gx#stx-null? _%e119296119311%_)
                                    (if '#t
                                        (reverse _%r119295%_)
                                        (_%E119309119315%_))
                                    (_%E119309119315%_))))
                             (_%E119298119376%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119296119311%_)
                                    (let ((_%e119306119323%_
                                           (gx#syntax-e _%e119296119311%_)))
                                      (let ((_%hd119307119326%_
                                             (##car _%e119306119323%_))
                                            (_%tl119308119328%_
                                             (##cdr _%e119306119323%_)))
                                        (let* ((_%hd119331%_
                                                _%hd119307119326%_)
                                               (_%rest119333%_
                                                _%tl119308119328%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd119331%_)
                                                  (_%lp119291%_
                                                   _%rest119333%_
                                                   _%ns119294%_
                                                   (cons (cons _%hd119331%_
                                                               (cons (if _%ns119294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd119331%_
                                  _%ns119294%_
                                  '"#"
                                  _%hd119331%_)
                                 _%hd119331%_)
                             '()))
                 _%r119295%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%e119334119344%_
                                                          _%hd119331%_)
                                                         (_%E119336119348%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e119334119344%_)))
                                                         (_%E119335119372%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e119334119344%_)
                        (let ((_%e119337119352%_
                               (gx#syntax-e _%e119334119344%_)))
                          (let ((_%hd119338119355%_ (##car _%e119337119352%_))
                                (_%tl119339119357%_ (##cdr _%e119337119352%_)))
                            (let ((_%id119360%_ _%hd119338119355%_))
                              (if (gx#stx-pair? _%tl119339119357%_)
                                  (let ((_%e119340119362%_
                                         (gx#syntax-e _%tl119339119357%_)))
                                    (let ((_%hd119341119365%_
                                           (##car _%e119340119362%_))
                                          (_%tl119342119367%_
                                           (##cdr _%e119340119362%_)))
                                      (let ((_%eid119370%_ _%hd119341119365%_))
                                        (if (gx#stx-null? _%tl119342119367%_)
                                            (if (and (gx#identifier?
                                                      _%id119360%_)
                                                     (gx#identifier?
                                                      _%eid119370%_))
                                                (_%lp119291%_
                                                 _%rest119333%_
                                                 _%ns119294%_
                                                 (cons (cons _%id119360%_
                                                             (cons _%eid119370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r119295%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E119336119348%_))
                                            (_%E119336119348%_)))))
                                  (_%E119336119348%_)))))
                        (_%E119336119348%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119335119372%_)))
                                              (_%E119305119319%_)))))
                                    (_%E119305119319%_))))
                             (_%E119297119408%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119296119311%_)
                                    (let ((_%e119299119380%_
                                           (gx#syntax-e _%e119296119311%_)))
                                      (let ((_%hd119300119383%_
                                             (##car _%e119299119380%_))
                                            (_%tl119301119385%_
                                             (##cdr _%e119299119380%_)))
                                        (if (eq? (gx#stx-e _%hd119300119383%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl119301119385%_)
                                                (let ((_%e119302119388%_
                                                       (gx#syntax-e
                                                        _%tl119301119385%_)))
                                                  (let ((_%hd119303119391%_
                                                         (##car _%e119302119388%_))
                                                        (_%tl119304119393%_
                                                         (##cdr _%e119302119388%_)))
                                                    (let* ((_%ns119396%_
                                                            _%hd119303119391%_)
                                                           (_%rest119398%_
                                                            _%tl119304119393%_))
                                                      (if '#t
                                                          (let ((_%ns119406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns119396%_)
                             (symbol->string (gx#stx-e _%ns119396%_))
                             (if (or (gx#stx-string? _%ns119396%_)
                                     (gx#stx-false? _%ns119396%_))
                                 (gx#stx-e _%ns119396%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _%stx119257%_
                                  _%ns119396%_)))))
                    (_%lp119291%_ _%rest119398%_ _%ns119406%_ _%r119295%_))
                  (_%E119298119376%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E119298119376%_))
                                            (_%E119298119376%_))))
                                    (_%E119298119376%_)))))
                        (_%E119297119408%_))))))
          (let* ((_%e119260119267%_ _%stx119257%_)
                 (_%E119262119271%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119260119267%_)))
                 (_%E119261119285%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119260119267%_)
                        (let ((_%e119263119275%_
                               (gx#syntax-e _%e119260119267%_)))
                          (let ((_%hd119264119278%_ (##car _%e119263119275%_))
                                (_%tl119265119280%_ (##cdr _%e119263119275%_)))
                            (let ((_%body119283%_ _%tl119265119280%_))
                              (if (gx#stx-list? _%body119283%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate119259%_ _%body119283%_))
                                  (_%E119262119271%_)))))
                        (_%E119262119271%_)))))
            (_%E119261119285%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx119203%_)
        (let* ((_%e119204119217%_ _%stx119203%_)
               (_%E119206119221%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119204119217%_)))
               (_%E119205119253%_
                (lambda ()
                  (if (gx#stx-pair? _%e119204119217%_)
                      (let ((_%e119207119225%_
                             (gx#syntax-e _%e119204119217%_)))
                        (let ((_%hd119208119228%_ (##car _%e119207119225%_))
                              (_%tl119209119230%_ (##cdr _%e119207119225%_)))
                          (if (gx#stx-pair? _%tl119209119230%_)
                              (let ((_%e119210119233%_
                                     (gx#syntax-e _%tl119209119230%_)))
                                (let ((_%hd119211119236%_
                                       (##car _%e119210119233%_))
                                      (_%tl119212119238%_
                                       (##cdr _%e119210119233%_)))
                                  (let ((_%hd119241%_ _%hd119211119236%_))
                                    (if (gx#stx-pair? _%tl119212119238%_)
                                        (let ((_%e119213119243%_
                                               (gx#syntax-e
                                                _%tl119212119238%_)))
                                          (let ((_%hd119214119246%_
                                                 (##car _%e119213119243%_))
                                                (_%tl119215119248%_
                                                 (##cdr _%e119213119243%_)))
                                            (let ((_%expr119251%_
                                                   _%hd119214119246%_))
                                              (if (gx#stx-null?
                                                   _%tl119215119248%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd119241%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd119241%_)
                          (cons _%expr119251%_ '())))
              (_%E119206119221%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119206119221%_)))))
                                        (_%E119206119221%_)))))
                              (_%E119206119221%_))))
                      (_%E119206119221%_)))))
          (_%E119205119253%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx119149%_)
        (let* ((_%e119150119163%_ _%stx119149%_)
               (_%E119152119167%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119150119163%_)))
               (_%E119151119199%_
                (lambda ()
                  (if (gx#stx-pair? _%e119150119163%_)
                      (let ((_%e119153119171%_
                             (gx#syntax-e _%e119150119163%_)))
                        (let ((_%hd119154119174%_ (##car _%e119153119171%_))
                              (_%tl119155119176%_ (##cdr _%e119153119171%_)))
                          (if (gx#stx-pair? _%tl119155119176%_)
                              (let ((_%e119156119179%_
                                     (gx#syntax-e _%tl119155119176%_)))
                                (let ((_%hd119157119182%_
                                       (##car _%e119156119179%_))
                                      (_%tl119158119184%_
                                       (##cdr _%e119156119179%_)))
                                  (let ((_%hd119187%_ _%hd119157119182%_))
                                    (if (gx#stx-pair? _%tl119158119184%_)
                                        (let ((_%e119159119189%_
                                               (gx#syntax-e
                                                _%tl119158119184%_)))
                                          (let ((_%hd119160119192%_
                                                 (##car _%e119159119189%_))
                                                (_%tl119161119194%_
                                                 (##cdr _%e119159119189%_)))
                                            (let ((_%expr119197%_
                                                   _%hd119160119192%_))
                                              (if (gx#stx-null?
                                                   _%tl119161119194%_)
                                                  (if (gx#identifier?
                                                       _%hd119187%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd119187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr119197%_ '())))
              (_%E119152119167%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119152119167%_)))))
                                        (_%E119152119167%_)))))
                              (_%E119152119167%_))))
                      (_%E119152119167%_)))))
          (_%E119151119199%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx119095%_)
        (let* ((_%e119096119109%_ _%stx119095%_)
               (_%E119098119113%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119096119109%_)))
               (_%E119097119145%_
                (lambda ()
                  (if (gx#stx-pair? _%e119096119109%_)
                      (let ((_%e119099119117%_
                             (gx#syntax-e _%e119096119109%_)))
                        (let ((_%hd119100119120%_ (##car _%e119099119117%_))
                              (_%tl119101119122%_ (##cdr _%e119099119117%_)))
                          (if (gx#stx-pair? _%tl119101119122%_)
                              (let ((_%e119102119125%_
                                     (gx#syntax-e _%tl119101119122%_)))
                                (let ((_%hd119103119128%_
                                       (##car _%e119102119125%_))
                                      (_%tl119104119130%_
                                       (##cdr _%e119102119125%_)))
                                  (let ((_%id119133%_ _%hd119103119128%_))
                                    (if (gx#stx-pair? _%tl119104119130%_)
                                        (let ((_%e119105119135%_
                                               (gx#syntax-e
                                                _%tl119104119130%_)))
                                          (let ((_%hd119106119138%_
                                                 (##car _%e119105119135%_))
                                                (_%tl119107119140%_
                                                 (##cdr _%e119105119135%_)))
                                            (let ((_%alias-id119143%_
                                                   _%hd119106119138%_))
                                              (if (gx#stx-null?
                                                   _%tl119107119140%_)
                                                  (if (and (gx#identifier?
                                                            _%id119133%_)
                                                           (gx#identifier?
                                                            _%alias-id119143%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id119133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id119143%_ '())))
              (_%E119098119113%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119098119113%_)))))
                                        (_%E119098119113%_)))))
                              (_%E119098119113%_))))
                      (_%E119098119113%_)))))
          (_%E119097119145%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx119052%_)
        (let* ((_%e119053119063%_ _%stx119052%_)
               (_%E119055119067%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119053119063%_)))
               (_%E119054119091%_
                (lambda ()
                  (if (gx#stx-pair? _%e119053119063%_)
                      (let ((_%e119056119071%_
                             (gx#syntax-e _%e119053119063%_)))
                        (let ((_%hd119057119074%_ (##car _%e119056119071%_))
                              (_%tl119058119076%_ (##cdr _%e119056119071%_)))
                          (if (gx#stx-pair? _%tl119058119076%_)
                              (let ((_%e119059119079%_
                                     (gx#syntax-e _%tl119058119076%_)))
                                (let ((_%hd119060119082%_
                                       (##car _%e119059119079%_))
                                      (_%tl119061119084%_
                                       (##cdr _%e119059119079%_)))
                                  (let* ((_%hd119087%_ _%hd119060119082%_)
                                         (_%body119089%_ _%tl119061119084%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd119087%_)
                                             (gx#stx-list? _%body119089%_)
                                             (not (gx#stx-null?
                                                   _%body119089%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd119087%_)
                                         _%body119089%_)
                                        (_%E119055119067%_)))))
                              (_%E119055119067%_))))
                      (_%E119055119067%_)))))
          (_%E119054119091%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx118988%_)
        (letrec ((_%generate118990%_
                  (lambda (_%clause119020%_)
                    (let* ((_%e119021119028%_ _%clause119020%_)
                           (_%E119023119032%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx118988%_
                               _%clause119020%_)))
                           (_%E119022119048%_
                            (lambda ()
                              (if (gx#stx-pair? _%e119021119028%_)
                                  (let ((_%e119024119036%_
                                         (gx#syntax-e _%e119021119028%_)))
                                    (let ((_%hd119025119039%_
                                           (##car _%e119024119036%_))
                                          (_%tl119026119041%_
                                           (##cdr _%e119024119036%_)))
                                      (let* ((_%hd119044%_ _%hd119025119039%_)
                                             (_%body119046%_
                                              _%tl119026119041%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd119044%_)
                                                 (gx#stx-list? _%body119046%_)
                                                 (not (gx#stx-null?
                                                       _%body119046%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd119044%_)
                                                   _%body119046%_)
                                             (gx#stx-source _%clause119020%_))
                                            (_%E119023119032%_)))))
                                  (_%E119023119032%_)))))
                      (_%E119022119048%_)))))
          (let* ((_%e118991118998%_ _%stx118988%_)
                 (_%E118993119002%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e118991118998%_)))
                 (_%E118992119016%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118991118998%_)
                        (let ((_%e118994119006%_
                               (gx#syntax-e _%e118991118998%_)))
                          (let ((_%hd118995119009%_ (##car _%e118994119006%_))
                                (_%tl118996119011%_ (##cdr _%e118994119006%_)))
                            (let ((_%clauses119014%_ _%tl118996119011%_))
                              (if (gx#stx-list? _%clauses119014%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate118990%_
                                    _%clauses119014%_))
                                  (_%E118993119002%_)))))
                        (_%E118993119002%_)))))
            (_%E118992119016%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx118889%_ _%form118890%_)
        (letrec ((_%generate118892%_
                  (lambda (_%bind118935%_)
                    (let* ((_%e118936118946%_ _%bind118935%_)
                           (_%E118938118950%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx118889%_
                               _%bind118935%_)))
                           (_%E118937118974%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118936118946%_)
                                  (let ((_%e118939118954%_
                                         (gx#syntax-e _%e118936118946%_)))
                                    (let ((_%hd118940118957%_
                                           (##car _%e118939118954%_))
                                          (_%tl118941118959%_
                                           (##cdr _%e118939118954%_)))
                                      (let ((_%ids118962%_ _%hd118940118957%_))
                                        (if (gx#stx-pair? _%tl118941118959%_)
                                            (let ((_%e118942118964%_
                                                   (gx#syntax-e
                                                    _%tl118941118959%_)))
                                              (let ((_%hd118943118967%_
                                                     (##car _%e118942118964%_))
                                                    (_%tl118944118969%_
                                                     (##cdr _%e118942118964%_)))
                                                (let ((_%expr118972%_
                                                       _%hd118943118967%_))
                                                  (if (gx#stx-null?
                                                       _%tl118944118969%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids118962%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids118962%_)
                        (cons _%expr118972%_ '()))
                  (_%E118938118950%_))
              (_%E118938118950%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E118938118950%_)))))
                                  (_%E118938118950%_)))))
                      (_%E118937118974%_)))))
          (let* ((_%e118893118903%_ _%stx118889%_)
                 (_%E118895118907%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e118893118903%_)))
                 (_%E118894118931%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118893118903%_)
                        (let ((_%e118896118911%_
                               (gx#syntax-e _%e118893118903%_)))
                          (let ((_%hd118897118914%_ (##car _%e118896118911%_))
                                (_%tl118898118916%_ (##cdr _%e118896118911%_)))
                            (if (gx#stx-pair? _%tl118898118916%_)
                                (let ((_%e118899118919%_
                                       (gx#syntax-e _%tl118898118916%_)))
                                  (let ((_%hd118900118922%_
                                         (##car _%e118899118919%_))
                                        (_%tl118901118924%_
                                         (##cdr _%e118899118919%_)))
                                    (let* ((_%hd118927%_ _%hd118900118922%_)
                                           (_%body118929%_ _%tl118901118924%_))
                                      (if (and (gx#stx-list? _%hd118927%_)
                                               (gx#stx-list? _%body118929%_)
                                               (not (gx#stx-null?
                                                     _%body118929%_)))
                                          (gx#core-cons*
                                           _%form118890%_
                                           (gx#stx-map1
                                            _%generate118892%_
                                            _%hd118927%_)
                                           _%body118929%_)
                                          (_%E118895118907%_)))))
                                (_%E118895118907%_))))
                        (_%E118895118907%_)))))
            (_%E118894118931%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx118981%_)
        (let ((_%form118983%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx118981%_ _%form118983%_))))
    (define gx#macro-expand-let-values
      (lambda _g121370_
        (let ((_g121369_ (##length _g121370_)))
          (cond ((##fx= _g121369_ 1)
                 (apply gx#macro-expand-let-values__0 _g121370_))
                ((##fx= _g121369_ 2)
                 (apply gx#macro-expand-let-values__% _g121370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g121370_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx118886%_)
        (gx#macro-expand-let-values__% _%stx118886%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx118884%_)
        (gx#macro-expand-let-values__% _%stx118884%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx118775%_)
        (let* ((_%e118776118802%_ _%stx118775%_)
               (_%E118788118806%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e118776118802%_)))
               (_%E118778118848%_
                (lambda ()
                  (if (gx#stx-pair? _%e118776118802%_)
                      (let ((_%e118789118810%_
                             (gx#syntax-e _%e118776118802%_)))
                        (let ((_%hd118790118813%_ (##car _%e118789118810%_))
                              (_%tl118791118815%_ (##cdr _%e118789118810%_)))
                          (if (gx#stx-pair? _%tl118791118815%_)
                              (let ((_%e118792118818%_
                                     (gx#syntax-e _%tl118791118815%_)))
                                (let ((_%hd118793118821%_
                                       (##car _%e118792118818%_))
                                      (_%tl118794118823%_
                                       (##cdr _%e118792118818%_)))
                                  (let ((_%test118826%_ _%hd118793118821%_))
                                    (if (gx#stx-pair? _%tl118794118823%_)
                                        (let ((_%e118795118828%_
                                               (gx#syntax-e
                                                _%tl118794118823%_)))
                                          (let ((_%hd118796118831%_
                                                 (##car _%e118795118828%_))
                                                (_%tl118797118833%_
                                                 (##cdr _%e118795118828%_)))
                                            (let ((_%K118836%_
                                                   _%hd118796118831%_))
                                              (if (gx#stx-pair?
                                                   _%tl118797118833%_)
                                                  (let ((_%e118798118838%_
                                                         (gx#syntax-e
                                                          _%tl118797118833%_)))
                                                    (let ((_%hd118799118841%_
                                                           (##car _%e118798118838%_))
                                                          (_%tl118800118843%_
                                                           (##cdr _%e118798118838%_)))
                                                      (let ((_%E118846%_
                                                             _%hd118799118841%_))
                                                        (if (gx#stx-null?
                                                             _%tl118800118843%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test118826%_
                         _%K118836%_
                         _%E118846%_)
                        (_%E118788118806%_))
                    (_%E118788118806%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E118788118806%_)))))
                                        (_%E118788118806%_)))))
                              (_%E118788118806%_))))
                      (_%E118788118806%_))))
               (_%E118777118880%_
                (lambda ()
                  (if (gx#stx-pair? _%e118776118802%_)
                      (let ((_%e118779118852%_
                             (gx#syntax-e _%e118776118802%_)))
                        (let ((_%hd118780118855%_ (##car _%e118779118852%_))
                              (_%tl118781118857%_ (##cdr _%e118779118852%_)))
                          (if (gx#stx-pair? _%tl118781118857%_)
                              (let ((_%e118782118860%_
                                     (gx#syntax-e _%tl118781118857%_)))
                                (let ((_%hd118783118863%_
                                       (##car _%e118782118860%_))
                                      (_%tl118784118865%_
                                       (##cdr _%e118782118860%_)))
                                  (let ((_%test118868%_ _%hd118783118863%_))
                                    (if (gx#stx-pair? _%tl118784118865%_)
                                        (let ((_%e118785118870%_
                                               (gx#syntax-e
                                                _%tl118784118865%_)))
                                          (let ((_%hd118786118873%_
                                                 (##car _%e118785118870%_))
                                                (_%tl118787118875%_
                                                 (##cdr _%e118785118870%_)))
                                            (let ((_%K118878%_
                                                   _%hd118786118873%_))
                                              (if (gx#stx-null?
                                                   _%tl118787118875%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test118868%_
                                                       _%K118878%_
                                                       '#!void)
                                                      (_%E118778118848%_))
                                                  (_%E118778118848%_)))))
                                        (_%E118778118848%_)))))
                              (_%E118778118848%_))))
                      (_%E118778118848%_)))))
          (_%E118777118880%_))))
    (define gx#free-identifier=?
      (lambda (_%xid118760%_ _%yid118761%_)
        (let ((_%xe118763%_ (gx#resolve-identifier__0 _%xid118760%_))
              (_%ye118764%_ (gx#resolve-identifier__0 _%yid118761%_)))
          (if (and _%xe118763%_ _%ye118764%_)
              (let ((_%$e118767%_ (eq? _%xe118763%_ _%ye118764%_)))
                (if _%$e118767%_
                    _%$e118767%_
                    (if (##structure-instance-of? _%xe118763%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye118764%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe118763%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye118764%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe118763%_ _%ye118764%_)
                  '#f
                  (gx#stx-eq? _%xid118760%_ _%yid118761%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid118741%_ _%yid118742%_)
        (letrec ((_%context118744%_
                  (lambda (_%e118758%_)
                    (if (##structure-direct-instance-of?
                         _%e118758%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e118758%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks118745%_
                  (lambda (_%e118753%_)
                    (if (symbol? _%e118753%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e118753%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e118753%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e118753%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap118746%_
                  (lambda (_%e118751%_)
                    (if (symbol? _%e118751%_)
                        _%e118751%_
                        (gx#syntax-local-unwrap _%e118751%_)))))
          (let ((_%x118748%_ (_%unwrap118746%_ _%xid118741%_))
                (_%y118749%_ (_%unwrap118746%_ _%yid118742%_)))
            (if (gx#stx-eq? _%x118748%_ _%y118749%_)
                (if (eq? (_%context118744%_ _%x118748%_)
                         (_%context118744%_ _%y118749%_))
                    (equal? (_%marks118745%_ _%x118748%_)
                            (_%marks118745%_ _%y118749%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx118739%_)
        (if (gx#identifier? _%stx118739%_)
            (gx#core-identifier=? _%stx118739%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx118737%_)
        (if (gx#identifier? _%stx118737%_)
            (gx#core-identifier=? _%stx118737%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx118680%_ _%where118681%_)
        (let _%lp118683%_ ((_%rest118685%_ (gx#syntax->list _%stx118680%_)))
          (let* ((_%rest118686118694%_ _%rest118685%_)
                 (_%else118688118702%_ (lambda () '#t))
                 (_%K118690118715%_
                  (lambda (_%rest118705%_ _%hd118706%_)
                    (if (not (gx#identifier? _%hd118706%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where118681%_
                         _%hd118706%_)
                        (if (__find (lambda (_%g118708118710%_)
                                      (gx#bound-identifier=?
                                       _%g118708118710%_
                                       _%hd118706%_))
                                    _%rest118705%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where118681%_
                             _%hd118706%_)
                            (_%lp118683%_ _%rest118705%_))))))
            (if (##pair? _%rest118686118694%_)
                (let ((_%hd118691118718%_ (##car _%rest118686118694%_))
                      (_%tl118692118720%_ (##cdr _%rest118686118694%_)))
                  (let* ((_%hd118723%_ _%hd118691118718%_)
                         (_%rest118725%_ _%tl118692118720%_))
                    (_%K118690118715%_ _%rest118725%_ _%hd118723%_)))
                (_%else118688118702%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx118730%_)
        (let ((_%where118732%_ _%stx118730%_))
          (gx#check-duplicate-identifiers__% _%stx118730%_ _%where118732%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g121372_
        (let ((_g121371_ (##length _g121372_)))
          (cond ((##fx= _g121371_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g121372_))
                ((##fx= _g121371_ 2)
                 (apply gx#check-duplicate-identifiers__% _g121372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g121372_))))))
    (define gx#core-bind-values?
      (lambda (_%stx118672%_)
        (gx#stx-andmap
         (lambda (_%x118674%_)
           (let ((_%$e118676%_ (gx#identifier? _%x118674%_)))
             (if _%$e118676%_ _%$e118676%_ (gx#stx-false? _%x118674%_))))
         _%stx118672%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx118636%_ _%rebind?118637%_ _%phi118638%_ _%ctx118639%_)
        (gx#stx-for-each1
         (lambda (_%id118641%_)
           (if (gx#identifier? _%id118641%_)
               (gx#core-bind-runtime!__%
                _%id118641%_
                _%rebind?118637%_
                _%phi118638%_
                _%ctx118639%_)
               '#!void))
         _%stx118636%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx118646%_)
        (let* ((_%rebind?118648%_ '#f)
               (_%phi118650%_ (gx#current-expander-phi))
               (_%ctx118652%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118646%_
           _%rebind?118648%_
           _%phi118650%_
           _%ctx118652%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx118654%_ _%rebind?118655%_)
        (let* ((_%phi118657%_ (gx#current-expander-phi))
               (_%ctx118659%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118654%_
           _%rebind?118655%_
           _%phi118657%_
           _%ctx118659%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx118661%_ _%rebind?118662%_ _%phi118663%_)
        (let ((_%ctx118665%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118661%_
           _%rebind?118662%_
           _%phi118663%_
           _%ctx118665%_))))
    (define gx#core-bind-values!
      (lambda _g121374_
        (let ((_g121373_ (##length _g121374_)))
          (cond ((##fx= _g121373_ 1) (apply gx#core-bind-values!__0 _g121374_))
                ((##fx= _g121373_ 2) (apply gx#core-bind-values!__1 _g121374_))
                ((##fx= _g121373_ 3) (apply gx#core-bind-values!__2 _g121374_))
                ((##fx= _g121373_ 4) (apply gx#core-bind-values!__% _g121374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g121374_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx118631%_)
        (gx#stx-map1
         (lambda (_%x118633%_)
           (if (gx#identifier? _%x118633%_)
               (gx#core-quote-syntax__0 _%x118633%_)
               '#f))
         _%stx118631%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx118624%_)
        (if (gx#identifier? _%stx118624%_)
            (let* ((_%bind118626%_ (gx#resolve-identifier__0 _%stx118624%_))
                   (_%$e118628%_ (not _%bind118626%_)))
              (if _%$e118628%_
                  _%$e118628%_
                  (##structure-instance-of?
                   _%bind118626%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id118613%_ _%form118614%_)
        (let ((_%bind118616%_ (gx#resolve-identifier__0 _%id118613%_)))
          (if (##structure-instance-of? _%bind118616%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id118613%_)
              (if (not _%bind118616%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id118613%_)))
                      (gx#core-quote-syntax__0 _%id118613%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form118614%_
                       _%id118613%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form118614%_
                   _%id118613%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id118568%_ _%rebind?118569%_ _%phi118570%_ _%ctx118571%_)
        (let* ((_%key118573%_ (gx#core-identifier-key _%id118568%_))
               (_%eid118575%_
                (gx#make-binding-id__%
                 _%key118573%_
                 '#f
                 _%phi118570%_
                 _%ctx118571%_))
               (_%bind118581%_
                (if (##structure-instance-of?
                     _%ctx118571%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid118575%_
                     _%key118573%_
                     _%phi118570%_
                     _%ctx118571%_)
                    (if (##structure-instance-of?
                         _%ctx118571%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid118575%_
                         _%key118573%_
                         _%phi118570%_)
                        (if (##structure-instance-of?
                             _%ctx118571%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid118575%_
                             _%key118573%_
                             _%phi118570%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid118575%_
                             _%key118573%_
                             _%phi118570%_))))))
          (gx#bind-identifier!__%
           _%id118568%_
           _%bind118581%_
           _%rebind?118569%_
           _%phi118570%_
           _%ctx118571%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id118587%_)
        (let* ((_%rebind?118589%_ '#f)
               (_%phi118591%_ (gx#current-expander-phi))
               (_%ctx118593%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118587%_
           _%rebind?118589%_
           _%phi118591%_
           _%ctx118593%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id118595%_ _%rebind?118596%_)
        (let* ((_%phi118598%_ (gx#current-expander-phi))
               (_%ctx118600%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118595%_
           _%rebind?118596%_
           _%phi118598%_
           _%ctx118600%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id118602%_ _%rebind?118603%_ _%phi118604%_)
        (let ((_%ctx118606%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118602%_
           _%rebind?118603%_
           _%phi118604%_
           _%ctx118606%_))))
    (define gx#core-bind-runtime!
      (lambda _g121376_
        (let ((_g121375_ (##length _g121376_)))
          (cond ((##fx= _g121375_ 1)
                 (apply gx#core-bind-runtime!__0 _g121376_))
                ((##fx= _g121375_ 2)
                 (apply gx#core-bind-runtime!__1 _g121376_))
                ((##fx= _g121375_ 3)
                 (apply gx#core-bind-runtime!__2 _g121376_))
                ((##fx= _g121375_ 4)
                 (apply gx#core-bind-runtime!__% _g121376_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g121376_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id118520%_
               _%eid118521%_
               _%rebind?118522%_
               _%phi118523%_
               _%ctx118524%_)
        (let* ((_%key118526%_ (gx#core-identifier-key _%id118520%_))
               (_%bind118531%_
                (if (##structure-instance-of?
                     _%ctx118524%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid118521%_
                     _%key118526%_
                     _%phi118523%_
                     _%ctx118524%_)
                    (if (##structure-instance-of?
                         _%ctx118524%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid118521%_
                         _%key118526%_
                         _%phi118523%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid118521%_
                         _%key118526%_
                         _%phi118523%_)))))
          (gx#bind-identifier!__%
           _%id118520%_
           _%bind118531%_
           _%rebind?118522%_
           _%phi118523%_
           _%ctx118524%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id118537%_ _%eid118538%_)
        (let* ((_%rebind?118540%_ '#f)
               (_%phi118542%_ (gx#current-expander-phi))
               (_%ctx118544%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118537%_
           _%eid118538%_
           _%rebind?118540%_
           _%phi118542%_
           _%ctx118544%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id118546%_ _%eid118547%_ _%rebind?118548%_)
        (let* ((_%phi118550%_ (gx#current-expander-phi))
               (_%ctx118552%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118546%_
           _%eid118547%_
           _%rebind?118548%_
           _%phi118550%_
           _%ctx118552%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id118554%_ _%eid118555%_ _%rebind?118556%_ _%phi118557%_)
        (let ((_%ctx118559%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118554%_
           _%eid118555%_
           _%rebind?118556%_
           _%phi118557%_
           _%ctx118559%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g121378_
        (let ((_g121377_ (##length _g121378_)))
          (cond ((##fx= _g121377_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g121378_))
                ((##fx= _g121377_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g121378_))
                ((##fx= _g121377_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g121378_))
                ((##fx= _g121377_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g121378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g121378_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id118480%_
               _%eid118481%_
               _%rebind?118482%_
               _%phi118483%_
               _%ctx118484%_)
        (gx#bind-identifier!__%
         _%id118480%_
         (##structure
          gx#extern-binding::t
          _%eid118481%_
          (gx#core-identifier-key _%id118480%_)
          _%phi118483%_)
         _%rebind?118482%_
         _%phi118483%_
         _%ctx118484%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id118489%_ _%eid118490%_)
        (let* ((_%rebind?118492%_ '#f)
               (_%phi118494%_ (gx#current-expander-phi))
               (_%ctx118496%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118489%_
           _%eid118490%_
           _%rebind?118492%_
           _%phi118494%_
           _%ctx118496%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id118498%_ _%eid118499%_ _%rebind?118500%_)
        (let* ((_%phi118502%_ (gx#current-expander-phi))
               (_%ctx118504%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118498%_
           _%eid118499%_
           _%rebind?118500%_
           _%phi118502%_
           _%ctx118504%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id118506%_ _%eid118507%_ _%rebind?118508%_ _%phi118509%_)
        (let ((_%ctx118511%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118506%_
           _%eid118507%_
           _%rebind?118508%_
           _%phi118509%_
           _%ctx118511%_))))
    (define gx#core-bind-extern!
      (lambda _g121380_
        (let ((_g121379_ (##length _g121380_)))
          (cond ((##fx= _g121379_ 2) (apply gx#core-bind-extern!__0 _g121380_))
                ((##fx= _g121379_ 3) (apply gx#core-bind-extern!__1 _g121380_))
                ((##fx= _g121379_ 4) (apply gx#core-bind-extern!__2 _g121380_))
                ((##fx= _g121379_ 5) (apply gx#core-bind-extern!__% _g121380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g121380_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id118434%_
               _%e118435%_
               _%rebind?118436%_
               _%phi118437%_
               _%ctx118438%_)
        (gx#bind-identifier!__%
         _%id118434%_
         (let ((_%key118443%_ (gx#core-identifier-key _%id118434%_))
               (_%e118444%_
                (if (or (##structure-instance-of? _%e118435%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e118435%_
                         'gx#expander-context::t))
                    _%e118435%_
                    (##structure
                     gx#user-expander::t
                     _%e118435%_
                     _%ctx118438%_
                     _%phi118437%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key118443%_
             '#t
             _%phi118437%_
             _%ctx118438%_)
            _%key118443%_
            _%phi118437%_
            _%e118444%_))
         _%rebind?118436%_
         _%phi118437%_
         _%ctx118438%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id118449%_ _%e118450%_)
        (let* ((_%rebind?118452%_ '#f)
               (_%phi118454%_ (gx#current-expander-phi))
               (_%ctx118456%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118449%_
           _%e118450%_
           _%rebind?118452%_
           _%phi118454%_
           _%ctx118456%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id118458%_ _%e118459%_ _%rebind?118460%_)
        (let* ((_%phi118462%_ (gx#current-expander-phi))
               (_%ctx118464%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118458%_
           _%e118459%_
           _%rebind?118460%_
           _%phi118462%_
           _%ctx118464%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id118466%_ _%e118467%_ _%rebind?118468%_ _%phi118469%_)
        (let ((_%ctx118471%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118466%_
           _%e118467%_
           _%rebind?118468%_
           _%phi118469%_
           _%ctx118471%_))))
    (define gx#core-bind-syntax!
      (lambda _g121382_
        (let ((_g121381_ (##length _g121382_)))
          (cond ((##fx= _g121381_ 2) (apply gx#core-bind-syntax!__0 _g121382_))
                ((##fx= _g121381_ 3) (apply gx#core-bind-syntax!__1 _g121382_))
                ((##fx= _g121381_ 4) (apply gx#core-bind-syntax!__2 _g121382_))
                ((##fx= _g121381_ 5) (apply gx#core-bind-syntax!__% _g121382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g121382_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id118417%_ _%e118418%_ _%rebind?118419%_)
        (gx#core-bind-syntax!__%
         _%id118417%_
         _%e118418%_
         _%rebind?118419%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id118424%_ _%e118425%_)
        (let ((_%rebind?118427%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id118424%_
           _%e118425%_
           _%rebind?118427%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g121384_
        (let ((_g121383_ (##length _g121384_)))
          (cond ((##fx= _g121383_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g121384_))
                ((##fx= _g121383_ 3)
                 (apply gx#core-bind-root-syntax!__% _g121384_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g121384_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id118375%_
               _%alias-id118376%_
               _%rebind?118377%_
               _%phi118378%_
               _%ctx118379%_)
        (gx#bind-identifier!__%
         _%id118375%_
         (let ((_%key118381%_ (gx#core-identifier-key _%id118375%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key118381%_
             '#t
             _%phi118378%_
             _%ctx118379%_)
            _%key118381%_
            _%phi118378%_
            _%alias-id118376%_))
         _%rebind?118377%_
         _%phi118378%_
         _%ctx118379%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id118386%_ _%alias-id118387%_)
        (let* ((_%rebind?118389%_ '#f)
               (_%phi118391%_ (gx#current-expander-phi))
               (_%ctx118393%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118386%_
           _%alias-id118387%_
           _%rebind?118389%_
           _%phi118391%_
           _%ctx118393%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id118395%_ _%alias-id118396%_ _%rebind?118397%_)
        (let* ((_%phi118399%_ (gx#current-expander-phi))
               (_%ctx118401%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118395%_
           _%alias-id118396%_
           _%rebind?118397%_
           _%phi118399%_
           _%ctx118401%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id118403%_ _%alias-id118404%_ _%rebind?118405%_ _%phi118406%_)
        (let ((_%ctx118408%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118403%_
           _%alias-id118404%_
           _%rebind?118405%_
           _%phi118406%_
           _%ctx118408%_))))
    (define gx#core-bind-alias!
      (lambda _g121386_
        (let ((_g121385_ (##length _g121386_)))
          (cond ((##fx= _g121385_ 2) (apply gx#core-bind-alias!__0 _g121386_))
                ((##fx= _g121385_ 3) (apply gx#core-bind-alias!__1 _g121386_))
                ((##fx= _g121385_ 4) (apply gx#core-bind-alias!__2 _g121386_))
                ((##fx= _g121385_ 5) (apply gx#core-bind-alias!__% _g121386_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g121386_))))))
    (define gx#make-binding-id__%
      (lambda (_%key118325%_ _%syntax?118326%_ _%phi118327%_ _%ctx118328%_)
        (if (uninterned-symbol? _%key118325%_)
            (##gensym 'L)
            (if (pair? _%key118325%_)
                (gensym (car _%key118325%_))
                (if (##structure-instance-of? _%ctx118328%_ 'gx#top-context::t)
                    (let ((_%ns118333%_
                           (gx#core-context-namespace__% _%ctx118328%_)))
                      (if (and (fxzero? _%phi118327%_) (not _%syntax?118326%_))
                          (if _%ns118333%_
                              (make-symbol__1 _%ns118333%_ '"#" _%key118325%_)
                              _%key118325%_)
                          (if _%syntax?118326%_
                              (make-symbol__1
                               (let ((_%$e118337%_ _%ns118333%_))
                                 (if _%$e118337%_ _%$e118337%_ '""))
                               '"[:"
                               (number->string _%phi118327%_)
                               '":]#"
                               _%key118325%_)
                              (make-symbol__1
                               (let ((_%$e118341%_ _%ns118333%_))
                                 (if _%$e118341%_ _%$e118341%_ '""))
                               '"["
                               (number->string _%phi118327%_)
                               '"]#"
                               _%key118325%_))))
                    (gensym _%key118325%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key118348%_)
        (let* ((_%syntax?118350%_ '#f)
               (_%phi118352%_ (gx#current-expander-phi))
               (_%ctx118354%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118348%_
           _%syntax?118350%_
           _%phi118352%_
           _%ctx118354%_))))
    (define gx#make-binding-id__1
      (lambda (_%key118356%_ _%syntax?118357%_)
        (let* ((_%phi118359%_ (gx#current-expander-phi))
               (_%ctx118361%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118356%_
           _%syntax?118357%_
           _%phi118359%_
           _%ctx118361%_))))
    (define gx#make-binding-id__2
      (lambda (_%key118363%_ _%syntax?118364%_ _%phi118365%_)
        (let ((_%ctx118367%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118363%_
           _%syntax?118364%_
           _%phi118365%_
           _%ctx118367%_))))
    (define gx#make-binding-id
      (lambda _g121388_
        (let ((_g121387_ (##length _g121388_)))
          (cond ((##fx= _g121387_ 1) (apply gx#make-binding-id__0 _g121388_))
                ((##fx= _g121387_ 2) (apply gx#make-binding-id__1 _g121388_))
                ((##fx= _g121387_ 3) (apply gx#make-binding-id__2 _g121388_))
                ((##fx= _g121387_ 4) (apply gx#make-binding-id__% _g121388_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g121388_))))))))
