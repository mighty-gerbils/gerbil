(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1712697255)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx121297%_)
        (letrec ((_%expand-special121299%_
                  (lambda (_%hd121301%_ _%K121302%_ _%rest121303%_ _%r121304%_)
                    (_%K121302%_
                     _%rest121303%_
                     (cons (gx#core-expand-top _%hd121301%_) _%r121304%_)))))
          (gx#core-expand-block__0 _%stx121297%_ _%expand-special121299%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx121050%_)
        (letrec ((_%expand-special121052%_
                  (lambda (_%hd121172%_ _%K121173%_ _%rest121174%_ _%r121175%_)
                    (let* ((_%K121179%_
                            (lambda (_%e121177%_)
                              (_%K121173%_
                               _%rest121174%_
                               (cons _%e121177%_ _%r121175%_))))
                           (_%e121180121209%_ _%hd121172%_)
                           (_%E121204121213%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e121180121209%_)))
                           (_%E121200121225%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121180121209%_)
                                  (let ((_%e121205121217%_
                                         (gx#syntax-e _%e121180121209%_)))
                                    (let ((_%hd121206121220%_
                                           (##car _%e121205121217%_))
                                          (_%tl121207121222%_
                                           (##cdr _%e121205121217%_)))
                                      (if (and (gx#identifier?
                                                _%hd121206121220%_)
                                               (gx#core-identifier=?
                                                _%hd121206121220%_
                                                '%#define-runtime))
                                          (if '#t
                                              (_%K121179%_
                                               (gx#core-expand-define-runtime%
                                                _%hd121172%_))
                                              (_%E121204121213%_))
                                          (_%E121204121213%_))))
                                  (_%E121204121213%_))))
                           (_%E121196121237%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121180121209%_)
                                  (let ((_%e121201121229%_
                                         (gx#syntax-e _%e121180121209%_)))
                                    (let ((_%hd121202121232%_
                                           (##car _%e121201121229%_))
                                          (_%tl121203121234%_
                                           (##cdr _%e121201121229%_)))
                                      (if (and (gx#identifier?
                                                _%hd121202121232%_)
                                               (gx#core-identifier=?
                                                _%hd121202121232%_
                                                '%#define-alias))
                                          (if '#t
                                              (_%K121179%_
                                               (gx#core-expand-define-alias%
                                                _%hd121172%_))
                                              (_%E121200121225%_))
                                          (_%E121200121225%_))))
                                  (_%E121200121225%_))))
                           (_%E121186121249%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121180121209%_)
                                  (let ((_%e121197121241%_
                                         (gx#syntax-e _%e121180121209%_)))
                                    (let ((_%hd121198121244%_
                                           (##car _%e121197121241%_))
                                          (_%tl121199121246%_
                                           (##cdr _%e121197121241%_)))
                                      (if (and (gx#identifier?
                                                _%hd121198121244%_)
                                               (gx#core-identifier=?
                                                _%hd121198121244%_
                                                '%#define-syntax))
                                          (if '#t
                                              (_%K121179%_
                                               (gx#core-expand-define-syntax%
                                                _%hd121172%_))
                                              (_%E121196121237%_))
                                          (_%E121196121237%_))))
                                  (_%E121196121237%_))))
                           (_%E121182121281%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121180121209%_)
                                  (let ((_%e121187121253%_
                                         (gx#syntax-e _%e121180121209%_)))
                                    (let ((_%hd121188121256%_
                                           (##car _%e121187121253%_))
                                          (_%tl121189121258%_
                                           (##cdr _%e121187121253%_)))
                                      (if (and (gx#identifier?
                                                _%hd121188121256%_)
                                               (gx#core-identifier=?
                                                _%hd121188121256%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl121189121258%_)
                                              (let ((_%e121190121261%_
                                                     (gx#syntax-e
                                                      _%tl121189121258%_)))
                                                (let ((_%hd121191121264%_
                                                       (##car _%e121190121261%_))
                                                      (_%tl121192121266%_
                                                       (##cdr _%e121190121261%_)))
                                                  (let ((_%hd-bind121269%_
                                                         _%hd121191121264%_))
                                                    (if (gx#stx-pair?
                                                         _%tl121192121266%_)
                                                        (let ((_%e121193121271%_
                                                               (gx#syntax-e
                                                                _%tl121192121266%_)))
                                                          (let ((_%hd121194121274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e121193121271%_))
                        (_%tl121195121276%_ (##cdr _%e121193121271%_)))
                    (let ((_%expr121279%_ _%hd121194121274%_))
                      (if (gx#stx-null? _%tl121195121276%_)
                          (if (gx#core-bind-values? _%hd-bind121269%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind121269%_)
                                (_%K121179%_ _%hd121172%_))
                              (_%E121186121249%_))
                          (_%E121186121249%_)))))
                (_%E121186121249%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121186121249%_))
                                          (_%E121186121249%_))))
                                  (_%E121186121249%_))))
                           (_%E121181121293%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121180121209%_)
                                  (let ((_%e121183121285%_
                                         (gx#syntax-e _%e121180121209%_)))
                                    (let ((_%hd121184121288%_
                                           (##car _%e121183121285%_))
                                          (_%tl121185121290%_
                                           (##cdr _%e121183121285%_)))
                                      (if (and (gx#identifier?
                                                _%hd121184121288%_)
                                               (gx#core-identifier=?
                                                _%hd121184121288%_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_%K121179%_
                                               (gx#core-expand-begin-syntax%
                                                _%hd121172%_))
                                              (_%E121182121281%_))
                                          (_%E121182121281%_))))
                                  (_%E121182121281%_)))))
                      (_%E121181121293%_))))
                 (_%eval-body121053%_
                  (lambda (_%rbody121061%_)
                    (let _%lp121063%_ ((_%rest121065%_ _%rbody121061%_)
                                       (_%body121066%_ '())
                                       (_%ebody121067%_ '()))
                      (let* ((_%rest121068121076%_ _%rest121065%_)
                             (_%else121070121084%_
                              (lambda ()
                                (values _%body121066%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody121067%_)
                                          (gx#stx-source _%stx121050%_))))))
                             (_%K121072121160%_
                              (lambda (_%rest121087%_ _%hd121088%_)
                                (let* ((_%e121089121106%_ _%hd121088%_)
                                       (_%E121101121110%_
                                        (lambda ()
                                          (_%lp121063%_
                                           _%rest121087%_
                                           (cons _%hd121088%_ _%body121066%_)
                                           (cons _%hd121088%_
                                                 _%ebody121067%_))))
                                       (_%E121091121122%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121089121106%_)
                                              (let ((_%e121102121114%_
                                                     (gx#syntax-e
                                                      _%e121089121106%_)))
                                                (let ((_%hd121103121117%_
                                                       (##car _%e121102121114%_))
                                                      (_%tl121104121119%_
                                                       (##cdr _%e121102121114%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121103121117%_)
                                                           (gx#core-identifier=?
                                                            _%hd121103121117%_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_%lp121063%_
                                                           _%rest121087%_
                                                           (cons _%hd121088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body121066%_)
                   _%ebody121067%_)
                  (_%E121101121110%_))
              (_%E121101121110%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121101121110%_))))
                                       (_%E121090121156%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e121089121106%_)
                                              (let ((_%e121092121126%_
                                                     (gx#syntax-e
                                                      _%e121089121106%_)))
                                                (let ((_%hd121093121129%_
                                                       (##car _%e121092121126%_))
                                                      (_%tl121094121131%_
                                                       (##cdr _%e121092121126%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd121093121129%_)
                                                           (gx#core-identifier=?
                                                            _%hd121093121129%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl121094121131%_)
                                                          (let ((_%e121095121134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl121094121131%_)))
                    (let ((_%hd121096121137%_ (##car _%e121095121134%_))
                          (_%tl121097121139%_ (##cdr _%e121095121134%_)))
                      (let ((_%hd-bind121142%_ _%hd121096121137%_))
                        (if (gx#stx-pair? _%tl121097121139%_)
                            (let ((_%e121098121144%_
                                   (gx#syntax-e _%tl121097121139%_)))
                              (let ((_%hd121099121147%_
                                     (##car _%e121098121144%_))
                                    (_%tl121100121149%_
                                     (##cdr _%e121098121144%_)))
                                (let ((_%expr121152%_ _%hd121099121147%_))
                                  (if (gx#stx-null? _%tl121100121149%_)
                                      (if '#t
                                          (let ((_%ehd121154%_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _%hd-bind121142%_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr121152%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%hd121088%_))))
                                            (_%lp121063%_
                                             _%rest121087%_
                                             (cons _%ehd121154%_
                                                   _%body121066%_)
                                             (cons _%ehd121154%_
                                                   _%ebody121067%_)))
                                          (_%E121091121122%_))
                                      (_%E121091121122%_)))))
                            (_%E121091121122%_)))))
                  (_%E121091121122%_))
              (_%E121091121122%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E121091121122%_)))))
                                  (_%E121090121156%_)))))
                        (if (##pair? _%rest121068121076%_)
                            (let ((_%hd121073121163%_
                                   (##car _%rest121068121076%_))
                                  (_%tl121074121165%_
                                   (##cdr _%rest121068121076%_)))
                              (let* ((_%hd121168%_ _%hd121073121163%_)
                                     (_%rest121170%_ _%tl121074121165%_))
                                (_%K121072121160%_
                                 _%rest121170%_
                                 _%hd121168%_)))
                            (_%else121070121084%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody121056%_
                     (gx#core-expand-block__1
                      _%stx121050%_
                      _%expand-special121052%_
                      '#f))
                    (_g121320_ (_%eval-body121053%_ _%rbody121056%_)))
               (begin
                 (let ((_g121321_
                        (if (##values? _g121320_)
                            (##vector-length _g121320_)
                            1)))
                   (if (not (##fx= _g121321_ 2))
                       (error "Context expects 2 values" _g121321_)))
                 (let ((_%expanded-body121058%_ (##vector-ref _g121320_ 0))
                       (_%value121059%_ (##vector-ref _g121320_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body121058%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value121059%_ '())))
                    (gx#stx-source _%stx121050%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx121020%_)
        (let* ((_%e121021121028%_ _%stx121020%_)
               (_%E121023121032%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121021121028%_)))
               (_%E121022121046%_
                (lambda ()
                  (if (gx#stx-pair? _%e121021121028%_)
                      (let ((_%e121024121036%_
                             (gx#syntax-e _%e121021121028%_)))
                        (let ((_%hd121025121039%_ (##car _%e121024121036%_))
                              (_%tl121026121041%_ (##cdr _%e121024121036%_)))
                          (let ((_%body121044%_ _%tl121026121041%_))
                            (if (gx#stx-list? _%body121044%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body121044%_)
                                 (gx#stx-source _%stx121020%_))
                                (_%E121023121032%_)))))
                      (_%E121023121032%_)))))
          (_%E121022121046%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx121018%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx121018%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx120964%_)
        (let* ((_%e120965120978%_ _%stx120964%_)
               (_%E120967120982%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120965120978%_)))
               (_%E120966121014%_
                (lambda ()
                  (if (gx#stx-pair? _%e120965120978%_)
                      (let ((_%e120968120986%_
                             (gx#syntax-e _%e120965120978%_)))
                        (let ((_%hd120969120989%_ (##car _%e120968120986%_))
                              (_%tl120970120991%_ (##cdr _%e120968120986%_)))
                          (if (gx#stx-pair? _%tl120970120991%_)
                              (let ((_%e120971120994%_
                                     (gx#syntax-e _%tl120970120991%_)))
                                (let ((_%hd120972120997%_
                                       (##car _%e120971120994%_))
                                      (_%tl120973120999%_
                                       (##cdr _%e120971120994%_)))
                                  (let ((_%ann121002%_ _%hd120972120997%_))
                                    (if (gx#stx-pair? _%tl120973120999%_)
                                        (let ((_%e120974121004%_
                                               (gx#syntax-e
                                                _%tl120973120999%_)))
                                          (let ((_%hd120975121007%_
                                                 (##car _%e120974121004%_))
                                                (_%tl120976121009%_
                                                 (##cdr _%e120974121004%_)))
                                            (let ((_%expr121012%_
                                                   _%hd120975121007%_))
                                              (if (gx#stx-null?
                                                   _%tl120976121009%_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _%ann121002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _%expr121012%_)
                                 '())))
               (gx#stx-source _%stx120964%_))
              (_%E120967120982%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120967120982%_)))))
                                        (_%E120967120982%_)))))
                              (_%E120967120982%_))))
                      (_%E120967120982%_)))))
          (_%E120966121014%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx120688%_ _%body120689%_)
        (letrec ((_%expand-special120691%_
                  (lambda (_%hd120959%_ _%K120960%_ _%rest120961%_ _%r120962%_)
                    (_%K120960%_
                     '()
                     (cons (_%expand-internal120692%_
                            _%hd120959%_
                            _%rest120961%_)
                           _%r120962%_))))
                 (_%expand-internal120692%_
                  (lambda (_%hd120955%_ _%rest120956%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal120694%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd120955%_ _%rest120956%_))
                          (gx#stx-source _%stx120688%_))
                         _%expand-internal-special120693%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj121314
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj121314)
                       __obj121314))))
                 (_%expand-internal-special120693%_
                  (lambda (_%hd120850%_ _%K120851%_ _%rest120852%_ _%r120853%_)
                    (let* ((_%e120854120879%_ _%hd120850%_)
                           (_%E120874120883%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e120854120879%_)))
                           (_%E120870120895%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120854120879%_)
                                  (let ((_%e120875120887%_
                                         (gx#syntax-e _%e120854120879%_)))
                                    (let ((_%hd120876120890%_
                                           (##car _%e120875120887%_))
                                          (_%tl120877120892%_
                                           (##cdr _%e120875120887%_)))
                                      (if (and (gx#identifier?
                                                _%hd120876120890%_)
                                               (gx#core-identifier=?
                                                _%hd120876120890%_
                                                '%#declare))
                                          (if '#t
                                              (_%K120851%_
                                               _%rest120852%_
                                               (cons (gx#core-expand-declare%
                                                      _%hd120850%_)
                                                     _%r120853%_))
                                              (_%E120874120883%_))
                                          (_%E120874120883%_))))
                                  (_%E120874120883%_))))
                           (_%E120866120907%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120854120879%_)
                                  (let ((_%e120871120899%_
                                         (gx#syntax-e _%e120854120879%_)))
                                    (let ((_%hd120872120902%_
                                           (##car _%e120871120899%_))
                                          (_%tl120873120904%_
                                           (##cdr _%e120871120899%_)))
                                      (if (and (gx#identifier?
                                                _%hd120872120902%_)
                                               (gx#core-identifier=?
                                                _%hd120872120902%_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _%hd120850%_)
                                                (_%K120851%_
                                                 _%rest120852%_
                                                 _%r120853%_))
                                              (_%E120870120895%_))
                                          (_%E120870120895%_))))
                                  (_%E120870120895%_))))
                           (_%E120856120919%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120854120879%_)
                                  (let ((_%e120867120911%_
                                         (gx#syntax-e _%e120854120879%_)))
                                    (let ((_%hd120868120914%_
                                           (##car _%e120867120911%_))
                                          (_%tl120869120916%_
                                           (##cdr _%e120867120911%_)))
                                      (if (and (gx#identifier?
                                                _%hd120868120914%_)
                                               (gx#core-identifier=?
                                                _%hd120868120914%_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _%hd120850%_)
                                                (_%K120851%_
                                                 _%rest120852%_
                                                 _%r120853%_))
                                              (_%E120866120907%_))
                                          (_%E120866120907%_))))
                                  (_%E120866120907%_))))
                           (_%E120855120951%_
                            (lambda ()
                              (if (gx#stx-pair? _%e120854120879%_)
                                  (let ((_%e120857120923%_
                                         (gx#syntax-e _%e120854120879%_)))
                                    (let ((_%hd120858120926%_
                                           (##car _%e120857120923%_))
                                          (_%tl120859120928%_
                                           (##cdr _%e120857120923%_)))
                                      (if (and (gx#identifier?
                                                _%hd120858120926%_)
                                               (gx#core-identifier=?
                                                _%hd120858120926%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl120859120928%_)
                                              (let ((_%e120860120931%_
                                                     (gx#syntax-e
                                                      _%tl120859120928%_)))
                                                (let ((_%hd120861120934%_
                                                       (##car _%e120860120931%_))
                                                      (_%tl120862120936%_
                                                       (##cdr _%e120860120931%_)))
                                                  (let ((_%hd-bind120939%_
                                                         _%hd120861120934%_))
                                                    (if (gx#stx-pair?
                                                         _%tl120862120936%_)
                                                        (let ((_%e120863120941%_
                                                               (gx#syntax-e
                                                                _%tl120862120936%_)))
                                                          (let ((_%hd120864120944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e120863120941%_))
                        (_%tl120865120946%_ (##cdr _%e120863120941%_)))
                    (let ((_%expr120949%_ _%hd120864120944%_))
                      (if (gx#stx-null? _%tl120865120946%_)
                          (if (gx#core-bind-values? _%hd-bind120939%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind120939%_)
                                (_%K120851%_
                                 _%rest120852%_
                                 (cons _%hd120850%_ _%r120853%_)))
                              (_%E120856120919%_))
                          (_%E120856120919%_)))))
                (_%E120856120919%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E120856120919%_))
                                          (_%E120856120919%_))))
                                  (_%E120856120919%_)))))
                      (_%E120855120951%_))))
                 (_%wrap-internal120694%_
                  (lambda (_%rbody120696%_)
                    (let _%lp120698%_ ((_%rest120700%_ _%rbody120696%_)
                                       (_%decls120701%_ '())
                                       (_%bind120702%_ '())
                                       (_%body120703%_ '()))
                      (let* ((_%e120704120711%_ _%rest120700%_)
                             (_%E120706120760%_
                              (lambda ()
                                (let* ((_%body120755%_
                                        (let* ((_%body120714120724%_
                                                _%body120703%_)
                                               (_%else120717120732%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body120703%_)
                                                   (gx#stx-source
                                                    _%stx120688%_)))))
                                          (let ((_%K120722120752%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx120688%_)))
                                                (_%K120719120738%_
                                                 (lambda (_%expr120736%_)
                                                   _%expr120736%_)))
                                            (let ((_%try-match120716120748%_
                                                   (lambda ()
                                                     (if (##pair? _%body120714120724%_)
                                                         (let ((_%tl120721120743%_
                                                                (##cdr _%body120714120724%_))
                                                               (_%hd120720120741%_
                                                                (##car _%body120714120724%_)))
                                                           (if (##null? _%tl120721120743%_)
                                                               (let ((_%expr120746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd120720120741%_))
                         (_%K120719120738%_ _%expr120746%_))
                       (_%else120717120732%_)))
                 (_%else120717120732%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body120714120724%_)
                                                  (_%K120722120752%_)
                                                  (_%try-match120716120748%_))))))
                                       (_%body120757%_
                                        (if (null? _%bind120702%_)
                                            _%body120755%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind120702%_
                                                         (cons _%body120755%_
                                                               '())))
                                             (gx#stx-source _%stx120688%_)))))
                                  (if (null? _%decls120701%_)
                                      _%body120757%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls120701%_
                                                   (cons _%body120757%_ '())))
                                       (gx#stx-source _%stx120688%_))))))
                             (_%E120705120846%_
                              (lambda ()
                                (if (gx#stx-pair? _%e120704120711%_)
                                    (let ((_%e120707120764%_
                                           (gx#syntax-e _%e120704120711%_)))
                                      (let ((_%hd120708120767%_
                                             (##car _%e120707120764%_))
                                            (_%tl120709120769%_
                                             (##cdr _%e120707120764%_)))
                                        (let* ((_%hd120772%_
                                                _%hd120708120767%_)
                                               (_%rest120774%_
                                                _%tl120709120769%_))
                                          (if '#t
                                              (let* ((_%e120775120792%_
                                                      _%hd120772%_)
                                                     (_%E120787120796%_
                                                      (lambda ()
                                                        (if (null? _%bind120702%_)
                                                            (_%lp120698%_
                                                             _%rest120774%_
                                                             _%decls120701%_
                                                             _%bind120702%_
                                                             (cons _%hd120772%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body120703%_))
                    (_%lp120698%_
                     _%rest120774%_
                     _%decls120701%_
                     (cons (cons '#f (cons _%hd120772%_ '())) _%bind120702%_)
                     _%body120703%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E120777120810%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e120775120792%_)
                                                            (let ((_%e120788120800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e120775120792%_)))
                      (let ((_%hd120789120803%_ (##car _%e120788120800%_))
                            (_%tl120790120805%_ (##cdr _%e120788120800%_)))
                        (if (and (gx#identifier? _%hd120789120803%_)
                                 (gx#core-identifier=?
                                  _%hd120789120803%_
                                  '%#declare))
                            (let ((_%xdecls120808%_ _%tl120790120805%_))
                              (if '#t
                                  (_%lp120698%_
                                   _%rest120774%_
                                   (gx#stx-foldr
                                    cons
                                    _%decls120701%_
                                    _%xdecls120808%_)
                                   _%bind120702%_
                                   _%body120703%_)
                                  (_%E120787120796%_)))
                            (_%E120787120796%_))))
                    (_%E120787120796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E120776120842%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e120775120792%_)
                                                            (let ((_%e120778120814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e120775120792%_)))
                      (let ((_%hd120779120817%_ (##car _%e120778120814%_))
                            (_%tl120780120819%_ (##cdr _%e120778120814%_)))
                        (if (and (gx#identifier? _%hd120779120817%_)
                                 (gx#core-identifier=?
                                  _%hd120779120817%_
                                  '%#define-values))
                            (if (gx#stx-pair? _%tl120780120819%_)
                                (let ((_%e120781120822%_
                                       (gx#syntax-e _%tl120780120819%_)))
                                  (let ((_%hd120782120825%_
                                         (##car _%e120781120822%_))
                                        (_%tl120783120827%_
                                         (##cdr _%e120781120822%_)))
                                    (let ((_%hd-bind120830%_
                                           _%hd120782120825%_))
                                      (if (gx#stx-pair? _%tl120783120827%_)
                                          (let ((_%e120784120832%_
                                                 (gx#syntax-e
                                                  _%tl120783120827%_)))
                                            (let ((_%hd120785120835%_
                                                   (##car _%e120784120832%_))
                                                  (_%tl120786120837%_
                                                   (##cdr _%e120784120832%_)))
                                              (let ((_%expr120840%_
                                                     _%hd120785120835%_))
                                                (if (gx#stx-null?
                                                     _%tl120786120837%_)
                                                    (if '#t
                                                        (_%lp120698%_
                                                         _%rest120774%_
                                                         _%decls120701%_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd-bind120830%_)
                             (cons (gx#core-expand-expression _%expr120840%_)
                                   '()))
                       _%bind120702%_)
                 _%body120703%_)
                (_%E120777120810%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E120777120810%_)))))
                                          (_%E120777120810%_)))))
                                (_%E120777120810%_))
                            (_%E120777120810%_))))
                    (_%E120777120810%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120776120842%_))
                                              (_%E120706120760%_)))))
                                    (_%E120706120760%_)))))
                        (_%E120705120846%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body120689%_)
            (gx#stx-source _%stx120688%_))
           _%expand-special120691%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx120626%_)
        (let* ((_%e120627120634%_ _%stx120626%_)
               (_%E120629120638%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120627120634%_)))
               (_%E120628120684%_
                (lambda ()
                  (if (gx#stx-pair? _%e120627120634%_)
                      (let ((_%e120630120642%_
                             (gx#syntax-e _%e120627120634%_)))
                        (let ((_%hd120631120645%_ (##car _%e120630120642%_))
                              (_%tl120632120647%_ (##cdr _%e120630120642%_)))
                          (let ((_%body120650%_ _%tl120632120647%_))
                            (if (gx#stx-list? _%body120650%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl120652%_)
                                     (let* ((_%e120653120660%_ _%decl120652%_)
                                            (_%E120655120664%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e120653120660%_)))
                                            (_%E120654120680%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e120653120660%_)
                                                   (let ((_%e120656120668%_
                                                          (gx#syntax-e
                                                           _%e120653120660%_)))
                                                     (let ((_%hd120657120671%_
                                                            (##car _%e120656120668%_))
                                                           (_%tl120658120673%_
                                                            (##cdr _%e120656120668%_)))
                                                       (let* ((_%head120676%_
                                                               _%hd120657120671%_)
                                                              (_%args120678%_
                                                               _%tl120658120673%_))
                                                         (if (gx#stx-list?
                                                              _%args120678%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl120652%_)
                                                             (_%E120655120664%_)))))
                                                   (_%E120655120664%_)))))
                                       (_%E120654120680%_)))
                                   _%body120650%_))
                                 (gx#stx-source _%stx120626%_))
                                (_%E120629120638%_)))))
                      (_%E120629120638%_)))))
          (_%E120628120684%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx120530%_)
        (let* ((_%e120531120538%_ _%stx120530%_)
               (_%E120533120542%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120531120538%_)))
               (_%E120532120622%_
                (lambda ()
                  (if (gx#stx-pair? _%e120531120538%_)
                      (let ((_%e120534120546%_
                             (gx#syntax-e _%e120531120538%_)))
                        (let ((_%hd120535120549%_ (##car _%e120534120546%_))
                              (_%tl120536120551%_ (##cdr _%e120534120546%_)))
                          (let ((_%body120554%_ _%tl120536120551%_))
                            (if '#t
                                (let _%lp120556%_ ((_%rest120558%_
                                                    _%body120554%_)
                                                   (_%r120559%_ '()))
                                  (let* ((_%e120560120574%_ _%rest120558%_)
                                         (_%E120572120578%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _%stx120530%_)))
                                         (_%E120562120582%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%e120560120574%_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _%r120559%_))
                                                     (gx#stx-source
                                                      _%stx120530%_))
                                                    (_%E120572120578%_))
                                                (_%E120572120578%_))))
                                         (_%E120561120618%_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 _%e120560120574%_)
                                                (let ((_%e120563120586%_
                                                       (gx#syntax-e
                                                        _%e120560120574%_)))
                                                  (let ((_%hd120564120589%_
                                                         (##car _%e120563120586%_))
                                                        (_%tl120565120591%_
                                                         (##cdr _%e120563120586%_)))
                                                    (if (gx#stx-pair?
                                                         _%hd120564120589%_)
                                                        (let ((_%e120566120594%_
                                                               (gx#syntax-e
                                                                _%hd120564120589%_)))
                                                          (let ((_%hd120567120597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e120566120594%_))
                        (_%tl120568120599%_ (##cdr _%e120566120594%_)))
                    (let ((_%id120602%_ _%hd120567120597%_))
                      (if (gx#stx-pair? _%tl120568120599%_)
                          (let ((_%e120569120604%_
                                 (gx#syntax-e _%tl120568120599%_)))
                            (let ((_%hd120570120607%_
                                   (##car _%e120569120604%_))
                                  (_%tl120571120609%_
                                   (##cdr _%e120569120604%_)))
                              (let ((_%eid120612%_ _%hd120570120607%_))
                                (if (gx#stx-null? _%tl120571120609%_)
                                    (let ((_%rest120614%_ _%tl120565120591%_))
                                      (if (and (gx#identifier? _%id120602%_)
                                               (gx#identifier? _%eid120612%_))
                                          (let ((_%eid120616%_
                                                 (gx#stx-e _%eid120612%_)))
                                            (gx#core-bind-extern!__0
                                             _%id120602%_
                                             _%eid120616%_)
                                            (_%lp120556%_
                                             _%rest120614%_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _%id120602%_)
                                                         (cons _%eid120616%_
                                                               '()))
                                                   _%r120559%_)))
                                          (_%E120562120582%_)))
                                    (_%E120562120582%_)))))
                          (_%E120562120582%_)))))
                (_%E120562120582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E120562120582%_)))))
                                    (_%E120561120618%_)))
                                (_%E120533120542%_)))))
                      (_%E120533120542%_)))))
          (_%E120532120622%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx120476%_)
        (let* ((_%e120477120490%_ _%stx120476%_)
               (_%E120479120494%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120477120490%_)))
               (_%E120478120526%_
                (lambda ()
                  (if (gx#stx-pair? _%e120477120490%_)
                      (let ((_%e120480120498%_
                             (gx#syntax-e _%e120477120490%_)))
                        (let ((_%hd120481120501%_ (##car _%e120480120498%_))
                              (_%tl120482120503%_ (##cdr _%e120480120498%_)))
                          (if (gx#stx-pair? _%tl120482120503%_)
                              (let ((_%e120483120506%_
                                     (gx#syntax-e _%tl120482120503%_)))
                                (let ((_%hd120484120509%_
                                       (##car _%e120483120506%_))
                                      (_%tl120485120511%_
                                       (##cdr _%e120483120506%_)))
                                  (let ((_%hd120514%_ _%hd120484120509%_))
                                    (if (gx#stx-pair? _%tl120485120511%_)
                                        (let ((_%e120486120516%_
                                               (gx#syntax-e
                                                _%tl120485120511%_)))
                                          (let ((_%hd120487120519%_
                                                 (##car _%e120486120516%_))
                                                (_%tl120488120521%_
                                                 (##cdr _%e120486120516%_)))
                                            (let ((_%expr120524%_
                                                   _%hd120487120519%_))
                                              (if (gx#stx-null?
                                                   _%tl120488120521%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd120514%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd120514%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd120514%_)
                             (cons (gx#core-expand-expression _%expr120524%_)
                                   '())))
                 (gx#stx-source _%stx120476%_)))
              (_%E120479120494%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120479120494%_)))))
                                        (_%E120479120494%_)))))
                              (_%E120479120494%_))))
                      (_%E120479120494%_)))))
          (_%E120478120526%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx120420%_)
        (let* ((_%e120421120434%_ _%stx120420%_)
               (_%E120423120438%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120421120434%_)))
               (_%E120422120472%_
                (lambda ()
                  (if (gx#stx-pair? _%e120421120434%_)
                      (let ((_%e120424120442%_
                             (gx#syntax-e _%e120421120434%_)))
                        (let ((_%hd120425120445%_ (##car _%e120424120442%_))
                              (_%tl120426120447%_ (##cdr _%e120424120442%_)))
                          (if (gx#stx-pair? _%tl120426120447%_)
                              (let ((_%e120427120450%_
                                     (gx#syntax-e _%tl120426120447%_)))
                                (let ((_%hd120428120453%_
                                       (##car _%e120427120450%_))
                                      (_%tl120429120455%_
                                       (##cdr _%e120427120450%_)))
                                  (let ((_%id120458%_ _%hd120428120453%_))
                                    (if (gx#stx-pair? _%tl120429120455%_)
                                        (let ((_%e120430120460%_
                                               (gx#syntax-e
                                                _%tl120429120455%_)))
                                          (let ((_%hd120431120463%_
                                                 (##car _%e120430120460%_))
                                                (_%tl120432120465%_
                                                 (##cdr _%e120430120460%_)))
                                            (let ((_%binding-id120468%_
                                                   _%hd120431120463%_))
                                              (if (gx#stx-null?
                                                   _%tl120432120465%_)
                                                  (if (and (gx#identifier?
                                                            _%id120458%_)
                                                           (gx#identifier?
                                                            _%binding-id120468%_))
                                                      (let ((_%eid120470%_
                                                             (gx#stx-e
                                                              _%binding-id120468%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id120458%_
                                                         _%eid120470%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id120458%_)
                             (cons _%eid120470%_ '())))))
              (_%E120423120438%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120423120438%_)))))
                                        (_%E120423120438%_)))))
                              (_%E120423120438%_))))
                      (_%E120423120438%_)))))
          (_%E120422120472%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx120363%_)
        (let* ((_%e120364120377%_ _%stx120363%_)
               (_%E120366120381%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120364120377%_)))
               (_%E120365120416%_
                (lambda ()
                  (if (gx#stx-pair? _%e120364120377%_)
                      (let ((_%e120367120385%_
                             (gx#syntax-e _%e120364120377%_)))
                        (let ((_%hd120368120388%_ (##car _%e120367120385%_))
                              (_%tl120369120390%_ (##cdr _%e120367120385%_)))
                          (if (gx#stx-pair? _%tl120369120390%_)
                              (let ((_%e120370120393%_
                                     (gx#syntax-e _%tl120369120390%_)))
                                (let ((_%hd120371120396%_
                                       (##car _%e120370120393%_))
                                      (_%tl120372120398%_
                                       (##cdr _%e120370120393%_)))
                                  (let ((_%id120401%_ _%hd120371120396%_))
                                    (if (gx#stx-pair? _%tl120372120398%_)
                                        (let ((_%e120373120403%_
                                               (gx#syntax-e
                                                _%tl120372120398%_)))
                                          (let ((_%hd120374120406%_
                                                 (##car _%e120373120403%_))
                                                (_%tl120375120408%_
                                                 (##cdr _%e120373120403%_)))
                                            (let ((_%expr120411%_
                                                   _%hd120374120406%_))
                                              (if (gx#stx-null?
                                                   _%tl120375120408%_)
                                                  (if (gx#identifier?
                                                       _%id120401%_)
                                                      (let ((_g121322_
                                                             (gx#core-expand-expression+1
                                                              _%expr120411%_)))
                                                        (begin
                                                          (let ((_g121323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g121322_)
                             (##vector-length _g121322_)
                             1)))
                    (if (not (##fx= _g121323_ 2))
                        (error "Context expects 2 values" _g121323_)))
                  (let ((_%e-stx120413%_ (##vector-ref _g121322_ 0))
                        (_%e120414%_ (##vector-ref _g121322_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id120401%_ _%e120414%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id120401%_)
                                   (cons _%e-stx120413%_ '())))
                       (gx#stx-source _%stx120363%_))))))
              (_%E120366120381%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120366120381%_)))))
                                        (_%E120366120381%_)))))
                              (_%E120366120381%_))))
                      (_%E120366120381%_)))))
          (_%E120365120416%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx120307%_)
        (let* ((_%e120308120321%_ _%stx120307%_)
               (_%E120310120325%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120308120321%_)))
               (_%E120309120359%_
                (lambda ()
                  (if (gx#stx-pair? _%e120308120321%_)
                      (let ((_%e120311120329%_
                             (gx#syntax-e _%e120308120321%_)))
                        (let ((_%hd120312120332%_ (##car _%e120311120329%_))
                              (_%tl120313120334%_ (##cdr _%e120311120329%_)))
                          (if (gx#stx-pair? _%tl120313120334%_)
                              (let ((_%e120314120337%_
                                     (gx#syntax-e _%tl120313120334%_)))
                                (let ((_%hd120315120340%_
                                       (##car _%e120314120337%_))
                                      (_%tl120316120342%_
                                       (##cdr _%e120314120337%_)))
                                  (let ((_%id120345%_ _%hd120315120340%_))
                                    (if (gx#stx-pair? _%tl120316120342%_)
                                        (let ((_%e120317120347%_
                                               (gx#syntax-e
                                                _%tl120316120342%_)))
                                          (let ((_%hd120318120350%_
                                                 (##car _%e120317120347%_))
                                                (_%tl120319120352%_
                                                 (##cdr _%e120317120347%_)))
                                            (let ((_%alias-id120355%_
                                                   _%hd120318120350%_))
                                              (if (gx#stx-null?
                                                   _%tl120319120352%_)
                                                  (if (and (gx#identifier?
                                                            _%id120345%_)
                                                           (gx#identifier?
                                                            _%alias-id120355%_))
                                                      (let ((_%alias-id120357%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id120355%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id120345%_
                                                         _%alias-id120357%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id120345%_)
                             (cons _%alias-id120357%_ '())))))
              (_%E120310120325%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E120310120325%_)))))
                                        (_%E120310120325%_)))))
                              (_%E120310120325%_))))
                      (_%E120310120325%_)))))
          (_%E120309120359%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx120250%_ _%wrap?120251%_)
        (let* ((_%e120252120262%_ _%stx120250%_)
               (_%E120254120266%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120252120262%_)))
               (_%E120253120293%_
                (lambda ()
                  (if (gx#stx-pair? _%e120252120262%_)
                      (let ((_%e120255120270%_
                             (gx#syntax-e _%e120252120262%_)))
                        (let ((_%hd120256120273%_ (##car _%e120255120270%_))
                              (_%tl120257120275%_ (##cdr _%e120255120270%_)))
                          (if (gx#stx-pair? _%tl120257120275%_)
                              (let ((_%e120258120278%_
                                     (gx#syntax-e _%tl120257120275%_)))
                                (let ((_%hd120259120281%_
                                       (##car _%e120258120278%_))
                                      (_%tl120260120283%_
                                       (##cdr _%e120258120278%_)))
                                  (let* ((_%hd120286%_ _%hd120259120281%_)
                                         (_%body120288%_ _%tl120260120283%_))
                                    (if (gx#core-bind-values? _%hd120286%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd120286%_)
                                           (let ((_%body120291%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd120286%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120250%_
                                                               _%body120288%_)
                                                              '()))))
                                             (if _%wrap?120251%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body120291%_)
                                                  (gx#stx-source
                                                   _%stx120250%_))
                                                 _%body120291%_)))
                                         gx#current-expander-context
                                         (let ((__obj121315
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121315)
                                           __obj121315))
                                        (_%E120254120266%_)))))
                              (_%E120254120266%_))))
                      (_%E120254120266%_)))))
          (_%E120253120293%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx120300%_)
        (let ((_%wrap?120302%_ '#t))
          (gx#core-expand-lambda%__% _%stx120300%_ _%wrap?120302%_))))
    (define gx#core-expand-lambda%
      (lambda _g121325_
        (let ((_g121324_ (##length _g121325_)))
          (cond ((##fx= _g121324_ 1)
                 (apply gx#core-expand-lambda%__0 _g121325_))
                ((##fx= _g121324_ 2)
                 (apply gx#core-expand-lambda%__% _g121325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g121325_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx120214%_)
        (let* ((_%e120215120222%_ _%stx120214%_)
               (_%E120217120226%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120215120222%_)))
               (_%E120216120245%_
                (lambda ()
                  (if (gx#stx-pair? _%e120215120222%_)
                      (let ((_%e120218120230%_
                             (gx#syntax-e _%e120215120222%_)))
                        (let ((_%hd120219120233%_ (##car _%e120218120230%_))
                              (_%tl120220120235%_ (##cdr _%e120218120230%_)))
                          (let ((_%clauses120238%_ _%tl120220120235%_))
                            (if (gx#stx-list? _%clauses120238%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause120240%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause120240%_)
                                       (let ((_%$e120242%_
                                              (gx#stx-source
                                               _%clause120240%_)))
                                         (if _%$e120242%_
                                             _%$e120242%_
                                             (gx#stx-source _%stx120214%_))))
                                      '#f))
                                   _%clauses120238%_))
                                 (gx#stx-source _%stx120214%_))
                                (_%E120217120226%_)))))
                      (_%E120217120226%_)))))
          (_%E120216120245%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx120168%_)
        (let* ((_%e120169120179%_ _%stx120168%_)
               (_%E120171120183%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120169120179%_)))
               (_%E120170120210%_
                (lambda ()
                  (if (gx#stx-pair? _%e120169120179%_)
                      (let ((_%e120172120187%_
                             (gx#syntax-e _%e120169120179%_)))
                        (let ((_%hd120173120190%_ (##car _%e120172120187%_))
                              (_%tl120174120192%_ (##cdr _%e120172120187%_)))
                          (if (gx#stx-pair? _%tl120174120192%_)
                              (let ((_%e120175120195%_
                                     (gx#syntax-e _%tl120174120192%_)))
                                (let ((_%hd120176120198%_
                                       (##car _%e120175120195%_))
                                      (_%tl120177120200%_
                                       (##cdr _%e120175120195%_)))
                                  (let* ((_%hd120203%_ _%hd120176120198%_)
                                         (_%body120205%_ _%tl120177120200%_))
                                    (if (gx#core-expand-let-bind? _%hd120203%_)
                                        (let ((_%expressions120207%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd120203%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd120203%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd120203%_
                                                           _%expressions120207%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx120168%_
                         _%body120205%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx120168%_)))
                                           gx#current-expander-context
                                           (let ((__obj121316
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj121316)
                                             __obj121316)))
                                        (_%E120171120183%_)))))
                              (_%E120171120183%_))))
                      (_%E120171120183%_)))))
          (_%E120170120210%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx120113%_ _%form120114%_)
        (let* ((_%e120115120125%_ _%stx120113%_)
               (_%E120117120129%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120115120125%_)))
               (_%E120116120154%_
                (lambda ()
                  (if (gx#stx-pair? _%e120115120125%_)
                      (let ((_%e120118120133%_
                             (gx#syntax-e _%e120115120125%_)))
                        (let ((_%hd120119120136%_ (##car _%e120118120133%_))
                              (_%tl120120120138%_ (##cdr _%e120118120133%_)))
                          (if (gx#stx-pair? _%tl120120120138%_)
                              (let ((_%e120121120141%_
                                     (gx#syntax-e _%tl120120120138%_)))
                                (let ((_%hd120122120144%_
                                       (##car _%e120121120141%_))
                                      (_%tl120123120146%_
                                       (##cdr _%e120121120141%_)))
                                  (let* ((_%hd120149%_ _%hd120122120144%_)
                                         (_%body120151%_ _%tl120123120146%_))
                                    (if (gx#core-expand-let-bind? _%hd120149%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd120149%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form120114%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd120149%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd120149%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx120113%_
                                                               _%body120151%_)
                                                              '())))
                                            (gx#stx-source _%stx120113%_)))
                                         gx#current-expander-context
                                         (let ((__obj121317
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121317)
                                           __obj121317))
                                        (_%E120117120129%_)))))
                              (_%E120117120129%_))))
                      (_%E120117120129%_)))))
          (_%E120116120154%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx120161%_)
        (let ((_%form120163%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx120161%_ _%form120163%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g121327_
        (let ((_g121326_ (##length _g121327_)))
          (cond ((##fx= _g121326_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g121327_))
                ((##fx= _g121326_ 2)
                 (apply gx#core-expand-letrec-values%__% _g121327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g121327_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx120110%_)
        (gx#core-expand-letrec-values%__% _%stx120110%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx120067%_)
        (if (gx#stx-list? _%stx120067%_)
            (gx#stx-andmap
             (lambda (_%bind120069%_)
               (let* ((_%e120070120080%_ _%bind120069%_)
                      (_%E120072120084%_ (lambda () '#f))
                      (_%E120071120106%_
                       (lambda ()
                         (if (gx#stx-pair? _%e120070120080%_)
                             (let ((_%e120073120088%_
                                    (gx#syntax-e _%e120070120080%_)))
                               (let ((_%hd120074120091%_
                                      (##car _%e120073120088%_))
                                     (_%tl120075120093%_
                                      (##cdr _%e120073120088%_)))
                                 (let ((_%hd120096%_ _%hd120074120091%_))
                                   (if (gx#stx-pair? _%tl120075120093%_)
                                       (let ((_%e120076120098%_
                                              (gx#syntax-e
                                               _%tl120075120093%_)))
                                         (let ((_%hd120077120101%_
                                                (##car _%e120076120098%_))
                                               (_%tl120078120103%_
                                                (##cdr _%e120076120098%_)))
                                           (if (gx#stx-null?
                                                _%tl120078120103%_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _%hd120096%_)
                                                   (_%E120072120084%_))
                                               (_%E120072120084%_))))
                                       (_%E120072120084%_)))))
                             (_%E120072120084%_)))))
                 (_%E120071120106%_)))
             _%stx120067%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind120026%_)
        (let* ((_%e120027120037%_ _%bind120026%_)
               (_%E120029120041%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e120027120037%_)))
               (_%E120028120063%_
                (lambda ()
                  (if (gx#stx-pair? _%e120027120037%_)
                      (let ((_%e120030120045%_
                             (gx#syntax-e _%e120027120037%_)))
                        (let ((_%hd120031120048%_ (##car _%e120030120045%_))
                              (_%tl120032120050%_ (##cdr _%e120030120045%_)))
                          (if (gx#stx-pair? _%tl120032120050%_)
                              (let ((_%e120033120053%_
                                     (gx#syntax-e _%tl120032120050%_)))
                                (let ((_%hd120034120056%_
                                       (##car _%e120033120053%_))
                                      (_%tl120035120058%_
                                       (##cdr _%e120033120053%_)))
                                  (let ((_%expr120061%_ _%hd120034120056%_))
                                    (if (gx#stx-null? _%tl120035120058%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr120061%_)
                                            (_%E120029120041%_))
                                        (_%E120029120041%_)))))
                              (_%E120029120041%_))))
                      (_%E120029120041%_)))))
          (_%E120028120063%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind119985%_)
        (let* ((_%e119986119996%_ _%bind119985%_)
               (_%E119988120000%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119986119996%_)))
               (_%E119987120022%_
                (lambda ()
                  (if (gx#stx-pair? _%e119986119996%_)
                      (let ((_%e119989120004%_
                             (gx#syntax-e _%e119986119996%_)))
                        (let ((_%hd119990120007%_ (##car _%e119989120004%_))
                              (_%tl119991120009%_ (##cdr _%e119989120004%_)))
                          (let ((_%hd120012%_ _%hd119990120007%_))
                            (if (gx#stx-pair? _%tl119991120009%_)
                                (let ((_%e119992120014%_
                                       (gx#syntax-e _%tl119991120009%_)))
                                  (let ((_%hd119993120017%_
                                         (##car _%e119992120014%_))
                                        (_%tl119994120019%_
                                         (##cdr _%e119992120014%_)))
                                    (if (gx#stx-null? _%tl119994120019%_)
                                        (if '#t
                                            (gx#core-bind-values!__0
                                             _%hd120012%_)
                                            (_%E119988120000%_))
                                        (_%E119988120000%_))))
                                (_%E119988120000%_)))))
                      (_%E119988120000%_)))))
          (_%E119987120022%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind119943%_ _%expr119944%_)
        (let* ((_%e119945119955%_ _%bind119943%_)
               (_%E119947119959%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119945119955%_)))
               (_%E119946119981%_
                (lambda ()
                  (if (gx#stx-pair? _%e119945119955%_)
                      (let ((_%e119948119963%_
                             (gx#syntax-e _%e119945119955%_)))
                        (let ((_%hd119949119966%_ (##car _%e119948119963%_))
                              (_%tl119950119968%_ (##cdr _%e119948119963%_)))
                          (let ((_%hd119971%_ _%hd119949119966%_))
                            (if (gx#stx-pair? _%tl119950119968%_)
                                (let ((_%e119951119973%_
                                       (gx#syntax-e _%tl119950119968%_)))
                                  (let ((_%hd119952119976%_
                                         (##car _%e119951119973%_))
                                        (_%tl119953119978%_
                                         (##cdr _%e119951119973%_)))
                                    (if (gx#stx-null? _%tl119953119978%_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _%hd119971%_)
                                                  (cons _%expr119944%_ '()))
                                            (_%E119947119959%_))
                                        (_%E119947119959%_))))
                                (_%E119947119959%_)))))
                      (_%E119947119959%_)))))
          (_%E119946119981%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx119897%_)
        (let* ((_%e119898119908%_ _%stx119897%_)
               (_%E119900119912%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119898119908%_)))
               (_%E119899119939%_
                (lambda ()
                  (if (gx#stx-pair? _%e119898119908%_)
                      (let ((_%e119901119916%_
                             (gx#syntax-e _%e119898119908%_)))
                        (let ((_%hd119902119919%_ (##car _%e119901119916%_))
                              (_%tl119903119921%_ (##cdr _%e119901119916%_)))
                          (if (gx#stx-pair? _%tl119903119921%_)
                              (let ((_%e119904119924%_
                                     (gx#syntax-e _%tl119903119921%_)))
                                (let ((_%hd119905119927%_
                                       (##car _%e119904119924%_))
                                      (_%tl119906119929%_
                                       (##cdr _%e119904119924%_)))
                                  (let* ((_%hd119932%_ _%hd119905119927%_)
                                         (_%body119934%_ _%tl119906119929%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd119932%_)
                                        (let ((_%expanders119936%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd119932%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd119932%_
                                              _%expanders119936%_)
                                             (gx#core-expand-local-block
                                              _%stx119897%_
                                              _%body119934%_))
                                           gx#current-expander-context
                                           (let ((__obj121318
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj121318)
                                             __obj121318)))
                                        (_%E119900119912%_)))))
                              (_%E119900119912%_))))
                      (_%E119900119912%_)))))
          (_%E119899119939%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx119846%_)
        (let* ((_%e119847119857%_ _%stx119846%_)
               (_%E119849119861%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119847119857%_)))
               (_%E119848119893%_
                (lambda ()
                  (if (gx#stx-pair? _%e119847119857%_)
                      (let ((_%e119850119865%_
                             (gx#syntax-e _%e119847119857%_)))
                        (let ((_%hd119851119868%_ (##car _%e119850119865%_))
                              (_%tl119852119870%_ (##cdr _%e119850119865%_)))
                          (if (gx#stx-pair? _%tl119852119870%_)
                              (let ((_%e119853119873%_
                                     (gx#syntax-e _%tl119852119870%_)))
                                (let ((_%hd119854119876%_
                                       (##car _%e119853119873%_))
                                      (_%tl119855119878%_
                                       (##cdr _%e119853119873%_)))
                                  (let* ((_%hd119881%_ _%hd119854119876%_)
                                         (_%body119883%_ _%tl119855119878%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd119881%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd119881%_
                                            (make-list
                                             (gx#stx-length _%hd119881%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g119885119888%_
                                                     _%g119886119890%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g119885119888%_
                                               _%g119886119890%_
                                               '#t))
                                            _%hd119881%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd119881%_))
                                           (gx#core-expand-local-block
                                            _%stx119846%_
                                            _%body119883%_))
                                         gx#current-expander-context
                                         (let ((__obj121319
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj121319)
                                           __obj121319))
                                        (_%E119849119861%_)))))
                              (_%E119849119861%_))))
                      (_%E119849119861%_)))))
          (_%E119848119893%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx119803%_)
        (if (gx#stx-list? _%stx119803%_)
            (gx#stx-andmap
             (lambda (_%bind119805%_)
               (let* ((_%e119806119816%_ _%bind119805%_)
                      (_%E119808119820%_ (lambda () '#f))
                      (_%E119807119842%_
                       (lambda ()
                         (if (gx#stx-pair? _%e119806119816%_)
                             (let ((_%e119809119824%_
                                    (gx#syntax-e _%e119806119816%_)))
                               (let ((_%hd119810119827%_
                                      (##car _%e119809119824%_))
                                     (_%tl119811119829%_
                                      (##cdr _%e119809119824%_)))
                                 (let ((_%hd119832%_ _%hd119810119827%_))
                                   (if (gx#stx-pair? _%tl119811119829%_)
                                       (let ((_%e119812119834%_
                                              (gx#syntax-e
                                               _%tl119811119829%_)))
                                         (let ((_%hd119813119837%_
                                                (##car _%e119812119834%_))
                                               (_%tl119814119839%_
                                                (##cdr _%e119812119834%_)))
                                           (if (gx#stx-null?
                                                _%tl119814119839%_)
                                               (if '#t
                                                   (gx#identifier?
                                                    _%hd119832%_)
                                                   (_%E119808119820%_))
                                               (_%E119808119820%_))))
                                       (_%E119808119820%_)))))
                             (_%E119808119820%_)))))
                 (_%E119807119842%_)))
             _%stx119803%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind119759%_)
        (let* ((_%e119760119770%_ _%bind119759%_)
               (_%E119762119774%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119760119770%_)))
               (_%E119761119799%_
                (lambda ()
                  (if (gx#stx-pair? _%e119760119770%_)
                      (let ((_%e119763119778%_
                             (gx#syntax-e _%e119760119770%_)))
                        (let ((_%hd119764119781%_ (##car _%e119763119778%_))
                              (_%tl119765119783%_ (##cdr _%e119763119778%_)))
                          (if (gx#stx-pair? _%tl119765119783%_)
                              (let ((_%e119766119786%_
                                     (gx#syntax-e _%tl119765119783%_)))
                                (let ((_%hd119767119789%_
                                       (##car _%e119766119786%_))
                                      (_%tl119768119791%_
                                       (##cdr _%e119766119786%_)))
                                  (let ((_%expr119794%_ _%hd119767119789%_))
                                    (if (gx#stx-null? _%tl119768119791%_)
                                        (if '#t
                                            (let ((_g121328_
                                                   (gx#core-expand-expression+1
                                                    _%expr119794%_)))
                                              (begin
                                                (let ((_g121329_
                                                       (if (##values?
                                                            _g121328_)
                                                           (##vector-length
                                                            _g121328_)
                                                           1)))
                                                  (if (not (##fx= _g121329_ 2))
                                                      (error "Context expects 2 values"
                                                             _g121329_)))
                                                (let ((_%_119796%_
                                                       (##vector-ref
                                                        _g121328_
                                                        0))
                                                      (_%e119797%_
                                                       (##vector-ref
                                                        _g121328_
                                                        1)))
                                                  _%e119797%_)))
                                            (_%E119762119774%_))
                                        (_%E119762119774%_)))))
                              (_%E119762119774%_))))
                      (_%E119762119774%_)))))
          (_%E119761119799%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind119704%_ _%e119705%_ _%rebind?119706%_)
        (let* ((_%e119707119717%_ _%bind119704%_)
               (_%E119709119721%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119707119717%_)))
               (_%E119708119743%_
                (lambda ()
                  (if (gx#stx-pair? _%e119707119717%_)
                      (let ((_%e119710119725%_
                             (gx#syntax-e _%e119707119717%_)))
                        (let ((_%hd119711119728%_ (##car _%e119710119725%_))
                              (_%tl119712119730%_ (##cdr _%e119710119725%_)))
                          (let ((_%id119733%_ _%hd119711119728%_))
                            (if (gx#stx-pair? _%tl119712119730%_)
                                (let ((_%e119713119735%_
                                       (gx#syntax-e _%tl119712119730%_)))
                                  (let ((_%hd119714119738%_
                                         (##car _%e119713119735%_))
                                        (_%tl119715119740%_
                                         (##cdr _%e119713119735%_)))
                                    (if (gx#stx-null? _%tl119715119740%_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _%id119733%_
                                             _%e119705%_
                                             _%rebind?119706%_)
                                            (_%E119709119721%_))
                                        (_%E119709119721%_))))
                                (_%E119709119721%_)))))
                      (_%E119709119721%_)))))
          (_%E119708119743%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind119750%_ _%e119751%_)
        (let ((_%rebind?119753%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind119750%_
           _%e119751%_
           _%rebind?119753%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g121331_
        (let ((_g121330_ (##length _g121331_)))
          (cond ((##fx= _g121330_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g121331_))
                ((##fx= _g121330_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g121331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g121331_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx119662%_)
        (let* ((_%e119663119673%_ _%stx119662%_)
               (_%E119665119677%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119663119673%_)))
               (_%E119664119699%_
                (lambda ()
                  (if (gx#stx-pair? _%e119663119673%_)
                      (let ((_%e119666119681%_
                             (gx#syntax-e _%e119663119673%_)))
                        (let ((_%hd119667119684%_ (##car _%e119666119681%_))
                              (_%tl119668119686%_ (##cdr _%e119666119681%_)))
                          (if (gx#stx-pair? _%tl119668119686%_)
                              (let ((_%e119669119689%_
                                     (gx#syntax-e _%tl119668119686%_)))
                                (let ((_%hd119670119692%_
                                       (##car _%e119669119689%_))
                                      (_%tl119671119694%_
                                       (##cdr _%e119669119689%_)))
                                  (let ((_%expr119697%_ _%hd119670119692%_))
                                    (if (gx#stx-null? _%tl119671119694%_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _%expr119697%_)
                                            (_%E119665119677%_))
                                        (_%E119665119677%_)))))
                              (_%E119665119677%_))))
                      (_%E119665119677%_)))))
          (_%E119664119699%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx119621%_)
        (let* ((_%e119622119632%_ _%stx119621%_)
               (_%E119624119636%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119622119632%_)))
               (_%E119623119658%_
                (lambda ()
                  (if (gx#stx-pair? _%e119622119632%_)
                      (let ((_%e119625119640%_
                             (gx#syntax-e _%e119622119632%_)))
                        (let ((_%hd119626119643%_ (##car _%e119625119640%_))
                              (_%tl119627119645%_ (##cdr _%e119625119640%_)))
                          (if (gx#stx-pair? _%tl119627119645%_)
                              (let ((_%e119628119648%_
                                     (gx#syntax-e _%tl119627119645%_)))
                                (let ((_%hd119629119651%_
                                       (##car _%e119628119648%_))
                                      (_%tl119630119653%_
                                       (##cdr _%e119628119648%_)))
                                  (let ((_%e119656%_ _%hd119629119651%_))
                                    (if (gx#stx-null? _%tl119630119653%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _%e119656%_)
                                                         '()))
                                             (gx#stx-source _%stx119621%_))
                                            (_%E119624119636%_))
                                        (_%E119624119636%_)))))
                              (_%E119624119636%_))))
                      (_%E119624119636%_)))))
          (_%E119623119658%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx119580%_)
        (let* ((_%e119581119591%_ _%stx119580%_)
               (_%E119583119595%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119581119591%_)))
               (_%E119582119617%_
                (lambda ()
                  (if (gx#stx-pair? _%e119581119591%_)
                      (let ((_%e119584119599%_
                             (gx#syntax-e _%e119581119591%_)))
                        (let ((_%hd119585119602%_ (##car _%e119584119599%_))
                              (_%tl119586119604%_ (##cdr _%e119584119599%_)))
                          (if (gx#stx-pair? _%tl119586119604%_)
                              (let ((_%e119587119607%_
                                     (gx#syntax-e _%tl119586119604%_)))
                                (let ((_%hd119588119610%_
                                       (##car _%e119587119607%_))
                                      (_%tl119589119612%_
                                       (##cdr _%e119587119607%_)))
                                  (let ((_%e119615%_ _%hd119588119610%_))
                                    (if (gx#stx-null? _%tl119589119612%_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _%e119615%_)
                                                         '()))
                                             (gx#stx-source _%stx119580%_))
                                            (_%E119583119595%_))
                                        (_%E119583119595%_)))))
                              (_%E119583119595%_))))
                      (_%E119583119595%_)))))
          (_%E119582119617%_))))
    (define gx#core-expand-call%
      (lambda (_%stx119537%_)
        (let* ((_%e119538119548%_ _%stx119537%_)
               (_%E119540119552%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119538119548%_)))
               (_%E119539119576%_
                (lambda ()
                  (if (gx#stx-pair? _%e119538119548%_)
                      (let ((_%e119541119556%_
                             (gx#syntax-e _%e119538119548%_)))
                        (let ((_%hd119542119559%_ (##car _%e119541119556%_))
                              (_%tl119543119561%_ (##cdr _%e119541119556%_)))
                          (if (gx#stx-pair? _%tl119543119561%_)
                              (let ((_%e119544119564%_
                                     (gx#syntax-e _%tl119543119561%_)))
                                (let ((_%hd119545119567%_
                                       (##car _%e119544119564%_))
                                      (_%tl119546119569%_
                                       (##cdr _%e119544119564%_)))
                                  (let* ((_%rator119572%_ _%hd119545119567%_)
                                         (_%args119574%_ _%tl119546119569%_))
                                    (if (gx#stx-list? _%args119574%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator119572%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args119574%_))
                                         (gx#stx-source _%stx119537%_))
                                        (_%E119540119552%_)))))
                              (_%E119540119552%_))))
                      (_%E119540119552%_)))))
          (_%E119539119576%_))))
    (define gx#core-expand-if%
      (lambda (_%stx119470%_)
        (let* ((_%e119471119487%_ _%stx119470%_)
               (_%E119473119491%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119471119487%_)))
               (_%E119472119533%_
                (lambda ()
                  (if (gx#stx-pair? _%e119471119487%_)
                      (let ((_%e119474119495%_
                             (gx#syntax-e _%e119471119487%_)))
                        (let ((_%hd119475119498%_ (##car _%e119474119495%_))
                              (_%tl119476119500%_ (##cdr _%e119474119495%_)))
                          (if (gx#stx-pair? _%tl119476119500%_)
                              (let ((_%e119477119503%_
                                     (gx#syntax-e _%tl119476119500%_)))
                                (let ((_%hd119478119506%_
                                       (##car _%e119477119503%_))
                                      (_%tl119479119508%_
                                       (##cdr _%e119477119503%_)))
                                  (let ((_%test119511%_ _%hd119478119506%_))
                                    (if (gx#stx-pair? _%tl119479119508%_)
                                        (let ((_%e119480119513%_
                                               (gx#syntax-e
                                                _%tl119479119508%_)))
                                          (let ((_%hd119481119516%_
                                                 (##car _%e119480119513%_))
                                                (_%tl119482119518%_
                                                 (##cdr _%e119480119513%_)))
                                            (let ((_%K119521%_
                                                   _%hd119481119516%_))
                                              (if (gx#stx-pair?
                                                   _%tl119482119518%_)
                                                  (let ((_%e119483119523%_
                                                         (gx#syntax-e
                                                          _%tl119482119518%_)))
                                                    (let ((_%hd119484119526%_
                                                           (##car _%e119483119523%_))
                                                          (_%tl119485119528%_
                                                           (##cdr _%e119483119523%_)))
                                                      (let ((_%E119531%_
                                                             _%hd119484119526%_))
                                                        (if (gx#stx-null?
                                                             _%tl119485119528%_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _%test119511%_)
                                     (cons (gx#core-expand-expression
                                            _%K119521%_)
                                           (cons (gx#core-expand-expression
                                                  _%E119531%_)
                                                 '()))))
                         (gx#stx-source _%stx119470%_))
                        (_%E119473119491%_))
                    (_%E119473119491%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119473119491%_)))))
                                        (_%E119473119491%_)))))
                              (_%E119473119491%_))))
                      (_%E119473119491%_)))))
          (_%E119472119533%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx119429%_)
        (let* ((_%e119430119440%_ _%stx119429%_)
               (_%E119432119444%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119430119440%_)))
               (_%E119431119466%_
                (lambda ()
                  (if (gx#stx-pair? _%e119430119440%_)
                      (let ((_%e119433119448%_
                             (gx#syntax-e _%e119430119440%_)))
                        (let ((_%hd119434119451%_ (##car _%e119433119448%_))
                              (_%tl119435119453%_ (##cdr _%e119433119448%_)))
                          (if (gx#stx-pair? _%tl119435119453%_)
                              (let ((_%e119436119456%_
                                     (gx#syntax-e _%tl119435119453%_)))
                                (let ((_%hd119437119459%_
                                       (##car _%e119436119456%_))
                                      (_%tl119438119461%_
                                       (##cdr _%e119436119456%_)))
                                  (let ((_%id119464%_ _%hd119437119459%_))
                                    (if (gx#stx-null? _%tl119438119461%_)
                                        (if (gx#identifier? _%id119464%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id119464%_
                                                          _%stx119429%_)
                                                         '()))
                                             (gx#stx-source _%stx119429%_))
                                            (_%E119432119444%_))
                                        (_%E119432119444%_)))))
                              (_%E119432119444%_))))
                      (_%E119432119444%_)))))
          (_%E119431119466%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx119375%_)
        (let* ((_%e119376119389%_ _%stx119375%_)
               (_%E119378119393%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119376119389%_)))
               (_%E119377119425%_
                (lambda ()
                  (if (gx#stx-pair? _%e119376119389%_)
                      (let ((_%e119379119397%_
                             (gx#syntax-e _%e119376119389%_)))
                        (let ((_%hd119380119400%_ (##car _%e119379119397%_))
                              (_%tl119381119402%_ (##cdr _%e119379119397%_)))
                          (if (gx#stx-pair? _%tl119381119402%_)
                              (let ((_%e119382119405%_
                                     (gx#syntax-e _%tl119381119402%_)))
                                (let ((_%hd119383119408%_
                                       (##car _%e119382119405%_))
                                      (_%tl119384119410%_
                                       (##cdr _%e119382119405%_)))
                                  (let ((_%id119413%_ _%hd119383119408%_))
                                    (if (gx#stx-pair? _%tl119384119410%_)
                                        (let ((_%e119385119415%_
                                               (gx#syntax-e
                                                _%tl119384119410%_)))
                                          (let ((_%hd119386119418%_
                                                 (##car _%e119385119415%_))
                                                (_%tl119387119420%_
                                                 (##cdr _%e119385119415%_)))
                                            (let ((_%expr119423%_
                                                   _%hd119386119418%_))
                                              (if (gx#stx-null?
                                                   _%tl119387119420%_)
                                                  (if (gx#identifier?
                                                       _%id119413%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id119413%_
                            _%stx119375%_)
                           (cons (gx#core-expand-expression _%expr119423%_)
                                 '())))
               (gx#stx-source _%stx119375%_))
              (_%E119378119393%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119378119393%_)))))
                                        (_%E119378119393%_)))))
                              (_%E119378119393%_))))
                      (_%E119378119393%_)))))
          (_%E119377119425%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx119220%_)
        (letrec ((_%generate119222%_
                  (lambda (_%body119252%_)
                    (let _%lp119254%_ ((_%rest119256%_ _%body119252%_)
                                       (_%ns119257%_
                                        (gx#core-context-namespace__0))
                                       (_%r119258%_ '()))
                      (let* ((_%e119259119274%_ _%rest119256%_)
                             (_%E119272119278%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e119259119274%_)))
                             (_%E119268119282%_
                              (lambda ()
                                (if (gx#stx-null? _%e119259119274%_)
                                    (if '#t
                                        (reverse _%r119258%_)
                                        (_%E119272119278%_))
                                    (_%E119272119278%_))))
                             (_%E119261119339%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119259119274%_)
                                    (let ((_%e119269119286%_
                                           (gx#syntax-e _%e119259119274%_)))
                                      (let ((_%hd119270119289%_
                                             (##car _%e119269119286%_))
                                            (_%tl119271119291%_
                                             (##cdr _%e119269119286%_)))
                                        (let* ((_%hd119294%_
                                                _%hd119270119289%_)
                                               (_%rest119296%_
                                                _%tl119271119291%_))
                                          (if '#t
                                              (if (gx#identifier? _%hd119294%_)
                                                  (_%lp119254%_
                                                   _%rest119296%_
                                                   _%ns119257%_
                                                   (cons (cons _%hd119294%_
                                                               (cons (if _%ns119257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _%hd119294%_
                                  _%ns119257%_
                                  '"#"
                                  _%hd119294%_)
                                 _%hd119294%_)
                             '()))
                 _%r119258%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%e119297119307%_
                                                          _%hd119294%_)
                                                         (_%E119299119311%_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e119297119307%_)))
                                                         (_%E119298119335%_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%e119297119307%_)
                        (let ((_%e119300119315%_
                               (gx#syntax-e _%e119297119307%_)))
                          (let ((_%hd119301119318%_ (##car _%e119300119315%_))
                                (_%tl119302119320%_ (##cdr _%e119300119315%_)))
                            (let ((_%id119323%_ _%hd119301119318%_))
                              (if (gx#stx-pair? _%tl119302119320%_)
                                  (let ((_%e119303119325%_
                                         (gx#syntax-e _%tl119302119320%_)))
                                    (let ((_%hd119304119328%_
                                           (##car _%e119303119325%_))
                                          (_%tl119305119330%_
                                           (##cdr _%e119303119325%_)))
                                      (let ((_%eid119333%_ _%hd119304119328%_))
                                        (if (gx#stx-null? _%tl119305119330%_)
                                            (if (and (gx#identifier?
                                                      _%id119323%_)
                                                     (gx#identifier?
                                                      _%eid119333%_))
                                                (_%lp119254%_
                                                 _%rest119296%_
                                                 _%ns119257%_
                                                 (cons (cons _%id119323%_
                                                             (cons _%eid119333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _%r119258%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E119299119311%_))
                                            (_%E119299119311%_)))))
                                  (_%E119299119311%_)))))
                        (_%E119299119311%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E119298119335%_)))
                                              (_%E119268119282%_)))))
                                    (_%E119268119282%_))))
                             (_%E119260119371%_
                              (lambda ()
                                (if (gx#stx-pair? _%e119259119274%_)
                                    (let ((_%e119262119343%_
                                           (gx#syntax-e _%e119259119274%_)))
                                      (let ((_%hd119263119346%_
                                             (##car _%e119262119343%_))
                                            (_%tl119264119348%_
                                             (##cdr _%e119262119343%_)))
                                        (if (eq? (gx#stx-e _%hd119263119346%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl119264119348%_)
                                                (let ((_%e119265119351%_
                                                       (gx#syntax-e
                                                        _%tl119264119348%_)))
                                                  (let ((_%hd119266119354%_
                                                         (##car _%e119265119351%_))
                                                        (_%tl119267119356%_
                                                         (##cdr _%e119265119351%_)))
                                                    (let* ((_%ns119359%_
                                                            _%hd119266119354%_)
                                                           (_%rest119361%_
                                                            _%tl119267119356%_))
                                                      (if '#t
                                                          (let ((_%ns119369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _%ns119359%_)
                             (symbol->string (gx#stx-e _%ns119359%_))
                             (if (or (gx#stx-string? _%ns119359%_)
                                     (gx#stx-false? _%ns119359%_))
                                 (gx#stx-e _%ns119359%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _%stx119220%_
                                  _%ns119359%_)))))
                    (_%lp119254%_ _%rest119361%_ _%ns119369%_ _%r119258%_))
                  (_%E119261119339%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E119261119339%_))
                                            (_%E119261119339%_))))
                                    (_%E119261119339%_)))))
                        (_%E119260119371%_))))))
          (let* ((_%e119223119230%_ _%stx119220%_)
                 (_%E119225119234%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e119223119230%_)))
                 (_%E119224119248%_
                  (lambda ()
                    (if (gx#stx-pair? _%e119223119230%_)
                        (let ((_%e119226119238%_
                               (gx#syntax-e _%e119223119230%_)))
                          (let ((_%hd119227119241%_ (##car _%e119226119238%_))
                                (_%tl119228119243%_ (##cdr _%e119226119238%_)))
                            (let ((_%body119246%_ _%tl119228119243%_))
                              (if (gx#stx-list? _%body119246%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate119222%_ _%body119246%_))
                                  (_%E119225119234%_)))))
                        (_%E119225119234%_)))))
            (_%E119224119248%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx119166%_)
        (let* ((_%e119167119180%_ _%stx119166%_)
               (_%E119169119184%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119167119180%_)))
               (_%E119168119216%_
                (lambda ()
                  (if (gx#stx-pair? _%e119167119180%_)
                      (let ((_%e119170119188%_
                             (gx#syntax-e _%e119167119180%_)))
                        (let ((_%hd119171119191%_ (##car _%e119170119188%_))
                              (_%tl119172119193%_ (##cdr _%e119170119188%_)))
                          (if (gx#stx-pair? _%tl119172119193%_)
                              (let ((_%e119173119196%_
                                     (gx#syntax-e _%tl119172119193%_)))
                                (let ((_%hd119174119199%_
                                       (##car _%e119173119196%_))
                                      (_%tl119175119201%_
                                       (##cdr _%e119173119196%_)))
                                  (let ((_%hd119204%_ _%hd119174119199%_))
                                    (if (gx#stx-pair? _%tl119175119201%_)
                                        (let ((_%e119176119206%_
                                               (gx#syntax-e
                                                _%tl119175119201%_)))
                                          (let ((_%hd119177119209%_
                                                 (##car _%e119176119206%_))
                                                (_%tl119178119211%_
                                                 (##cdr _%e119176119206%_)))
                                            (let ((_%expr119214%_
                                                   _%hd119177119209%_))
                                              (if (gx#stx-null?
                                                   _%tl119178119211%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd119204%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd119204%_)
                          (cons _%expr119214%_ '())))
              (_%E119169119184%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119169119184%_)))))
                                        (_%E119169119184%_)))))
                              (_%E119169119184%_))))
                      (_%E119169119184%_)))))
          (_%E119168119216%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx119112%_)
        (let* ((_%e119113119126%_ _%stx119112%_)
               (_%E119115119130%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119113119126%_)))
               (_%E119114119162%_
                (lambda ()
                  (if (gx#stx-pair? _%e119113119126%_)
                      (let ((_%e119116119134%_
                             (gx#syntax-e _%e119113119126%_)))
                        (let ((_%hd119117119137%_ (##car _%e119116119134%_))
                              (_%tl119118119139%_ (##cdr _%e119116119134%_)))
                          (if (gx#stx-pair? _%tl119118119139%_)
                              (let ((_%e119119119142%_
                                     (gx#syntax-e _%tl119118119139%_)))
                                (let ((_%hd119120119145%_
                                       (##car _%e119119119142%_))
                                      (_%tl119121119147%_
                                       (##cdr _%e119119119142%_)))
                                  (let ((_%hd119150%_ _%hd119120119145%_))
                                    (if (gx#stx-pair? _%tl119121119147%_)
                                        (let ((_%e119122119152%_
                                               (gx#syntax-e
                                                _%tl119121119147%_)))
                                          (let ((_%hd119123119155%_
                                                 (##car _%e119122119152%_))
                                                (_%tl119124119157%_
                                                 (##cdr _%e119122119152%_)))
                                            (let ((_%expr119160%_
                                                   _%hd119123119155%_))
                                              (if (gx#stx-null?
                                                   _%tl119124119157%_)
                                                  (if (gx#identifier?
                                                       _%hd119150%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd119150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr119160%_ '())))
              (_%E119115119130%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119115119130%_)))))
                                        (_%E119115119130%_)))))
                              (_%E119115119130%_))))
                      (_%E119115119130%_)))))
          (_%E119114119162%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx119058%_)
        (let* ((_%e119059119072%_ _%stx119058%_)
               (_%E119061119076%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119059119072%_)))
               (_%E119060119108%_
                (lambda ()
                  (if (gx#stx-pair? _%e119059119072%_)
                      (let ((_%e119062119080%_
                             (gx#syntax-e _%e119059119072%_)))
                        (let ((_%hd119063119083%_ (##car _%e119062119080%_))
                              (_%tl119064119085%_ (##cdr _%e119062119080%_)))
                          (if (gx#stx-pair? _%tl119064119085%_)
                              (let ((_%e119065119088%_
                                     (gx#syntax-e _%tl119064119085%_)))
                                (let ((_%hd119066119091%_
                                       (##car _%e119065119088%_))
                                      (_%tl119067119093%_
                                       (##cdr _%e119065119088%_)))
                                  (let ((_%id119096%_ _%hd119066119091%_))
                                    (if (gx#stx-pair? _%tl119067119093%_)
                                        (let ((_%e119068119098%_
                                               (gx#syntax-e
                                                _%tl119067119093%_)))
                                          (let ((_%hd119069119101%_
                                                 (##car _%e119068119098%_))
                                                (_%tl119070119103%_
                                                 (##cdr _%e119068119098%_)))
                                            (let ((_%alias-id119106%_
                                                   _%hd119069119101%_))
                                              (if (gx#stx-null?
                                                   _%tl119070119103%_)
                                                  (if (and (gx#identifier?
                                                            _%id119096%_)
                                                           (gx#identifier?
                                                            _%alias-id119106%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id119096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id119106%_ '())))
              (_%E119061119076%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E119061119076%_)))))
                                        (_%E119061119076%_)))))
                              (_%E119061119076%_))))
                      (_%E119061119076%_)))))
          (_%E119060119108%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx119015%_)
        (let* ((_%e119016119026%_ _%stx119015%_)
               (_%E119018119030%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e119016119026%_)))
               (_%E119017119054%_
                (lambda ()
                  (if (gx#stx-pair? _%e119016119026%_)
                      (let ((_%e119019119034%_
                             (gx#syntax-e _%e119016119026%_)))
                        (let ((_%hd119020119037%_ (##car _%e119019119034%_))
                              (_%tl119021119039%_ (##cdr _%e119019119034%_)))
                          (if (gx#stx-pair? _%tl119021119039%_)
                              (let ((_%e119022119042%_
                                     (gx#syntax-e _%tl119021119039%_)))
                                (let ((_%hd119023119045%_
                                       (##car _%e119022119042%_))
                                      (_%tl119024119047%_
                                       (##cdr _%e119022119042%_)))
                                  (let* ((_%hd119050%_ _%hd119023119045%_)
                                         (_%body119052%_ _%tl119024119047%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd119050%_)
                                             (gx#stx-list? _%body119052%_)
                                             (not (gx#stx-null?
                                                   _%body119052%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd119050%_)
                                         _%body119052%_)
                                        (_%E119018119030%_)))))
                              (_%E119018119030%_))))
                      (_%E119018119030%_)))))
          (_%E119017119054%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx118951%_)
        (letrec ((_%generate118953%_
                  (lambda (_%clause118983%_)
                    (let* ((_%e118984118991%_ _%clause118983%_)
                           (_%E118986118995%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx118951%_
                               _%clause118983%_)))
                           (_%E118985119011%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118984118991%_)
                                  (let ((_%e118987118999%_
                                         (gx#syntax-e _%e118984118991%_)))
                                    (let ((_%hd118988119002%_
                                           (##car _%e118987118999%_))
                                          (_%tl118989119004%_
                                           (##cdr _%e118987118999%_)))
                                      (let* ((_%hd119007%_ _%hd118988119002%_)
                                             (_%body119009%_
                                              _%tl118989119004%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd119007%_)
                                                 (gx#stx-list? _%body119009%_)
                                                 (not (gx#stx-null?
                                                       _%body119009%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd119007%_)
                                                   _%body119009%_)
                                             (gx#stx-source _%clause118983%_))
                                            (_%E118986118995%_)))))
                                  (_%E118986118995%_)))))
                      (_%E118985119011%_)))))
          (let* ((_%e118954118961%_ _%stx118951%_)
                 (_%E118956118965%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e118954118961%_)))
                 (_%E118955118979%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118954118961%_)
                        (let ((_%e118957118969%_
                               (gx#syntax-e _%e118954118961%_)))
                          (let ((_%hd118958118972%_ (##car _%e118957118969%_))
                                (_%tl118959118974%_ (##cdr _%e118957118969%_)))
                            (let ((_%clauses118977%_ _%tl118959118974%_))
                              (if (gx#stx-list? _%clauses118977%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate118953%_
                                    _%clauses118977%_))
                                  (_%E118956118965%_)))))
                        (_%E118956118965%_)))))
            (_%E118955118979%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx118852%_ _%form118853%_)
        (letrec ((_%generate118855%_
                  (lambda (_%bind118898%_)
                    (let* ((_%e118899118909%_ _%bind118898%_)
                           (_%E118901118913%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx118852%_
                               _%bind118898%_)))
                           (_%E118900118937%_
                            (lambda ()
                              (if (gx#stx-pair? _%e118899118909%_)
                                  (let ((_%e118902118917%_
                                         (gx#syntax-e _%e118899118909%_)))
                                    (let ((_%hd118903118920%_
                                           (##car _%e118902118917%_))
                                          (_%tl118904118922%_
                                           (##cdr _%e118902118917%_)))
                                      (let ((_%ids118925%_ _%hd118903118920%_))
                                        (if (gx#stx-pair? _%tl118904118922%_)
                                            (let ((_%e118905118927%_
                                                   (gx#syntax-e
                                                    _%tl118904118922%_)))
                                              (let ((_%hd118906118930%_
                                                     (##car _%e118905118927%_))
                                                    (_%tl118907118932%_
                                                     (##cdr _%e118905118927%_)))
                                                (let ((_%expr118935%_
                                                       _%hd118906118930%_))
                                                  (if (gx#stx-null?
                                                       _%tl118907118932%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids118925%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids118925%_)
                        (cons _%expr118935%_ '()))
                  (_%E118901118913%_))
              (_%E118901118913%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E118901118913%_)))))
                                  (_%E118901118913%_)))))
                      (_%E118900118937%_)))))
          (let* ((_%e118856118866%_ _%stx118852%_)
                 (_%E118858118870%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e118856118866%_)))
                 (_%E118857118894%_
                  (lambda ()
                    (if (gx#stx-pair? _%e118856118866%_)
                        (let ((_%e118859118874%_
                               (gx#syntax-e _%e118856118866%_)))
                          (let ((_%hd118860118877%_ (##car _%e118859118874%_))
                                (_%tl118861118879%_ (##cdr _%e118859118874%_)))
                            (if (gx#stx-pair? _%tl118861118879%_)
                                (let ((_%e118862118882%_
                                       (gx#syntax-e _%tl118861118879%_)))
                                  (let ((_%hd118863118885%_
                                         (##car _%e118862118882%_))
                                        (_%tl118864118887%_
                                         (##cdr _%e118862118882%_)))
                                    (let* ((_%hd118890%_ _%hd118863118885%_)
                                           (_%body118892%_ _%tl118864118887%_))
                                      (if (and (gx#stx-list? _%hd118890%_)
                                               (gx#stx-list? _%body118892%_)
                                               (not (gx#stx-null?
                                                     _%body118892%_)))
                                          (gx#core-cons*
                                           _%form118853%_
                                           (gx#stx-map1
                                            _%generate118855%_
                                            _%hd118890%_)
                                           _%body118892%_)
                                          (_%E118858118870%_)))))
                                (_%E118858118870%_))))
                        (_%E118858118870%_)))))
            (_%E118857118894%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx118944%_)
        (let ((_%form118946%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx118944%_ _%form118946%_))))
    (define gx#macro-expand-let-values
      (lambda _g121333_
        (let ((_g121332_ (##length _g121333_)))
          (cond ((##fx= _g121332_ 1)
                 (apply gx#macro-expand-let-values__0 _g121333_))
                ((##fx= _g121332_ 2)
                 (apply gx#macro-expand-let-values__% _g121333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g121333_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx118849%_)
        (gx#macro-expand-let-values__% _%stx118849%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx118847%_)
        (gx#macro-expand-let-values__% _%stx118847%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx118738%_)
        (let* ((_%e118739118765%_ _%stx118738%_)
               (_%E118751118769%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e118739118765%_)))
               (_%E118741118811%_
                (lambda ()
                  (if (gx#stx-pair? _%e118739118765%_)
                      (let ((_%e118752118773%_
                             (gx#syntax-e _%e118739118765%_)))
                        (let ((_%hd118753118776%_ (##car _%e118752118773%_))
                              (_%tl118754118778%_ (##cdr _%e118752118773%_)))
                          (if (gx#stx-pair? _%tl118754118778%_)
                              (let ((_%e118755118781%_
                                     (gx#syntax-e _%tl118754118778%_)))
                                (let ((_%hd118756118784%_
                                       (##car _%e118755118781%_))
                                      (_%tl118757118786%_
                                       (##cdr _%e118755118781%_)))
                                  (let ((_%test118789%_ _%hd118756118784%_))
                                    (if (gx#stx-pair? _%tl118757118786%_)
                                        (let ((_%e118758118791%_
                                               (gx#syntax-e
                                                _%tl118757118786%_)))
                                          (let ((_%hd118759118794%_
                                                 (##car _%e118758118791%_))
                                                (_%tl118760118796%_
                                                 (##cdr _%e118758118791%_)))
                                            (let ((_%K118799%_
                                                   _%hd118759118794%_))
                                              (if (gx#stx-pair?
                                                   _%tl118760118796%_)
                                                  (let ((_%e118761118801%_
                                                         (gx#syntax-e
                                                          _%tl118760118796%_)))
                                                    (let ((_%hd118762118804%_
                                                           (##car _%e118761118801%_))
                                                          (_%tl118763118806%_
                                                           (##cdr _%e118761118801%_)))
                                                      (let ((_%E118809%_
                                                             _%hd118762118804%_))
                                                        (if (gx#stx-null?
                                                             _%tl118763118806%_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _%test118789%_
                         _%K118799%_
                         _%E118809%_)
                        (_%E118751118769%_))
                    (_%E118751118769%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E118751118769%_)))))
                                        (_%E118751118769%_)))))
                              (_%E118751118769%_))))
                      (_%E118751118769%_))))
               (_%E118740118843%_
                (lambda ()
                  (if (gx#stx-pair? _%e118739118765%_)
                      (let ((_%e118742118815%_
                             (gx#syntax-e _%e118739118765%_)))
                        (let ((_%hd118743118818%_ (##car _%e118742118815%_))
                              (_%tl118744118820%_ (##cdr _%e118742118815%_)))
                          (if (gx#stx-pair? _%tl118744118820%_)
                              (let ((_%e118745118823%_
                                     (gx#syntax-e _%tl118744118820%_)))
                                (let ((_%hd118746118826%_
                                       (##car _%e118745118823%_))
                                      (_%tl118747118828%_
                                       (##cdr _%e118745118823%_)))
                                  (let ((_%test118831%_ _%hd118746118826%_))
                                    (if (gx#stx-pair? _%tl118747118828%_)
                                        (let ((_%e118748118833%_
                                               (gx#syntax-e
                                                _%tl118747118828%_)))
                                          (let ((_%hd118749118836%_
                                                 (##car _%e118748118833%_))
                                                (_%tl118750118838%_
                                                 (##cdr _%e118748118833%_)))
                                            (let ((_%K118841%_
                                                   _%hd118749118836%_))
                                              (if (gx#stx-null?
                                                   _%tl118750118838%_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _%test118831%_
                                                       _%K118841%_
                                                       '#!void)
                                                      (_%E118741118811%_))
                                                  (_%E118741118811%_)))))
                                        (_%E118741118811%_)))))
                              (_%E118741118811%_))))
                      (_%E118741118811%_)))))
          (_%E118740118843%_))))
    (define gx#free-identifier=?
      (lambda (_%xid118723%_ _%yid118724%_)
        (let ((_%xe118726%_ (gx#resolve-identifier__0 _%xid118723%_))
              (_%ye118727%_ (gx#resolve-identifier__0 _%yid118724%_)))
          (if (and _%xe118726%_ _%ye118727%_)
              (let ((_%$e118730%_ (eq? _%xe118726%_ _%ye118727%_)))
                (if _%$e118730%_
                    _%$e118730%_
                    (if (##structure-instance-of? _%xe118726%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye118727%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe118726%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye118727%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe118726%_ _%ye118727%_)
                  '#f
                  (gx#stx-eq? _%xid118723%_ _%yid118724%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid118704%_ _%yid118705%_)
        (letrec ((_%context118707%_
                  (lambda (_%e118721%_)
                    (if (##structure-direct-instance-of?
                         _%e118721%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e118721%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks118708%_
                  (lambda (_%e118716%_)
                    (if (symbol? _%e118716%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e118716%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e118716%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e118716%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap118709%_
                  (lambda (_%e118714%_)
                    (if (symbol? _%e118714%_)
                        _%e118714%_
                        (gx#syntax-local-unwrap _%e118714%_)))))
          (let ((_%x118711%_ (_%unwrap118709%_ _%xid118704%_))
                (_%y118712%_ (_%unwrap118709%_ _%yid118705%_)))
            (if (gx#stx-eq? _%x118711%_ _%y118712%_)
                (if (eq? (_%context118707%_ _%x118711%_)
                         (_%context118707%_ _%y118712%_))
                    (equal? (_%marks118708%_ _%x118711%_)
                            (_%marks118708%_ _%y118712%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx118702%_)
        (if (gx#identifier? _%stx118702%_)
            (gx#core-identifier=? _%stx118702%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx118700%_)
        (if (gx#identifier? _%stx118700%_)
            (gx#core-identifier=? _%stx118700%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx118643%_ _%where118644%_)
        (let _%lp118646%_ ((_%rest118648%_ (gx#syntax->list _%stx118643%_)))
          (let* ((_%rest118649118657%_ _%rest118648%_)
                 (_%else118651118665%_ (lambda () '#t))
                 (_%K118653118678%_
                  (lambda (_%rest118668%_ _%hd118669%_)
                    (if (not (gx#identifier? _%hd118669%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where118644%_
                         _%hd118669%_)
                        (if (__find (lambda (_%g118671118673%_)
                                      (gx#bound-identifier=?
                                       _%g118671118673%_
                                       _%hd118669%_))
                                    _%rest118668%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where118644%_
                             _%hd118669%_)
                            (_%lp118646%_ _%rest118668%_))))))
            (if (##pair? _%rest118649118657%_)
                (let ((_%hd118654118681%_ (##car _%rest118649118657%_))
                      (_%tl118655118683%_ (##cdr _%rest118649118657%_)))
                  (let* ((_%hd118686%_ _%hd118654118681%_)
                         (_%rest118688%_ _%tl118655118683%_))
                    (_%K118653118678%_ _%rest118688%_ _%hd118686%_)))
                (_%else118651118665%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx118693%_)
        (let ((_%where118695%_ _%stx118693%_))
          (gx#check-duplicate-identifiers__% _%stx118693%_ _%where118695%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g121335_
        (let ((_g121334_ (##length _g121335_)))
          (cond ((##fx= _g121334_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g121335_))
                ((##fx= _g121334_ 2)
                 (apply gx#check-duplicate-identifiers__% _g121335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g121335_))))))
    (define gx#core-bind-values?
      (lambda (_%stx118635%_)
        (gx#stx-andmap
         (lambda (_%x118637%_)
           (let ((_%$e118639%_ (gx#identifier? _%x118637%_)))
             (if _%$e118639%_ _%$e118639%_ (gx#stx-false? _%x118637%_))))
         _%stx118635%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx118599%_ _%rebind?118600%_ _%phi118601%_ _%ctx118602%_)
        (gx#stx-for-each1
         (lambda (_%id118604%_)
           (if (gx#identifier? _%id118604%_)
               (gx#core-bind-runtime!__%
                _%id118604%_
                _%rebind?118600%_
                _%phi118601%_
                _%ctx118602%_)
               '#!void))
         _%stx118599%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx118609%_)
        (let* ((_%rebind?118611%_ '#f)
               (_%phi118613%_ (gx#current-expander-phi))
               (_%ctx118615%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118609%_
           _%rebind?118611%_
           _%phi118613%_
           _%ctx118615%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx118617%_ _%rebind?118618%_)
        (let* ((_%phi118620%_ (gx#current-expander-phi))
               (_%ctx118622%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118617%_
           _%rebind?118618%_
           _%phi118620%_
           _%ctx118622%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx118624%_ _%rebind?118625%_ _%phi118626%_)
        (let ((_%ctx118628%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx118624%_
           _%rebind?118625%_
           _%phi118626%_
           _%ctx118628%_))))
    (define gx#core-bind-values!
      (lambda _g121337_
        (let ((_g121336_ (##length _g121337_)))
          (cond ((##fx= _g121336_ 1) (apply gx#core-bind-values!__0 _g121337_))
                ((##fx= _g121336_ 2) (apply gx#core-bind-values!__1 _g121337_))
                ((##fx= _g121336_ 3) (apply gx#core-bind-values!__2 _g121337_))
                ((##fx= _g121336_ 4) (apply gx#core-bind-values!__% _g121337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g121337_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx118594%_)
        (gx#stx-map1
         (lambda (_%x118596%_)
           (if (gx#identifier? _%x118596%_)
               (gx#core-quote-syntax__0 _%x118596%_)
               '#f))
         _%stx118594%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx118587%_)
        (if (gx#identifier? _%stx118587%_)
            (let* ((_%bind118589%_ (gx#resolve-identifier__0 _%stx118587%_))
                   (_%$e118591%_ (not _%bind118589%_)))
              (if _%$e118591%_
                  _%$e118591%_
                  (##structure-instance-of?
                   _%bind118589%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id118576%_ _%form118577%_)
        (let ((_%bind118579%_ (gx#resolve-identifier__0 _%id118576%_)))
          (if (##structure-instance-of? _%bind118579%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id118576%_)
              (if (not _%bind118579%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id118576%_)))
                      (gx#core-quote-syntax__0 _%id118576%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form118577%_
                       _%id118576%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form118577%_
                   _%id118576%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id118531%_ _%rebind?118532%_ _%phi118533%_ _%ctx118534%_)
        (let* ((_%key118536%_ (gx#core-identifier-key _%id118531%_))
               (_%eid118538%_
                (gx#make-binding-id__%
                 _%key118536%_
                 '#f
                 _%phi118533%_
                 _%ctx118534%_))
               (_%bind118544%_
                (if (##structure-instance-of?
                     _%ctx118534%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid118538%_
                     _%key118536%_
                     _%phi118533%_
                     _%ctx118534%_)
                    (if (##structure-instance-of?
                         _%ctx118534%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid118538%_
                         _%key118536%_
                         _%phi118533%_)
                        (if (##structure-instance-of?
                             _%ctx118534%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid118538%_
                             _%key118536%_
                             _%phi118533%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid118538%_
                             _%key118536%_
                             _%phi118533%_))))))
          (gx#bind-identifier!__%
           _%id118531%_
           _%bind118544%_
           _%rebind?118532%_
           _%phi118533%_
           _%ctx118534%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id118550%_)
        (let* ((_%rebind?118552%_ '#f)
               (_%phi118554%_ (gx#current-expander-phi))
               (_%ctx118556%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118550%_
           _%rebind?118552%_
           _%phi118554%_
           _%ctx118556%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id118558%_ _%rebind?118559%_)
        (let* ((_%phi118561%_ (gx#current-expander-phi))
               (_%ctx118563%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118558%_
           _%rebind?118559%_
           _%phi118561%_
           _%ctx118563%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id118565%_ _%rebind?118566%_ _%phi118567%_)
        (let ((_%ctx118569%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id118565%_
           _%rebind?118566%_
           _%phi118567%_
           _%ctx118569%_))))
    (define gx#core-bind-runtime!
      (lambda _g121339_
        (let ((_g121338_ (##length _g121339_)))
          (cond ((##fx= _g121338_ 1)
                 (apply gx#core-bind-runtime!__0 _g121339_))
                ((##fx= _g121338_ 2)
                 (apply gx#core-bind-runtime!__1 _g121339_))
                ((##fx= _g121338_ 3)
                 (apply gx#core-bind-runtime!__2 _g121339_))
                ((##fx= _g121338_ 4)
                 (apply gx#core-bind-runtime!__% _g121339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g121339_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id118483%_
               _%eid118484%_
               _%rebind?118485%_
               _%phi118486%_
               _%ctx118487%_)
        (let* ((_%key118489%_ (gx#core-identifier-key _%id118483%_))
               (_%bind118494%_
                (if (##structure-instance-of?
                     _%ctx118487%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid118484%_
                     _%key118489%_
                     _%phi118486%_
                     _%ctx118487%_)
                    (if (##structure-instance-of?
                         _%ctx118487%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid118484%_
                         _%key118489%_
                         _%phi118486%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid118484%_
                         _%key118489%_
                         _%phi118486%_)))))
          (gx#bind-identifier!__%
           _%id118483%_
           _%bind118494%_
           _%rebind?118485%_
           _%phi118486%_
           _%ctx118487%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id118500%_ _%eid118501%_)
        (let* ((_%rebind?118503%_ '#f)
               (_%phi118505%_ (gx#current-expander-phi))
               (_%ctx118507%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118500%_
           _%eid118501%_
           _%rebind?118503%_
           _%phi118505%_
           _%ctx118507%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id118509%_ _%eid118510%_ _%rebind?118511%_)
        (let* ((_%phi118513%_ (gx#current-expander-phi))
               (_%ctx118515%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118509%_
           _%eid118510%_
           _%rebind?118511%_
           _%phi118513%_
           _%ctx118515%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id118517%_ _%eid118518%_ _%rebind?118519%_ _%phi118520%_)
        (let ((_%ctx118522%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id118517%_
           _%eid118518%_
           _%rebind?118519%_
           _%phi118520%_
           _%ctx118522%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g121341_
        (let ((_g121340_ (##length _g121341_)))
          (cond ((##fx= _g121340_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g121341_))
                ((##fx= _g121340_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g121341_))
                ((##fx= _g121340_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g121341_))
                ((##fx= _g121340_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g121341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g121341_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id118443%_
               _%eid118444%_
               _%rebind?118445%_
               _%phi118446%_
               _%ctx118447%_)
        (gx#bind-identifier!__%
         _%id118443%_
         (##structure
          gx#extern-binding::t
          _%eid118444%_
          (gx#core-identifier-key _%id118443%_)
          _%phi118446%_)
         _%rebind?118445%_
         _%phi118446%_
         _%ctx118447%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id118452%_ _%eid118453%_)
        (let* ((_%rebind?118455%_ '#f)
               (_%phi118457%_ (gx#current-expander-phi))
               (_%ctx118459%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118452%_
           _%eid118453%_
           _%rebind?118455%_
           _%phi118457%_
           _%ctx118459%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id118461%_ _%eid118462%_ _%rebind?118463%_)
        (let* ((_%phi118465%_ (gx#current-expander-phi))
               (_%ctx118467%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118461%_
           _%eid118462%_
           _%rebind?118463%_
           _%phi118465%_
           _%ctx118467%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id118469%_ _%eid118470%_ _%rebind?118471%_ _%phi118472%_)
        (let ((_%ctx118474%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id118469%_
           _%eid118470%_
           _%rebind?118471%_
           _%phi118472%_
           _%ctx118474%_))))
    (define gx#core-bind-extern!
      (lambda _g121343_
        (let ((_g121342_ (##length _g121343_)))
          (cond ((##fx= _g121342_ 2) (apply gx#core-bind-extern!__0 _g121343_))
                ((##fx= _g121342_ 3) (apply gx#core-bind-extern!__1 _g121343_))
                ((##fx= _g121342_ 4) (apply gx#core-bind-extern!__2 _g121343_))
                ((##fx= _g121342_ 5) (apply gx#core-bind-extern!__% _g121343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g121343_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id118397%_
               _%e118398%_
               _%rebind?118399%_
               _%phi118400%_
               _%ctx118401%_)
        (gx#bind-identifier!__%
         _%id118397%_
         (let ((_%key118406%_ (gx#core-identifier-key _%id118397%_))
               (_%e118407%_
                (if (or (##structure-instance-of? _%e118398%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e118398%_
                         'gx#expander-context::t))
                    _%e118398%_
                    (##structure
                     gx#user-expander::t
                     _%e118398%_
                     _%ctx118401%_
                     _%phi118400%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key118406%_
             '#t
             _%phi118400%_
             _%ctx118401%_)
            _%key118406%_
            _%phi118400%_
            _%e118407%_))
         _%rebind?118399%_
         _%phi118400%_
         _%ctx118401%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id118412%_ _%e118413%_)
        (let* ((_%rebind?118415%_ '#f)
               (_%phi118417%_ (gx#current-expander-phi))
               (_%ctx118419%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118412%_
           _%e118413%_
           _%rebind?118415%_
           _%phi118417%_
           _%ctx118419%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id118421%_ _%e118422%_ _%rebind?118423%_)
        (let* ((_%phi118425%_ (gx#current-expander-phi))
               (_%ctx118427%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118421%_
           _%e118422%_
           _%rebind?118423%_
           _%phi118425%_
           _%ctx118427%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id118429%_ _%e118430%_ _%rebind?118431%_ _%phi118432%_)
        (let ((_%ctx118434%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id118429%_
           _%e118430%_
           _%rebind?118431%_
           _%phi118432%_
           _%ctx118434%_))))
    (define gx#core-bind-syntax!
      (lambda _g121345_
        (let ((_g121344_ (##length _g121345_)))
          (cond ((##fx= _g121344_ 2) (apply gx#core-bind-syntax!__0 _g121345_))
                ((##fx= _g121344_ 3) (apply gx#core-bind-syntax!__1 _g121345_))
                ((##fx= _g121344_ 4) (apply gx#core-bind-syntax!__2 _g121345_))
                ((##fx= _g121344_ 5) (apply gx#core-bind-syntax!__% _g121345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g121345_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id118380%_ _%e118381%_ _%rebind?118382%_)
        (gx#core-bind-syntax!__%
         _%id118380%_
         _%e118381%_
         _%rebind?118382%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id118387%_ _%e118388%_)
        (let ((_%rebind?118390%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id118387%_
           _%e118388%_
           _%rebind?118390%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g121347_
        (let ((_g121346_ (##length _g121347_)))
          (cond ((##fx= _g121346_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g121347_))
                ((##fx= _g121346_ 3)
                 (apply gx#core-bind-root-syntax!__% _g121347_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g121347_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id118338%_
               _%alias-id118339%_
               _%rebind?118340%_
               _%phi118341%_
               _%ctx118342%_)
        (gx#bind-identifier!__%
         _%id118338%_
         (let ((_%key118344%_ (gx#core-identifier-key _%id118338%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key118344%_
             '#t
             _%phi118341%_
             _%ctx118342%_)
            _%key118344%_
            _%phi118341%_
            _%alias-id118339%_))
         _%rebind?118340%_
         _%phi118341%_
         _%ctx118342%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id118349%_ _%alias-id118350%_)
        (let* ((_%rebind?118352%_ '#f)
               (_%phi118354%_ (gx#current-expander-phi))
               (_%ctx118356%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118349%_
           _%alias-id118350%_
           _%rebind?118352%_
           _%phi118354%_
           _%ctx118356%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id118358%_ _%alias-id118359%_ _%rebind?118360%_)
        (let* ((_%phi118362%_ (gx#current-expander-phi))
               (_%ctx118364%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118358%_
           _%alias-id118359%_
           _%rebind?118360%_
           _%phi118362%_
           _%ctx118364%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id118366%_ _%alias-id118367%_ _%rebind?118368%_ _%phi118369%_)
        (let ((_%ctx118371%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id118366%_
           _%alias-id118367%_
           _%rebind?118368%_
           _%phi118369%_
           _%ctx118371%_))))
    (define gx#core-bind-alias!
      (lambda _g121349_
        (let ((_g121348_ (##length _g121349_)))
          (cond ((##fx= _g121348_ 2) (apply gx#core-bind-alias!__0 _g121349_))
                ((##fx= _g121348_ 3) (apply gx#core-bind-alias!__1 _g121349_))
                ((##fx= _g121348_ 4) (apply gx#core-bind-alias!__2 _g121349_))
                ((##fx= _g121348_ 5) (apply gx#core-bind-alias!__% _g121349_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g121349_))))))
    (define gx#make-binding-id__%
      (lambda (_%key118288%_ _%syntax?118289%_ _%phi118290%_ _%ctx118291%_)
        (if (uninterned-symbol? _%key118288%_)
            (##gensym 'L)
            (if (pair? _%key118288%_)
                (gensym (car _%key118288%_))
                (if (##structure-instance-of? _%ctx118291%_ 'gx#top-context::t)
                    (let ((_%ns118296%_
                           (gx#core-context-namespace__% _%ctx118291%_)))
                      (if (and (fxzero? _%phi118290%_) (not _%syntax?118289%_))
                          (if _%ns118296%_
                              (make-symbol__1 _%ns118296%_ '"#" _%key118288%_)
                              _%key118288%_)
                          (if _%syntax?118289%_
                              (make-symbol__1
                               (let ((_%$e118300%_ _%ns118296%_))
                                 (if _%$e118300%_ _%$e118300%_ '""))
                               '"[:"
                               (number->string _%phi118290%_)
                               '":]#"
                               _%key118288%_)
                              (make-symbol__1
                               (let ((_%$e118304%_ _%ns118296%_))
                                 (if _%$e118304%_ _%$e118304%_ '""))
                               '"["
                               (number->string _%phi118290%_)
                               '"]#"
                               _%key118288%_))))
                    (gensym _%key118288%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key118311%_)
        (let* ((_%syntax?118313%_ '#f)
               (_%phi118315%_ (gx#current-expander-phi))
               (_%ctx118317%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118311%_
           _%syntax?118313%_
           _%phi118315%_
           _%ctx118317%_))))
    (define gx#make-binding-id__1
      (lambda (_%key118319%_ _%syntax?118320%_)
        (let* ((_%phi118322%_ (gx#current-expander-phi))
               (_%ctx118324%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118319%_
           _%syntax?118320%_
           _%phi118322%_
           _%ctx118324%_))))
    (define gx#make-binding-id__2
      (lambda (_%key118326%_ _%syntax?118327%_ _%phi118328%_)
        (let ((_%ctx118330%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key118326%_
           _%syntax?118327%_
           _%phi118328%_
           _%ctx118330%_))))
    (define gx#make-binding-id
      (lambda _g121351_
        (let ((_g121350_ (##length _g121351_)))
          (cond ((##fx= _g121350_ 1) (apply gx#make-binding-id__0 _g121351_))
                ((##fx= _g121350_ 2) (apply gx#make-binding-id__1 _g121351_))
                ((##fx= _g121350_ 3) (apply gx#make-binding-id__2 _g121351_))
                ((##fx= _g121350_ 4) (apply gx#make-binding-id__% _g121351_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g121351_))))))))
