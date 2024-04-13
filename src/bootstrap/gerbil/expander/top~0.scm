(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1713044316)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx123733%_)
        (letrec ((_%expand-special123735%_
                  (lambda (_%hd123737%_ _%K123738%_ _%rest123739%_ _%r123740%_)
                    (_%K123738%_
                     _%rest123739%_
                     (cons (gx#core-expand-top _%hd123737%_) _%r123740%_)))))
          (gx#core-expand-block__0 _%stx123733%_ _%expand-special123735%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx123486%_)
        (letrec ((_%expand-special123488%_
                  (lambda (_%hd123608%_ _%K123609%_ _%rest123610%_ _%r123611%_)
                    (let* ((_%K123615%_
                            (lambda (_%e123613%_)
                              (_%K123609%_
                               _%rest123610%_
                               (cons _%e123613%_ _%r123611%_))))
                           (_%e123616123645%_ _%hd123608%_)
                           (_%E123640123649%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123616123645%_)))
                           (_%E123636123661%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123616123645%_)
                                  (let ((_%e123641123653%_
                                         (gx#syntax-e _%e123616123645%_)))
                                    (let ((_%hd123642123656%_
                                           (##car _%e123641123653%_))
                                          (_%tl123643123658%_
                                           (##cdr _%e123641123653%_)))
                                      (if (and (gx#identifier?
                                                _%hd123642123656%_)
                                               (gx#core-identifier=?
                                                _%hd123642123656%_
                                                '%#define-runtime))
                                          (_%K123615%_
                                           (gx#core-expand-define-runtime%
                                            _%hd123608%_))
                                          (_%E123640123649%_))))
                                  (_%E123640123649%_))))
                           (_%E123632123673%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123616123645%_)
                                  (let ((_%e123637123665%_
                                         (gx#syntax-e _%e123616123645%_)))
                                    (let ((_%hd123638123668%_
                                           (##car _%e123637123665%_))
                                          (_%tl123639123670%_
                                           (##cdr _%e123637123665%_)))
                                      (if (and (gx#identifier?
                                                _%hd123638123668%_)
                                               (gx#core-identifier=?
                                                _%hd123638123668%_
                                                '%#define-alias))
                                          (_%K123615%_
                                           (gx#core-expand-define-alias%
                                            _%hd123608%_))
                                          (_%E123636123661%_))))
                                  (_%E123636123661%_))))
                           (_%E123622123685%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123616123645%_)
                                  (let ((_%e123633123677%_
                                         (gx#syntax-e _%e123616123645%_)))
                                    (let ((_%hd123634123680%_
                                           (##car _%e123633123677%_))
                                          (_%tl123635123682%_
                                           (##cdr _%e123633123677%_)))
                                      (if (and (gx#identifier?
                                                _%hd123634123680%_)
                                               (gx#core-identifier=?
                                                _%hd123634123680%_
                                                '%#define-syntax))
                                          (_%K123615%_
                                           (gx#core-expand-define-syntax%
                                            _%hd123608%_))
                                          (_%E123632123673%_))))
                                  (_%E123632123673%_))))
                           (_%E123618123717%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123616123645%_)
                                  (let ((_%e123623123689%_
                                         (gx#syntax-e _%e123616123645%_)))
                                    (let ((_%hd123624123692%_
                                           (##car _%e123623123689%_))
                                          (_%tl123625123694%_
                                           (##cdr _%e123623123689%_)))
                                      (if (and (gx#identifier?
                                                _%hd123624123692%_)
                                               (gx#core-identifier=?
                                                _%hd123624123692%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123625123694%_)
                                              (let ((_%e123626123697%_
                                                     (gx#syntax-e
                                                      _%tl123625123694%_)))
                                                (let ((_%hd123627123700%_
                                                       (##car _%e123626123697%_))
                                                      (_%tl123628123702%_
                                                       (##cdr _%e123626123697%_)))
                                                  (let ((_%hd-bind123705%_
                                                         _%hd123627123700%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123628123702%_)
                                                        (let ((_%e123629123707%_
                                                               (gx#syntax-e
                                                                _%tl123628123702%_)))
                                                          (let ((_%hd123630123710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123629123707%_))
                        (_%tl123631123712%_ (##cdr _%e123629123707%_)))
                    (let ((_%expr123715%_ _%hd123630123710%_))
                      (if (gx#stx-null? _%tl123631123712%_)
                          (if (gx#core-bind-values? _%hd-bind123705%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123705%_)
                                (_%K123615%_ _%hd123608%_))
                              (_%E123622123685%_))
                          (_%E123622123685%_)))))
                (_%E123622123685%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123622123685%_))
                                          (_%E123622123685%_))))
                                  (_%E123622123685%_))))
                           (_%E123617123729%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123616123645%_)
                                  (let ((_%e123619123721%_
                                         (gx#syntax-e _%e123616123645%_)))
                                    (let ((_%hd123620123724%_
                                           (##car _%e123619123721%_))
                                          (_%tl123621123726%_
                                           (##cdr _%e123619123721%_)))
                                      (if (and (gx#identifier?
                                                _%hd123620123724%_)
                                               (gx#core-identifier=?
                                                _%hd123620123724%_
                                                '%#begin-syntax))
                                          (_%K123615%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd123608%_))
                                          (_%E123618123717%_))))
                                  (_%E123618123717%_)))))
                      (_%E123617123729%_))))
                 (_%eval-body123489%_
                  (lambda (_%rbody123497%_)
                    (let _%lp123499%_ ((_%rest123501%_ _%rbody123497%_)
                                       (_%body123502%_ '())
                                       (_%ebody123503%_ '()))
                      (let* ((_%rest123504123512%_ _%rest123501%_)
                             (_%else123506123520%_
                              (lambda ()
                                (values _%body123502%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody123503%_)
                                          (gx#stx-source _%stx123486%_))))))
                             (_%K123508123596%_
                              (lambda (_%rest123523%_ _%hd123524%_)
                                (let* ((_%e123525123542%_ _%hd123524%_)
                                       (_%E123537123546%_
                                        (lambda ()
                                          (_%lp123499%_
                                           _%rest123523%_
                                           (cons _%hd123524%_ _%body123502%_)
                                           (cons _%hd123524%_
                                                 _%ebody123503%_))))
                                       (_%E123527123558%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123525123542%_)
                                              (let ((_%e123538123550%_
                                                     (gx#syntax-e
                                                      _%e123525123542%_)))
                                                (let ((_%hd123539123553%_
                                                       (##car _%e123538123550%_))
                                                      (_%tl123540123555%_
                                                       (##cdr _%e123538123550%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123539123553%_)
                                                           (gx#core-identifier=?
                                                            _%hd123539123553%_
                                                            '%#begin-syntax))
                                                      (_%lp123499%_
                                                       _%rest123523%_
                                                       (cons _%hd123524%_
                                                             _%body123502%_)
                                                       _%ebody123503%_)
                                                      (_%E123537123546%_))))
                                              (_%E123537123546%_))))
                                       (_%E123526123592%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123525123542%_)
                                              (let ((_%e123528123562%_
                                                     (gx#syntax-e
                                                      _%e123525123542%_)))
                                                (let ((_%hd123529123565%_
                                                       (##car _%e123528123562%_))
                                                      (_%tl123530123567%_
                                                       (##cdr _%e123528123562%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123529123565%_)
                                                           (gx#core-identifier=?
                                                            _%hd123529123565%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl123530123567%_)
                                                          (let ((_%e123531123570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl123530123567%_)))
                    (let ((_%hd123532123573%_ (##car _%e123531123570%_))
                          (_%tl123533123575%_ (##cdr _%e123531123570%_)))
                      (let ((_%hd-bind123578%_ _%hd123532123573%_))
                        (if (gx#stx-pair? _%tl123533123575%_)
                            (let ((_%e123534123580%_
                                   (gx#syntax-e _%tl123533123575%_)))
                              (let ((_%hd123535123583%_
                                     (##car _%e123534123580%_))
                                    (_%tl123536123585%_
                                     (##cdr _%e123534123580%_)))
                                (let ((_%expr123588%_ _%hd123535123583%_))
                                  (if (gx#stx-null? _%tl123536123585%_)
                                      (let ((_%ehd123590%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind123578%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr123588%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd123524%_))))
                                        (_%lp123499%_
                                         _%rest123523%_
                                         (cons _%ehd123590%_ _%body123502%_)
                                         (cons _%ehd123590%_ _%ebody123503%_)))
                                      (_%E123527123558%_)))))
                            (_%E123527123558%_)))))
                  (_%E123527123558%_))
              (_%E123527123558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123527123558%_)))))
                                  (_%E123526123592%_)))))
                        (if (##pair? _%rest123504123512%_)
                            (let ((_%hd123509123599%_
                                   (##car _%rest123504123512%_))
                                  (_%tl123510123601%_
                                   (##cdr _%rest123504123512%_)))
                              (let* ((_%hd123604%_ _%hd123509123599%_)
                                     (_%rest123606%_ _%tl123510123601%_))
                                (_%K123508123596%_
                                 _%rest123606%_
                                 _%hd123604%_)))
                            (_%else123506123520%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody123492%_
                     (gx#core-expand-block__1
                      _%stx123486%_
                      _%expand-special123488%_
                      '#f))
                    (_g123756_ (_%eval-body123489%_ _%rbody123492%_)))
               (begin
                 (let ((_g123757_
                        (if (##values? _g123756_)
                            (##vector-length _g123756_)
                            1)))
                   (if (not (##fx= _g123757_ 2))
                       (error "Context expects 2 values" _g123757_)))
                 (let ((_%expanded-body123494%_ (##vector-ref _g123756_ 0))
                       (_%value123495%_ (##vector-ref _g123756_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body123494%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value123495%_ '())))
                    (gx#stx-source _%stx123486%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx123456%_)
        (let* ((_%e123457123464%_ _%stx123456%_)
               (_%E123459123468%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123457123464%_)))
               (_%E123458123482%_
                (lambda ()
                  (if (gx#stx-pair? _%e123457123464%_)
                      (let ((_%e123460123472%_
                             (gx#syntax-e _%e123457123464%_)))
                        (let ((_%hd123461123475%_ (##car _%e123460123472%_))
                              (_%tl123462123477%_ (##cdr _%e123460123472%_)))
                          (let ((_%body123480%_ _%tl123462123477%_))
                            (if (gx#stx-list? _%body123480%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body123480%_)
                                 (gx#stx-source _%stx123456%_))
                                (_%E123459123468%_)))))
                      (_%E123459123468%_)))))
          (_%E123458123482%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx123454%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx123454%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx123400%_)
        (let* ((_%e123401123414%_ _%stx123400%_)
               (_%E123403123418%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123401123414%_)))
               (_%E123402123450%_
                (lambda ()
                  (if (gx#stx-pair? _%e123401123414%_)
                      (let ((_%e123404123422%_
                             (gx#syntax-e _%e123401123414%_)))
                        (let ((_%hd123405123425%_ (##car _%e123404123422%_))
                              (_%tl123406123427%_ (##cdr _%e123404123422%_)))
                          (if (gx#stx-pair? _%tl123406123427%_)
                              (let ((_%e123407123430%_
                                     (gx#syntax-e _%tl123406123427%_)))
                                (let ((_%hd123408123433%_
                                       (##car _%e123407123430%_))
                                      (_%tl123409123435%_
                                       (##cdr _%e123407123430%_)))
                                  (let ((_%ann123438%_ _%hd123408123433%_))
                                    (if (gx#stx-pair? _%tl123409123435%_)
                                        (let ((_%e123410123440%_
                                               (gx#syntax-e
                                                _%tl123409123435%_)))
                                          (let ((_%hd123411123443%_
                                                 (##car _%e123410123440%_))
                                                (_%tl123412123445%_
                                                 (##cdr _%e123410123440%_)))
                                            (let ((_%expr123448%_
                                                   _%hd123411123443%_))
                                              (if (gx#stx-null?
                                                   _%tl123412123445%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann123438%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr123448%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx123400%_))
                                                  (_%E123403123418%_)))))
                                        (_%E123403123418%_)))))
                              (_%E123403123418%_))))
                      (_%E123403123418%_)))))
          (_%E123402123450%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx123124%_ _%body123125%_)
        (letrec ((_%expand-special123127%_
                  (lambda (_%hd123395%_ _%K123396%_ _%rest123397%_ _%r123398%_)
                    (_%K123396%_
                     '()
                     (cons (_%expand-internal123128%_
                            _%hd123395%_
                            _%rest123397%_)
                           _%r123398%_))))
                 (_%expand-internal123128%_
                  (lambda (_%hd123391%_ _%rest123392%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal123130%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd123391%_ _%rest123392%_))
                          (gx#stx-source _%stx123124%_))
                         _%expand-internal-special123129%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj123750
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj123750)
                       __obj123750))))
                 (_%expand-internal-special123129%_
                  (lambda (_%hd123286%_ _%K123287%_ _%rest123288%_ _%r123289%_)
                    (let* ((_%e123290123315%_ _%hd123286%_)
                           (_%E123310123319%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123290123315%_)))
                           (_%E123306123331%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123290123315%_)
                                  (let ((_%e123311123323%_
                                         (gx#syntax-e _%e123290123315%_)))
                                    (let ((_%hd123312123326%_
                                           (##car _%e123311123323%_))
                                          (_%tl123313123328%_
                                           (##cdr _%e123311123323%_)))
                                      (if (and (gx#identifier?
                                                _%hd123312123326%_)
                                               (gx#core-identifier=?
                                                _%hd123312123326%_
                                                '%#declare))
                                          (_%K123287%_
                                           _%rest123288%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd123286%_)
                                                 _%r123289%_))
                                          (_%E123310123319%_))))
                                  (_%E123310123319%_))))
                           (_%E123302123343%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123290123315%_)
                                  (let ((_%e123307123335%_
                                         (gx#syntax-e _%e123290123315%_)))
                                    (let ((_%hd123308123338%_
                                           (##car _%e123307123335%_))
                                          (_%tl123309123340%_
                                           (##cdr _%e123307123335%_)))
                                      (if (and (gx#identifier?
                                                _%hd123308123338%_)
                                               (gx#core-identifier=?
                                                _%hd123308123338%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd123286%_)
                                            (_%K123287%_
                                             _%rest123288%_
                                             _%r123289%_))
                                          (_%E123306123331%_))))
                                  (_%E123306123331%_))))
                           (_%E123292123355%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123290123315%_)
                                  (let ((_%e123303123347%_
                                         (gx#syntax-e _%e123290123315%_)))
                                    (let ((_%hd123304123350%_
                                           (##car _%e123303123347%_))
                                          (_%tl123305123352%_
                                           (##cdr _%e123303123347%_)))
                                      (if (and (gx#identifier?
                                                _%hd123304123350%_)
                                               (gx#core-identifier=?
                                                _%hd123304123350%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd123286%_)
                                            (_%K123287%_
                                             _%rest123288%_
                                             _%r123289%_))
                                          (_%E123302123343%_))))
                                  (_%E123302123343%_))))
                           (_%E123291123387%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123290123315%_)
                                  (let ((_%e123293123359%_
                                         (gx#syntax-e _%e123290123315%_)))
                                    (let ((_%hd123294123362%_
                                           (##car _%e123293123359%_))
                                          (_%tl123295123364%_
                                           (##cdr _%e123293123359%_)))
                                      (if (and (gx#identifier?
                                                _%hd123294123362%_)
                                               (gx#core-identifier=?
                                                _%hd123294123362%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123295123364%_)
                                              (let ((_%e123296123367%_
                                                     (gx#syntax-e
                                                      _%tl123295123364%_)))
                                                (let ((_%hd123297123370%_
                                                       (##car _%e123296123367%_))
                                                      (_%tl123298123372%_
                                                       (##cdr _%e123296123367%_)))
                                                  (let ((_%hd-bind123375%_
                                                         _%hd123297123370%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123298123372%_)
                                                        (let ((_%e123299123377%_
                                                               (gx#syntax-e
                                                                _%tl123298123372%_)))
                                                          (let ((_%hd123300123380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123299123377%_))
                        (_%tl123301123382%_ (##cdr _%e123299123377%_)))
                    (let ((_%expr123385%_ _%hd123300123380%_))
                      (if (gx#stx-null? _%tl123301123382%_)
                          (if (gx#core-bind-values? _%hd-bind123375%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123375%_)
                                (_%K123287%_
                                 _%rest123288%_
                                 (cons _%hd123286%_ _%r123289%_)))
                              (_%E123292123355%_))
                          (_%E123292123355%_)))))
                (_%E123292123355%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123292123355%_))
                                          (_%E123292123355%_))))
                                  (_%E123292123355%_)))))
                      (_%E123291123387%_))))
                 (_%wrap-internal123130%_
                  (lambda (_%rbody123132%_)
                    (let _%lp123134%_ ((_%rest123136%_ _%rbody123132%_)
                                       (_%decls123137%_ '())
                                       (_%bind123138%_ '())
                                       (_%body123139%_ '()))
                      (let* ((_%e123140123147%_ _%rest123136%_)
                             (_%E123142123196%_
                              (lambda ()
                                (let* ((_%body123191%_
                                        (let* ((_%body123150123160%_
                                                _%body123139%_)
                                               (_%else123153123168%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body123139%_)
                                                   (gx#stx-source
                                                    _%stx123124%_)))))
                                          (let ((_%K123158123188%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx123124%_)))
                                                (_%K123155123174%_
                                                 (lambda (_%expr123172%_)
                                                   _%expr123172%_)))
                                            (let ((_%try-match123152123184%_
                                                   (lambda ()
                                                     (if (##pair? _%body123150123160%_)
                                                         (let ((_%tl123157123179%_
                                                                (##cdr _%body123150123160%_))
                                                               (_%hd123156123177%_
                                                                (##car _%body123150123160%_)))
                                                           (if (##null? _%tl123157123179%_)
                                                               (let ((_%expr123182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd123156123177%_))
                         (_%K123155123174%_ _%expr123182%_))
                       (_%else123153123168%_)))
                 (_%else123153123168%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body123150123160%_)
                                                  (_%K123158123188%_)
                                                  (_%try-match123152123184%_))))))
                                       (_%body123193%_
                                        (if (null? _%bind123138%_)
                                            _%body123191%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind123138%_
                                                         (cons _%body123191%_
                                                               '())))
                                             (gx#stx-source _%stx123124%_)))))
                                  (if (null? _%decls123137%_)
                                      _%body123193%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls123137%_
                                                   (cons _%body123193%_ '())))
                                       (gx#stx-source _%stx123124%_))))))
                             (_%E123141123282%_
                              (lambda ()
                                (if (gx#stx-pair? _%e123140123147%_)
                                    (let ((_%e123143123200%_
                                           (gx#syntax-e _%e123140123147%_)))
                                      (let ((_%hd123144123203%_
                                             (##car _%e123143123200%_))
                                            (_%tl123145123205%_
                                             (##cdr _%e123143123200%_)))
                                        (let* ((_%hd123208%_
                                                _%hd123144123203%_)
                                               (_%rest123210%_
                                                _%tl123145123205%_)
                                               (_%e123211123228%_ _%hd123208%_)
                                               (_%E123223123232%_
                                                (lambda ()
                                                  (if (null? _%bind123138%_)
                                                      (_%lp123134%_
                                                       _%rest123210%_
                                                       _%decls123137%_
                                                       _%bind123138%_
                                                       (cons _%hd123208%_
                                                             _%body123139%_))
                                                      (_%lp123134%_
                                                       _%rest123210%_
                                                       _%decls123137%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd123208%_ '()))
                     _%bind123138%_)
               _%body123139%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E123213123246%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e123211123228%_)
                                                      (let ((_%e123224123236%_
                                                             (gx#syntax-e
                                                              _%e123211123228%_)))
                                                        (let ((_%hd123225123239%_
                                                               (##car _%e123224123236%_))
                                                              (_%tl123226123241%_
                                                               (##cdr _%e123224123236%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd123225123239%_)
                           (gx#core-identifier=?
                            _%hd123225123239%_
                            '%#declare))
                      (let ((_%xdecls123244%_ _%tl123226123241%_))
                        (_%lp123134%_
                         _%rest123210%_
                         (gx#stx-foldr cons _%decls123137%_ _%xdecls123244%_)
                         _%bind123138%_
                         _%body123139%_))
                      (_%E123223123232%_))))
              (_%E123223123232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E123212123278%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e123211123228%_)
                                                      (let ((_%e123214123250%_
                                                             (gx#syntax-e
                                                              _%e123211123228%_)))
                                                        (let ((_%hd123215123253%_
                                                               (##car _%e123214123250%_))
                                                              (_%tl123216123255%_
                                                               (##cdr _%e123214123250%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd123215123253%_)
                           (gx#core-identifier=?
                            _%hd123215123253%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl123216123255%_)
                          (let ((_%e123217123258%_
                                 (gx#syntax-e _%tl123216123255%_)))
                            (let ((_%hd123218123261%_
                                   (##car _%e123217123258%_))
                                  (_%tl123219123263%_
                                   (##cdr _%e123217123258%_)))
                              (let ((_%hd-bind123266%_ _%hd123218123261%_))
                                (if (gx#stx-pair? _%tl123219123263%_)
                                    (let ((_%e123220123268%_
                                           (gx#syntax-e _%tl123219123263%_)))
                                      (let ((_%hd123221123271%_
                                             (##car _%e123220123268%_))
                                            (_%tl123222123273%_
                                             (##cdr _%e123220123268%_)))
                                        (let ((_%expr123276%_
                                               _%hd123221123271%_))
                                          (if (gx#stx-null? _%tl123222123273%_)
                                              (_%lp123134%_
                                               _%rest123210%_
                                               _%decls123137%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind123266%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr123276%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind123138%_)
                                               _%body123139%_)
                                              (_%E123213123246%_)))))
                                    (_%E123213123246%_)))))
                          (_%E123213123246%_))
                      (_%E123213123246%_))))
              (_%E123213123246%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E123212123278%_))))
                                    (_%E123142123196%_)))))
                        (_%E123141123282%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body123125%_)
            (gx#stx-source _%stx123124%_))
           _%expand-special123127%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx123062%_)
        (let* ((_%e123063123070%_ _%stx123062%_)
               (_%E123065123074%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123063123070%_)))
               (_%E123064123120%_
                (lambda ()
                  (if (gx#stx-pair? _%e123063123070%_)
                      (let ((_%e123066123078%_
                             (gx#syntax-e _%e123063123070%_)))
                        (let ((_%hd123067123081%_ (##car _%e123066123078%_))
                              (_%tl123068123083%_ (##cdr _%e123066123078%_)))
                          (let ((_%body123086%_ _%tl123068123083%_))
                            (if (gx#stx-list? _%body123086%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl123088%_)
                                     (let* ((_%e123089123096%_ _%decl123088%_)
                                            (_%E123091123100%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e123089123096%_)))
                                            (_%E123090123116%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e123089123096%_)
                                                   (let ((_%e123092123104%_
                                                          (gx#syntax-e
                                                           _%e123089123096%_)))
                                                     (let ((_%hd123093123107%_
                                                            (##car _%e123092123104%_))
                                                           (_%tl123094123109%_
                                                            (##cdr _%e123092123104%_)))
                                                       (let* ((_%head123112%_
                                                               _%hd123093123107%_)
                                                              (_%args123114%_
                                                               _%tl123094123109%_))
                                                         (if (gx#stx-list?
                                                              _%args123114%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl123088%_)
                                                             (_%E123091123100%_)))))
                                                   (_%E123091123100%_)))))
                                       (_%E123090123116%_)))
                                   _%body123086%_))
                                 (gx#stx-source _%stx123062%_))
                                (_%E123065123074%_)))))
                      (_%E123065123074%_)))))
          (_%E123064123120%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx122966%_)
        (let* ((_%e122967122974%_ _%stx122966%_)
               (_%E122969122978%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122967122974%_)))
               (_%E122968123058%_
                (lambda ()
                  (if (gx#stx-pair? _%e122967122974%_)
                      (let ((_%e122970122982%_
                             (gx#syntax-e _%e122967122974%_)))
                        (let ((_%hd122971122985%_ (##car _%e122970122982%_))
                              (_%tl122972122987%_ (##cdr _%e122970122982%_)))
                          (let ((_%body122990%_ _%tl122972122987%_))
                            (let _%lp122992%_ ((_%rest122994%_ _%body122990%_)
                                               (_%r122995%_ '()))
                              (let* ((_%e122996123010%_ _%rest122994%_)
                                     (_%E123008123014%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx122966%_)))
                                     (_%E122998123018%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e122996123010%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r122995%_))
                                             (gx#stx-source _%stx122966%_))
                                            (_%E123008123014%_))))
                                     (_%E122997123054%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e122996123010%_)
                                            (let ((_%e122999123022%_
                                                   (gx#syntax-e
                                                    _%e122996123010%_)))
                                              (let ((_%hd123000123025%_
                                                     (##car _%e122999123022%_))
                                                    (_%tl123001123027%_
                                                     (##cdr _%e122999123022%_)))
                                                (if (gx#stx-pair?
                                                     _%hd123000123025%_)
                                                    (let ((_%e123002123030%_
                                                           (gx#syntax-e
                                                            _%hd123000123025%_)))
                                                      (let ((_%hd123003123033%_
                                                             (##car _%e123002123030%_))
                                                            (_%tl123004123035%_
                                                             (##cdr _%e123002123030%_)))
                                                        (let ((_%id123038%_
                                                               _%hd123003123033%_))
                                                          (if (gx#stx-pair?
                                                               _%tl123004123035%_)
                                                              (let ((_%e123005123040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl123004123035%_)))
                        (let ((_%hd123006123043%_ (##car _%e123005123040%_))
                              (_%tl123007123045%_ (##cdr _%e123005123040%_)))
                          (let ((_%eid123048%_ _%hd123006123043%_))
                            (if (gx#stx-null? _%tl123007123045%_)
                                (let ((_%rest123050%_ _%tl123001123027%_))
                                  (if (and (gx#identifier? _%id123038%_)
                                           (gx#identifier? _%eid123048%_))
                                      (let ((_%eid123052%_
                                             (gx#stx-e _%eid123048%_)))
                                        (gx#core-bind-extern!__0
                                         _%id123038%_
                                         _%eid123052%_)
                                        (_%lp122992%_
                                         _%rest123050%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id123038%_)
                                                     (cons _%eid123052%_ '()))
                                               _%r122995%_)))
                                      (_%E122998123018%_)))
                                (_%E122998123018%_)))))
                      (_%E122998123018%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E122998123018%_))))
                                            (_%E122998123018%_)))))
                                (_%E122997123054%_))))))
                      (_%E122969122978%_)))))
          (_%E122968123058%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx122912%_)
        (let* ((_%e122913122926%_ _%stx122912%_)
               (_%E122915122930%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122913122926%_)))
               (_%E122914122962%_
                (lambda ()
                  (if (gx#stx-pair? _%e122913122926%_)
                      (let ((_%e122916122934%_
                             (gx#syntax-e _%e122913122926%_)))
                        (let ((_%hd122917122937%_ (##car _%e122916122934%_))
                              (_%tl122918122939%_ (##cdr _%e122916122934%_)))
                          (if (gx#stx-pair? _%tl122918122939%_)
                              (let ((_%e122919122942%_
                                     (gx#syntax-e _%tl122918122939%_)))
                                (let ((_%hd122920122945%_
                                       (##car _%e122919122942%_))
                                      (_%tl122921122947%_
                                       (##cdr _%e122919122942%_)))
                                  (let ((_%hd122950%_ _%hd122920122945%_))
                                    (if (gx#stx-pair? _%tl122921122947%_)
                                        (let ((_%e122922122952%_
                                               (gx#syntax-e
                                                _%tl122921122947%_)))
                                          (let ((_%hd122923122955%_
                                                 (##car _%e122922122952%_))
                                                (_%tl122924122957%_
                                                 (##cdr _%e122922122952%_)))
                                            (let ((_%expr122960%_
                                                   _%hd122923122955%_))
                                              (if (gx#stx-null?
                                                   _%tl122924122957%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd122950%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd122950%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd122950%_)
                             (cons (gx#core-expand-expression _%expr122960%_)
                                   '())))
                 (gx#stx-source _%stx122912%_)))
              (_%E122915122930%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122915122930%_)))))
                                        (_%E122915122930%_)))))
                              (_%E122915122930%_))))
                      (_%E122915122930%_)))))
          (_%E122914122962%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx122856%_)
        (let* ((_%e122857122870%_ _%stx122856%_)
               (_%E122859122874%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122857122870%_)))
               (_%E122858122908%_
                (lambda ()
                  (if (gx#stx-pair? _%e122857122870%_)
                      (let ((_%e122860122878%_
                             (gx#syntax-e _%e122857122870%_)))
                        (let ((_%hd122861122881%_ (##car _%e122860122878%_))
                              (_%tl122862122883%_ (##cdr _%e122860122878%_)))
                          (if (gx#stx-pair? _%tl122862122883%_)
                              (let ((_%e122863122886%_
                                     (gx#syntax-e _%tl122862122883%_)))
                                (let ((_%hd122864122889%_
                                       (##car _%e122863122886%_))
                                      (_%tl122865122891%_
                                       (##cdr _%e122863122886%_)))
                                  (let ((_%id122894%_ _%hd122864122889%_))
                                    (if (gx#stx-pair? _%tl122865122891%_)
                                        (let ((_%e122866122896%_
                                               (gx#syntax-e
                                                _%tl122865122891%_)))
                                          (let ((_%hd122867122899%_
                                                 (##car _%e122866122896%_))
                                                (_%tl122868122901%_
                                                 (##cdr _%e122866122896%_)))
                                            (let ((_%binding-id122904%_
                                                   _%hd122867122899%_))
                                              (if (gx#stx-null?
                                                   _%tl122868122901%_)
                                                  (if (and (gx#identifier?
                                                            _%id122894%_)
                                                           (gx#identifier?
                                                            _%binding-id122904%_))
                                                      (let ((_%eid122906%_
                                                             (gx#stx-e
                                                              _%binding-id122904%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id122894%_
                                                         _%eid122906%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id122894%_)
                             (cons _%eid122906%_ '())))))
              (_%E122859122874%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122859122874%_)))))
                                        (_%E122859122874%_)))))
                              (_%E122859122874%_))))
                      (_%E122859122874%_)))))
          (_%E122858122908%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx122799%_)
        (let* ((_%e122800122813%_ _%stx122799%_)
               (_%E122802122817%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122800122813%_)))
               (_%E122801122852%_
                (lambda ()
                  (if (gx#stx-pair? _%e122800122813%_)
                      (let ((_%e122803122821%_
                             (gx#syntax-e _%e122800122813%_)))
                        (let ((_%hd122804122824%_ (##car _%e122803122821%_))
                              (_%tl122805122826%_ (##cdr _%e122803122821%_)))
                          (if (gx#stx-pair? _%tl122805122826%_)
                              (let ((_%e122806122829%_
                                     (gx#syntax-e _%tl122805122826%_)))
                                (let ((_%hd122807122832%_
                                       (##car _%e122806122829%_))
                                      (_%tl122808122834%_
                                       (##cdr _%e122806122829%_)))
                                  (let ((_%id122837%_ _%hd122807122832%_))
                                    (if (gx#stx-pair? _%tl122808122834%_)
                                        (let ((_%e122809122839%_
                                               (gx#syntax-e
                                                _%tl122808122834%_)))
                                          (let ((_%hd122810122842%_
                                                 (##car _%e122809122839%_))
                                                (_%tl122811122844%_
                                                 (##cdr _%e122809122839%_)))
                                            (let ((_%expr122847%_
                                                   _%hd122810122842%_))
                                              (if (gx#stx-null?
                                                   _%tl122811122844%_)
                                                  (if (gx#identifier?
                                                       _%id122837%_)
                                                      (let ((_g123758_
                                                             (gx#core-expand-expression+1
                                                              _%expr122847%_)))
                                                        (begin
                                                          (let ((_g123759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g123758_)
                             (##vector-length _g123758_)
                             1)))
                    (if (not (##fx= _g123759_ 2))
                        (error "Context expects 2 values" _g123759_)))
                  (let ((_%e-stx122849%_ (##vector-ref _g123758_ 0))
                        (_%e122850%_ (##vector-ref _g123758_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id122837%_ _%e122850%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id122837%_)
                                   (cons _%e-stx122849%_ '())))
                       (gx#stx-source _%stx122799%_))))))
              (_%E122802122817%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122802122817%_)))))
                                        (_%E122802122817%_)))))
                              (_%E122802122817%_))))
                      (_%E122802122817%_)))))
          (_%E122801122852%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx122743%_)
        (let* ((_%e122744122757%_ _%stx122743%_)
               (_%E122746122761%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122744122757%_)))
               (_%E122745122795%_
                (lambda ()
                  (if (gx#stx-pair? _%e122744122757%_)
                      (let ((_%e122747122765%_
                             (gx#syntax-e _%e122744122757%_)))
                        (let ((_%hd122748122768%_ (##car _%e122747122765%_))
                              (_%tl122749122770%_ (##cdr _%e122747122765%_)))
                          (if (gx#stx-pair? _%tl122749122770%_)
                              (let ((_%e122750122773%_
                                     (gx#syntax-e _%tl122749122770%_)))
                                (let ((_%hd122751122776%_
                                       (##car _%e122750122773%_))
                                      (_%tl122752122778%_
                                       (##cdr _%e122750122773%_)))
                                  (let ((_%id122781%_ _%hd122751122776%_))
                                    (if (gx#stx-pair? _%tl122752122778%_)
                                        (let ((_%e122753122783%_
                                               (gx#syntax-e
                                                _%tl122752122778%_)))
                                          (let ((_%hd122754122786%_
                                                 (##car _%e122753122783%_))
                                                (_%tl122755122788%_
                                                 (##cdr _%e122753122783%_)))
                                            (let ((_%alias-id122791%_
                                                   _%hd122754122786%_))
                                              (if (gx#stx-null?
                                                   _%tl122755122788%_)
                                                  (if (and (gx#identifier?
                                                            _%id122781%_)
                                                           (gx#identifier?
                                                            _%alias-id122791%_))
                                                      (let ((_%alias-id122793%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id122791%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id122781%_
                                                         _%alias-id122793%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id122781%_)
                             (cons _%alias-id122793%_ '())))))
              (_%E122746122761%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122746122761%_)))))
                                        (_%E122746122761%_)))))
                              (_%E122746122761%_))))
                      (_%E122746122761%_)))))
          (_%E122745122795%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx122686%_ _%wrap?122687%_)
        (let* ((_%e122688122698%_ _%stx122686%_)
               (_%E122690122702%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122688122698%_)))
               (_%E122689122729%_
                (lambda ()
                  (if (gx#stx-pair? _%e122688122698%_)
                      (let ((_%e122691122706%_
                             (gx#syntax-e _%e122688122698%_)))
                        (let ((_%hd122692122709%_ (##car _%e122691122706%_))
                              (_%tl122693122711%_ (##cdr _%e122691122706%_)))
                          (if (gx#stx-pair? _%tl122693122711%_)
                              (let ((_%e122694122714%_
                                     (gx#syntax-e _%tl122693122711%_)))
                                (let ((_%hd122695122717%_
                                       (##car _%e122694122714%_))
                                      (_%tl122696122719%_
                                       (##cdr _%e122694122714%_)))
                                  (let* ((_%hd122722%_ _%hd122695122717%_)
                                         (_%body122724%_ _%tl122696122719%_))
                                    (if (gx#core-bind-values? _%hd122722%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd122722%_)
                                           (let ((_%body122727%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd122722%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx122686%_
                                                               _%body122724%_)
                                                              '()))))
                                             (if _%wrap?122687%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body122727%_)
                                                  (gx#stx-source
                                                   _%stx122686%_))
                                                 _%body122727%_)))
                                         gx#current-expander-context
                                         (let ((__obj123751
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj123751)
                                           __obj123751))
                                        (_%E122690122702%_)))))
                              (_%E122690122702%_))))
                      (_%E122690122702%_)))))
          (_%E122689122729%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx122736%_)
        (let ((_%wrap?122738%_ '#t))
          (gx#core-expand-lambda%__% _%stx122736%_ _%wrap?122738%_))))
    (define gx#core-expand-lambda%
      (lambda _g123761_
        (let ((_g123760_ (##length _g123761_)))
          (cond ((##fx= _g123760_ 1)
                 (apply gx#core-expand-lambda%__0 _g123761_))
                ((##fx= _g123760_ 2)
                 (apply gx#core-expand-lambda%__% _g123761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g123761_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx122650%_)
        (let* ((_%e122651122658%_ _%stx122650%_)
               (_%E122653122662%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122651122658%_)))
               (_%E122652122681%_
                (lambda ()
                  (if (gx#stx-pair? _%e122651122658%_)
                      (let ((_%e122654122666%_
                             (gx#syntax-e _%e122651122658%_)))
                        (let ((_%hd122655122669%_ (##car _%e122654122666%_))
                              (_%tl122656122671%_ (##cdr _%e122654122666%_)))
                          (let ((_%clauses122674%_ _%tl122656122671%_))
                            (if (gx#stx-list? _%clauses122674%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause122676%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause122676%_)
                                       (let ((_%$e122678%_
                                              (gx#stx-source
                                               _%clause122676%_)))
                                         (if _%$e122678%_
                                             _%$e122678%_
                                             (gx#stx-source _%stx122650%_))))
                                      '#f))
                                   _%clauses122674%_))
                                 (gx#stx-source _%stx122650%_))
                                (_%E122653122662%_)))))
                      (_%E122653122662%_)))))
          (_%E122652122681%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx122604%_)
        (let* ((_%e122605122615%_ _%stx122604%_)
               (_%E122607122619%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122605122615%_)))
               (_%E122606122646%_
                (lambda ()
                  (if (gx#stx-pair? _%e122605122615%_)
                      (let ((_%e122608122623%_
                             (gx#syntax-e _%e122605122615%_)))
                        (let ((_%hd122609122626%_ (##car _%e122608122623%_))
                              (_%tl122610122628%_ (##cdr _%e122608122623%_)))
                          (if (gx#stx-pair? _%tl122610122628%_)
                              (let ((_%e122611122631%_
                                     (gx#syntax-e _%tl122610122628%_)))
                                (let ((_%hd122612122634%_
                                       (##car _%e122611122631%_))
                                      (_%tl122613122636%_
                                       (##cdr _%e122611122631%_)))
                                  (let* ((_%hd122639%_ _%hd122612122634%_)
                                         (_%body122641%_ _%tl122613122636%_))
                                    (if (gx#core-expand-let-bind? _%hd122639%_)
                                        (let ((_%expressions122643%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd122639%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd122639%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd122639%_
                                                           _%expressions122643%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx122604%_
                         _%body122641%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx122604%_)))
                                           gx#current-expander-context
                                           (let ((__obj123752
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj123752)
                                             __obj123752)))
                                        (_%E122607122619%_)))))
                              (_%E122607122619%_))))
                      (_%E122607122619%_)))))
          (_%E122606122646%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx122549%_ _%form122550%_)
        (let* ((_%e122551122561%_ _%stx122549%_)
               (_%E122553122565%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122551122561%_)))
               (_%E122552122590%_
                (lambda ()
                  (if (gx#stx-pair? _%e122551122561%_)
                      (let ((_%e122554122569%_
                             (gx#syntax-e _%e122551122561%_)))
                        (let ((_%hd122555122572%_ (##car _%e122554122569%_))
                              (_%tl122556122574%_ (##cdr _%e122554122569%_)))
                          (if (gx#stx-pair? _%tl122556122574%_)
                              (let ((_%e122557122577%_
                                     (gx#syntax-e _%tl122556122574%_)))
                                (let ((_%hd122558122580%_
                                       (##car _%e122557122577%_))
                                      (_%tl122559122582%_
                                       (##cdr _%e122557122577%_)))
                                  (let* ((_%hd122585%_ _%hd122558122580%_)
                                         (_%body122587%_ _%tl122559122582%_))
                                    (if (gx#core-expand-let-bind? _%hd122585%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd122585%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form122550%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd122585%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd122585%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx122549%_
                                                               _%body122587%_)
                                                              '())))
                                            (gx#stx-source _%stx122549%_)))
                                         gx#current-expander-context
                                         (let ((__obj123753
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj123753)
                                           __obj123753))
                                        (_%E122553122565%_)))))
                              (_%E122553122565%_))))
                      (_%E122553122565%_)))))
          (_%E122552122590%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx122597%_)
        (let ((_%form122599%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx122597%_ _%form122599%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g123763_
        (let ((_g123762_ (##length _g123763_)))
          (cond ((##fx= _g123762_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g123763_))
                ((##fx= _g123762_ 2)
                 (apply gx#core-expand-letrec-values%__% _g123763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g123763_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx122546%_)
        (gx#core-expand-letrec-values%__% _%stx122546%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx122503%_)
        (if (gx#stx-list? _%stx122503%_)
            (gx#stx-andmap
             (lambda (_%bind122505%_)
               (let* ((_%e122506122516%_ _%bind122505%_)
                      (_%E122508122520%_ (lambda () '#f))
                      (_%E122507122542%_
                       (lambda ()
                         (if (gx#stx-pair? _%e122506122516%_)
                             (let ((_%e122509122524%_
                                    (gx#syntax-e _%e122506122516%_)))
                               (let ((_%hd122510122527%_
                                      (##car _%e122509122524%_))
                                     (_%tl122511122529%_
                                      (##cdr _%e122509122524%_)))
                                 (let ((_%hd122532%_ _%hd122510122527%_))
                                   (if (gx#stx-pair? _%tl122511122529%_)
                                       (let ((_%e122512122534%_
                                              (gx#syntax-e
                                               _%tl122511122529%_)))
                                         (let ((_%hd122513122537%_
                                                (##car _%e122512122534%_))
                                               (_%tl122514122539%_
                                                (##cdr _%e122512122534%_)))
                                           (if (gx#stx-null?
                                                _%tl122514122539%_)
                                               (gx#core-bind-values?
                                                _%hd122532%_)
                                               (_%E122508122520%_))))
                                       (_%E122508122520%_)))))
                             (_%E122508122520%_)))))
                 (_%E122507122542%_)))
             _%stx122503%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind122462%_)
        (let* ((_%e122463122473%_ _%bind122462%_)
               (_%E122465122477%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122463122473%_)))
               (_%E122464122499%_
                (lambda ()
                  (if (gx#stx-pair? _%e122463122473%_)
                      (let ((_%e122466122481%_
                             (gx#syntax-e _%e122463122473%_)))
                        (let ((_%hd122467122484%_ (##car _%e122466122481%_))
                              (_%tl122468122486%_ (##cdr _%e122466122481%_)))
                          (if (gx#stx-pair? _%tl122468122486%_)
                              (let ((_%e122469122489%_
                                     (gx#syntax-e _%tl122468122486%_)))
                                (let ((_%hd122470122492%_
                                       (##car _%e122469122489%_))
                                      (_%tl122471122494%_
                                       (##cdr _%e122469122489%_)))
                                  (let ((_%expr122497%_ _%hd122470122492%_))
                                    (if (gx#stx-null? _%tl122471122494%_)
                                        (gx#core-expand-expression
                                         _%expr122497%_)
                                        (_%E122465122477%_)))))
                              (_%E122465122477%_))))
                      (_%E122465122477%_)))))
          (_%E122464122499%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind122421%_)
        (let* ((_%e122422122432%_ _%bind122421%_)
               (_%E122424122436%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122422122432%_)))
               (_%E122423122458%_
                (lambda ()
                  (if (gx#stx-pair? _%e122422122432%_)
                      (let ((_%e122425122440%_
                             (gx#syntax-e _%e122422122432%_)))
                        (let ((_%hd122426122443%_ (##car _%e122425122440%_))
                              (_%tl122427122445%_ (##cdr _%e122425122440%_)))
                          (let ((_%hd122448%_ _%hd122426122443%_))
                            (if (gx#stx-pair? _%tl122427122445%_)
                                (let ((_%e122428122450%_
                                       (gx#syntax-e _%tl122427122445%_)))
                                  (let ((_%hd122429122453%_
                                         (##car _%e122428122450%_))
                                        (_%tl122430122455%_
                                         (##cdr _%e122428122450%_)))
                                    (if (gx#stx-null? _%tl122430122455%_)
                                        (gx#core-bind-values!__0 _%hd122448%_)
                                        (_%E122424122436%_))))
                                (_%E122424122436%_)))))
                      (_%E122424122436%_)))))
          (_%E122423122458%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind122379%_ _%expr122380%_)
        (let* ((_%e122381122391%_ _%bind122379%_)
               (_%E122383122395%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122381122391%_)))
               (_%E122382122417%_
                (lambda ()
                  (if (gx#stx-pair? _%e122381122391%_)
                      (let ((_%e122384122399%_
                             (gx#syntax-e _%e122381122391%_)))
                        (let ((_%hd122385122402%_ (##car _%e122384122399%_))
                              (_%tl122386122404%_ (##cdr _%e122384122399%_)))
                          (let ((_%hd122407%_ _%hd122385122402%_))
                            (if (gx#stx-pair? _%tl122386122404%_)
                                (let ((_%e122387122409%_
                                       (gx#syntax-e _%tl122386122404%_)))
                                  (let ((_%hd122388122412%_
                                         (##car _%e122387122409%_))
                                        (_%tl122389122414%_
                                         (##cdr _%e122387122409%_)))
                                    (if (gx#stx-null? _%tl122389122414%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd122407%_)
                                              (cons _%expr122380%_ '()))
                                        (_%E122383122395%_))))
                                (_%E122383122395%_)))))
                      (_%E122383122395%_)))))
          (_%E122382122417%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx122333%_)
        (let* ((_%e122334122344%_ _%stx122333%_)
               (_%E122336122348%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122334122344%_)))
               (_%E122335122375%_
                (lambda ()
                  (if (gx#stx-pair? _%e122334122344%_)
                      (let ((_%e122337122352%_
                             (gx#syntax-e _%e122334122344%_)))
                        (let ((_%hd122338122355%_ (##car _%e122337122352%_))
                              (_%tl122339122357%_ (##cdr _%e122337122352%_)))
                          (if (gx#stx-pair? _%tl122339122357%_)
                              (let ((_%e122340122360%_
                                     (gx#syntax-e _%tl122339122357%_)))
                                (let ((_%hd122341122363%_
                                       (##car _%e122340122360%_))
                                      (_%tl122342122365%_
                                       (##cdr _%e122340122360%_)))
                                  (let* ((_%hd122368%_ _%hd122341122363%_)
                                         (_%body122370%_ _%tl122342122365%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd122368%_)
                                        (let ((_%expanders122372%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd122368%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd122368%_
                                              _%expanders122372%_)
                                             (gx#core-expand-local-block
                                              _%stx122333%_
                                              _%body122370%_))
                                           gx#current-expander-context
                                           (let ((__obj123754
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj123754)
                                             __obj123754)))
                                        (_%E122336122348%_)))))
                              (_%E122336122348%_))))
                      (_%E122336122348%_)))))
          (_%E122335122375%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx122282%_)
        (let* ((_%e122283122293%_ _%stx122282%_)
               (_%E122285122297%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122283122293%_)))
               (_%E122284122329%_
                (lambda ()
                  (if (gx#stx-pair? _%e122283122293%_)
                      (let ((_%e122286122301%_
                             (gx#syntax-e _%e122283122293%_)))
                        (let ((_%hd122287122304%_ (##car _%e122286122301%_))
                              (_%tl122288122306%_ (##cdr _%e122286122301%_)))
                          (if (gx#stx-pair? _%tl122288122306%_)
                              (let ((_%e122289122309%_
                                     (gx#syntax-e _%tl122288122306%_)))
                                (let ((_%hd122290122312%_
                                       (##car _%e122289122309%_))
                                      (_%tl122291122314%_
                                       (##cdr _%e122289122309%_)))
                                  (let* ((_%hd122317%_ _%hd122290122312%_)
                                         (_%body122319%_ _%tl122291122314%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd122317%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd122317%_
                                            (make-list
                                             (gx#stx-length _%hd122317%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g122321122324%_
                                                     _%g122322122326%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g122321122324%_
                                               _%g122322122326%_
                                               '#t))
                                            _%hd122317%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd122317%_))
                                           (gx#core-expand-local-block
                                            _%stx122282%_
                                            _%body122319%_))
                                         gx#current-expander-context
                                         (let ((__obj123755
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj123755)
                                           __obj123755))
                                        (_%E122285122297%_)))))
                              (_%E122285122297%_))))
                      (_%E122285122297%_)))))
          (_%E122284122329%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx122239%_)
        (if (gx#stx-list? _%stx122239%_)
            (gx#stx-andmap
             (lambda (_%bind122241%_)
               (let* ((_%e122242122252%_ _%bind122241%_)
                      (_%E122244122256%_ (lambda () '#f))
                      (_%E122243122278%_
                       (lambda ()
                         (if (gx#stx-pair? _%e122242122252%_)
                             (let ((_%e122245122260%_
                                    (gx#syntax-e _%e122242122252%_)))
                               (let ((_%hd122246122263%_
                                      (##car _%e122245122260%_))
                                     (_%tl122247122265%_
                                      (##cdr _%e122245122260%_)))
                                 (let ((_%hd122268%_ _%hd122246122263%_))
                                   (if (gx#stx-pair? _%tl122247122265%_)
                                       (let ((_%e122248122270%_
                                              (gx#syntax-e
                                               _%tl122247122265%_)))
                                         (let ((_%hd122249122273%_
                                                (##car _%e122248122270%_))
                                               (_%tl122250122275%_
                                                (##cdr _%e122248122270%_)))
                                           (if (gx#stx-null?
                                                _%tl122250122275%_)
                                               (gx#identifier? _%hd122268%_)
                                               (_%E122244122256%_))))
                                       (_%E122244122256%_)))))
                             (_%E122244122256%_)))))
                 (_%E122243122278%_)))
             _%stx122239%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind122195%_)
        (let* ((_%e122196122206%_ _%bind122195%_)
               (_%E122198122210%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122196122206%_)))
               (_%E122197122235%_
                (lambda ()
                  (if (gx#stx-pair? _%e122196122206%_)
                      (let ((_%e122199122214%_
                             (gx#syntax-e _%e122196122206%_)))
                        (let ((_%hd122200122217%_ (##car _%e122199122214%_))
                              (_%tl122201122219%_ (##cdr _%e122199122214%_)))
                          (if (gx#stx-pair? _%tl122201122219%_)
                              (let ((_%e122202122222%_
                                     (gx#syntax-e _%tl122201122219%_)))
                                (let ((_%hd122203122225%_
                                       (##car _%e122202122222%_))
                                      (_%tl122204122227%_
                                       (##cdr _%e122202122222%_)))
                                  (let ((_%expr122230%_ _%hd122203122225%_))
                                    (if (gx#stx-null? _%tl122204122227%_)
                                        (let ((_g123764_
                                               (gx#core-expand-expression+1
                                                _%expr122230%_)))
                                          (begin
                                            (let ((_g123765_
                                                   (if (##values? _g123764_)
                                                       (##vector-length
                                                        _g123764_)
                                                       1)))
                                              (if (not (##fx= _g123765_ 2))
                                                  (error "Context expects 2 values"
                                                         _g123765_)))
                                            (let ((_%_122232%_
                                                   (##vector-ref _g123764_ 0))
                                                  (_%e122233%_
                                                   (##vector-ref _g123764_ 1)))
                                              _%e122233%_)))
                                        (_%E122198122210%_)))))
                              (_%E122198122210%_))))
                      (_%E122198122210%_)))))
          (_%E122197122235%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind122140%_ _%e122141%_ _%rebind?122142%_)
        (let* ((_%e122143122153%_ _%bind122140%_)
               (_%E122145122157%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122143122153%_)))
               (_%E122144122179%_
                (lambda ()
                  (if (gx#stx-pair? _%e122143122153%_)
                      (let ((_%e122146122161%_
                             (gx#syntax-e _%e122143122153%_)))
                        (let ((_%hd122147122164%_ (##car _%e122146122161%_))
                              (_%tl122148122166%_ (##cdr _%e122146122161%_)))
                          (let ((_%id122169%_ _%hd122147122164%_))
                            (if (gx#stx-pair? _%tl122148122166%_)
                                (let ((_%e122149122171%_
                                       (gx#syntax-e _%tl122148122166%_)))
                                  (let ((_%hd122150122174%_
                                         (##car _%e122149122171%_))
                                        (_%tl122151122176%_
                                         (##cdr _%e122149122171%_)))
                                    (if (gx#stx-null? _%tl122151122176%_)
                                        (gx#core-bind-syntax!__1
                                         _%id122169%_
                                         _%e122141%_
                                         _%rebind?122142%_)
                                        (_%E122145122157%_))))
                                (_%E122145122157%_)))))
                      (_%E122145122157%_)))))
          (_%E122144122179%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind122186%_ _%e122187%_)
        (let ((_%rebind?122189%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind122186%_
           _%e122187%_
           _%rebind?122189%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g123767_
        (let ((_g123766_ (##length _g123767_)))
          (cond ((##fx= _g123766_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g123767_))
                ((##fx= _g123766_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g123767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g123767_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx122098%_)
        (let* ((_%e122099122109%_ _%stx122098%_)
               (_%E122101122113%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122099122109%_)))
               (_%E122100122135%_
                (lambda ()
                  (if (gx#stx-pair? _%e122099122109%_)
                      (let ((_%e122102122117%_
                             (gx#syntax-e _%e122099122109%_)))
                        (let ((_%hd122103122120%_ (##car _%e122102122117%_))
                              (_%tl122104122122%_ (##cdr _%e122102122117%_)))
                          (if (gx#stx-pair? _%tl122104122122%_)
                              (let ((_%e122105122125%_
                                     (gx#syntax-e _%tl122104122122%_)))
                                (let ((_%hd122106122128%_
                                       (##car _%e122105122125%_))
                                      (_%tl122107122130%_
                                       (##cdr _%e122105122125%_)))
                                  (let ((_%expr122133%_ _%hd122106122128%_))
                                    (if (gx#stx-null? _%tl122107122130%_)
                                        (gx#core-expand-expression
                                         _%expr122133%_)
                                        (_%E122101122113%_)))))
                              (_%E122101122113%_))))
                      (_%E122101122113%_)))))
          (_%E122100122135%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx122057%_)
        (let* ((_%e122058122068%_ _%stx122057%_)
               (_%E122060122072%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122058122068%_)))
               (_%E122059122094%_
                (lambda ()
                  (if (gx#stx-pair? _%e122058122068%_)
                      (let ((_%e122061122076%_
                             (gx#syntax-e _%e122058122068%_)))
                        (let ((_%hd122062122079%_ (##car _%e122061122076%_))
                              (_%tl122063122081%_ (##cdr _%e122061122076%_)))
                          (if (gx#stx-pair? _%tl122063122081%_)
                              (let ((_%e122064122084%_
                                     (gx#syntax-e _%tl122063122081%_)))
                                (let ((_%hd122065122087%_
                                       (##car _%e122064122084%_))
                                      (_%tl122066122089%_
                                       (##cdr _%e122064122084%_)))
                                  (let ((_%e122092%_ _%hd122065122087%_))
                                    (if (gx#stx-null? _%tl122066122089%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e122092%_)
                                                     '()))
                                         (gx#stx-source _%stx122057%_))
                                        (_%E122060122072%_)))))
                              (_%E122060122072%_))))
                      (_%E122060122072%_)))))
          (_%E122059122094%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx122016%_)
        (let* ((_%e122017122027%_ _%stx122016%_)
               (_%E122019122031%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122017122027%_)))
               (_%E122018122053%_
                (lambda ()
                  (if (gx#stx-pair? _%e122017122027%_)
                      (let ((_%e122020122035%_
                             (gx#syntax-e _%e122017122027%_)))
                        (let ((_%hd122021122038%_ (##car _%e122020122035%_))
                              (_%tl122022122040%_ (##cdr _%e122020122035%_)))
                          (if (gx#stx-pair? _%tl122022122040%_)
                              (let ((_%e122023122043%_
                                     (gx#syntax-e _%tl122022122040%_)))
                                (let ((_%hd122024122046%_
                                       (##car _%e122023122043%_))
                                      (_%tl122025122048%_
                                       (##cdr _%e122023122043%_)))
                                  (let ((_%e122051%_ _%hd122024122046%_))
                                    (if (gx#stx-null? _%tl122025122048%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e122051%_)
                                                     '()))
                                         (gx#stx-source _%stx122016%_))
                                        (_%E122019122031%_)))))
                              (_%E122019122031%_))))
                      (_%E122019122031%_)))))
          (_%E122018122053%_))))
    (define gx#core-expand-call%
      (lambda (_%stx121973%_)
        (let* ((_%e121974121984%_ _%stx121973%_)
               (_%E121976121988%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121974121984%_)))
               (_%E121975122012%_
                (lambda ()
                  (if (gx#stx-pair? _%e121974121984%_)
                      (let ((_%e121977121992%_
                             (gx#syntax-e _%e121974121984%_)))
                        (let ((_%hd121978121995%_ (##car _%e121977121992%_))
                              (_%tl121979121997%_ (##cdr _%e121977121992%_)))
                          (if (gx#stx-pair? _%tl121979121997%_)
                              (let ((_%e121980122000%_
                                     (gx#syntax-e _%tl121979121997%_)))
                                (let ((_%hd121981122003%_
                                       (##car _%e121980122000%_))
                                      (_%tl121982122005%_
                                       (##cdr _%e121980122000%_)))
                                  (let* ((_%rator122008%_ _%hd121981122003%_)
                                         (_%args122010%_ _%tl121982122005%_))
                                    (if (gx#stx-list? _%args122010%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator122008%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args122010%_))
                                         (gx#stx-source _%stx121973%_))
                                        (_%E121976121988%_)))))
                              (_%E121976121988%_))))
                      (_%E121976121988%_)))))
          (_%E121975122012%_))))
    (define gx#core-expand-if%
      (lambda (_%stx121906%_)
        (let* ((_%e121907121923%_ _%stx121906%_)
               (_%E121909121927%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121907121923%_)))
               (_%E121908121969%_
                (lambda ()
                  (if (gx#stx-pair? _%e121907121923%_)
                      (let ((_%e121910121931%_
                             (gx#syntax-e _%e121907121923%_)))
                        (let ((_%hd121911121934%_ (##car _%e121910121931%_))
                              (_%tl121912121936%_ (##cdr _%e121910121931%_)))
                          (if (gx#stx-pair? _%tl121912121936%_)
                              (let ((_%e121913121939%_
                                     (gx#syntax-e _%tl121912121936%_)))
                                (let ((_%hd121914121942%_
                                       (##car _%e121913121939%_))
                                      (_%tl121915121944%_
                                       (##cdr _%e121913121939%_)))
                                  (let ((_%test121947%_ _%hd121914121942%_))
                                    (if (gx#stx-pair? _%tl121915121944%_)
                                        (let ((_%e121916121949%_
                                               (gx#syntax-e
                                                _%tl121915121944%_)))
                                          (let ((_%hd121917121952%_
                                                 (##car _%e121916121949%_))
                                                (_%tl121918121954%_
                                                 (##cdr _%e121916121949%_)))
                                            (let ((_%K121957%_
                                                   _%hd121917121952%_))
                                              (if (gx#stx-pair?
                                                   _%tl121918121954%_)
                                                  (let ((_%e121919121959%_
                                                         (gx#syntax-e
                                                          _%tl121918121954%_)))
                                                    (let ((_%hd121920121962%_
                                                           (##car _%e121919121959%_))
                                                          (_%tl121921121964%_
                                                           (##cdr _%e121919121959%_)))
                                                      (let ((_%E121967%_
                                                             _%hd121920121962%_))
                                                        (if (gx#stx-null?
                                                             _%tl121921121964%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test121947%_)
                                 (cons (gx#core-expand-expression _%K121957%_)
                                       (cons (gx#core-expand-expression
                                              _%E121967%_)
                                             '()))))
                     (gx#stx-source _%stx121906%_))
                    (_%E121909121927%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121909121927%_)))))
                                        (_%E121909121927%_)))))
                              (_%E121909121927%_))))
                      (_%E121909121927%_)))))
          (_%E121908121969%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx121865%_)
        (let* ((_%e121866121876%_ _%stx121865%_)
               (_%E121868121880%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121866121876%_)))
               (_%E121867121902%_
                (lambda ()
                  (if (gx#stx-pair? _%e121866121876%_)
                      (let ((_%e121869121884%_
                             (gx#syntax-e _%e121866121876%_)))
                        (let ((_%hd121870121887%_ (##car _%e121869121884%_))
                              (_%tl121871121889%_ (##cdr _%e121869121884%_)))
                          (if (gx#stx-pair? _%tl121871121889%_)
                              (let ((_%e121872121892%_
                                     (gx#syntax-e _%tl121871121889%_)))
                                (let ((_%hd121873121895%_
                                       (##car _%e121872121892%_))
                                      (_%tl121874121897%_
                                       (##cdr _%e121872121892%_)))
                                  (let ((_%id121900%_ _%hd121873121895%_))
                                    (if (gx#stx-null? _%tl121874121897%_)
                                        (if (gx#identifier? _%id121900%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id121900%_
                                                          _%stx121865%_)
                                                         '()))
                                             (gx#stx-source _%stx121865%_))
                                            (_%E121868121880%_))
                                        (_%E121868121880%_)))))
                              (_%E121868121880%_))))
                      (_%E121868121880%_)))))
          (_%E121867121902%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx121811%_)
        (let* ((_%e121812121825%_ _%stx121811%_)
               (_%E121814121829%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121812121825%_)))
               (_%E121813121861%_
                (lambda ()
                  (if (gx#stx-pair? _%e121812121825%_)
                      (let ((_%e121815121833%_
                             (gx#syntax-e _%e121812121825%_)))
                        (let ((_%hd121816121836%_ (##car _%e121815121833%_))
                              (_%tl121817121838%_ (##cdr _%e121815121833%_)))
                          (if (gx#stx-pair? _%tl121817121838%_)
                              (let ((_%e121818121841%_
                                     (gx#syntax-e _%tl121817121838%_)))
                                (let ((_%hd121819121844%_
                                       (##car _%e121818121841%_))
                                      (_%tl121820121846%_
                                       (##cdr _%e121818121841%_)))
                                  (let ((_%id121849%_ _%hd121819121844%_))
                                    (if (gx#stx-pair? _%tl121820121846%_)
                                        (let ((_%e121821121851%_
                                               (gx#syntax-e
                                                _%tl121820121846%_)))
                                          (let ((_%hd121822121854%_
                                                 (##car _%e121821121851%_))
                                                (_%tl121823121856%_
                                                 (##cdr _%e121821121851%_)))
                                            (let ((_%expr121859%_
                                                   _%hd121822121854%_))
                                              (if (gx#stx-null?
                                                   _%tl121823121856%_)
                                                  (if (gx#identifier?
                                                       _%id121849%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id121849%_
                            _%stx121811%_)
                           (cons (gx#core-expand-expression _%expr121859%_)
                                 '())))
               (gx#stx-source _%stx121811%_))
              (_%E121814121829%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121814121829%_)))))
                                        (_%E121814121829%_)))))
                              (_%E121814121829%_))))
                      (_%E121814121829%_)))))
          (_%E121813121861%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx121656%_)
        (letrec ((_%generate121658%_
                  (lambda (_%body121688%_)
                    (let _%lp121690%_ ((_%rest121692%_ _%body121688%_)
                                       (_%ns121693%_
                                        (gx#core-context-namespace__0))
                                       (_%r121694%_ '()))
                      (let* ((_%e121695121710%_ _%rest121692%_)
                             (_%E121708121714%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e121695121710%_)))
                             (_%E121704121718%_
                              (lambda ()
                                (if (gx#stx-null? _%e121695121710%_)
                                    (reverse _%r121694%_)
                                    (_%E121708121714%_))))
                             (_%E121697121775%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121695121710%_)
                                    (let ((_%e121705121722%_
                                           (gx#syntax-e _%e121695121710%_)))
                                      (let ((_%hd121706121725%_
                                             (##car _%e121705121722%_))
                                            (_%tl121707121727%_
                                             (##cdr _%e121705121722%_)))
                                        (let* ((_%hd121730%_
                                                _%hd121706121725%_)
                                               (_%rest121732%_
                                                _%tl121707121727%_))
                                          (if (gx#identifier? _%hd121730%_)
                                              (_%lp121690%_
                                               _%rest121732%_
                                               _%ns121693%_
                                               (cons (cons _%hd121730%_
                                                           (cons (if _%ns121693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd121730%_
                              _%ns121693%_
                              '"#"
                              _%hd121730%_)
                             _%hd121730%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r121694%_))
                                              (let* ((_%e121733121743%_
                                                      _%hd121730%_)
                                                     (_%E121735121747%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e121733121743%_)))
                                                     (_%E121734121771%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e121733121743%_)
                                                            (let ((_%e121736121751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e121733121743%_)))
                      (let ((_%hd121737121754%_ (##car _%e121736121751%_))
                            (_%tl121738121756%_ (##cdr _%e121736121751%_)))
                        (let ((_%id121759%_ _%hd121737121754%_))
                          (if (gx#stx-pair? _%tl121738121756%_)
                              (let ((_%e121739121761%_
                                     (gx#syntax-e _%tl121738121756%_)))
                                (let ((_%hd121740121764%_
                                       (##car _%e121739121761%_))
                                      (_%tl121741121766%_
                                       (##cdr _%e121739121761%_)))
                                  (let ((_%eid121769%_ _%hd121740121764%_))
                                    (if (gx#stx-null? _%tl121741121766%_)
                                        (if (and (gx#identifier? _%id121759%_)
                                                 (gx#identifier?
                                                  _%eid121769%_))
                                            (_%lp121690%_
                                             _%rest121732%_
                                             _%ns121693%_
                                             (cons (cons _%id121759%_
                                                         (cons _%eid121769%_
                                                               '()))
                                                   _%r121694%_))
                                            (_%E121735121747%_))
                                        (_%E121735121747%_)))))
                              (_%E121735121747%_)))))
                    (_%E121735121747%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121734121771%_))))))
                                    (_%E121704121718%_))))
                             (_%E121696121807%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121695121710%_)
                                    (let ((_%e121698121779%_
                                           (gx#syntax-e _%e121695121710%_)))
                                      (let ((_%hd121699121782%_
                                             (##car _%e121698121779%_))
                                            (_%tl121700121784%_
                                             (##cdr _%e121698121779%_)))
                                        (if (eq? (gx#stx-e _%hd121699121782%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl121700121784%_)
                                                (let ((_%e121701121787%_
                                                       (gx#syntax-e
                                                        _%tl121700121784%_)))
                                                  (let ((_%hd121702121790%_
                                                         (##car _%e121701121787%_))
                                                        (_%tl121703121792%_
                                                         (##cdr _%e121701121787%_)))
                                                    (let* ((_%ns121795%_
                                                            _%hd121702121790%_)
                                                           (_%rest121797%_
                                                            _%tl121703121792%_)
                                                           (_%ns121805%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns121795%_)
                        (symbol->string (gx#stx-e _%ns121795%_))
                        (if (or (gx#stx-string? _%ns121795%_)
                                (gx#stx-false? _%ns121795%_))
                            (gx#stx-e _%ns121795%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx121656%_
                             _%ns121795%_)))))
              (_%lp121690%_ _%rest121797%_ _%ns121805%_ _%r121694%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121697121775%_))
                                            (_%E121697121775%_))))
                                    (_%E121697121775%_)))))
                        (_%E121696121807%_))))))
          (let* ((_%e121659121666%_ _%stx121656%_)
                 (_%E121661121670%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121659121666%_)))
                 (_%E121660121684%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121659121666%_)
                        (let ((_%e121662121674%_
                               (gx#syntax-e _%e121659121666%_)))
                          (let ((_%hd121663121677%_ (##car _%e121662121674%_))
                                (_%tl121664121679%_ (##cdr _%e121662121674%_)))
                            (let ((_%body121682%_ _%tl121664121679%_))
                              (if (gx#stx-list? _%body121682%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate121658%_ _%body121682%_))
                                  (_%E121661121670%_)))))
                        (_%E121661121670%_)))))
            (_%E121660121684%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx121602%_)
        (let* ((_%e121603121616%_ _%stx121602%_)
               (_%E121605121620%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121603121616%_)))
               (_%E121604121652%_
                (lambda ()
                  (if (gx#stx-pair? _%e121603121616%_)
                      (let ((_%e121606121624%_
                             (gx#syntax-e _%e121603121616%_)))
                        (let ((_%hd121607121627%_ (##car _%e121606121624%_))
                              (_%tl121608121629%_ (##cdr _%e121606121624%_)))
                          (if (gx#stx-pair? _%tl121608121629%_)
                              (let ((_%e121609121632%_
                                     (gx#syntax-e _%tl121608121629%_)))
                                (let ((_%hd121610121635%_
                                       (##car _%e121609121632%_))
                                      (_%tl121611121637%_
                                       (##cdr _%e121609121632%_)))
                                  (let ((_%hd121640%_ _%hd121610121635%_))
                                    (if (gx#stx-pair? _%tl121611121637%_)
                                        (let ((_%e121612121642%_
                                               (gx#syntax-e
                                                _%tl121611121637%_)))
                                          (let ((_%hd121613121645%_
                                                 (##car _%e121612121642%_))
                                                (_%tl121614121647%_
                                                 (##cdr _%e121612121642%_)))
                                            (let ((_%expr121650%_
                                                   _%hd121613121645%_))
                                              (if (gx#stx-null?
                                                   _%tl121614121647%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd121640%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd121640%_)
                          (cons _%expr121650%_ '())))
              (_%E121605121620%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121605121620%_)))))
                                        (_%E121605121620%_)))))
                              (_%E121605121620%_))))
                      (_%E121605121620%_)))))
          (_%E121604121652%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx121548%_)
        (let* ((_%e121549121562%_ _%stx121548%_)
               (_%E121551121566%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121549121562%_)))
               (_%E121550121598%_
                (lambda ()
                  (if (gx#stx-pair? _%e121549121562%_)
                      (let ((_%e121552121570%_
                             (gx#syntax-e _%e121549121562%_)))
                        (let ((_%hd121553121573%_ (##car _%e121552121570%_))
                              (_%tl121554121575%_ (##cdr _%e121552121570%_)))
                          (if (gx#stx-pair? _%tl121554121575%_)
                              (let ((_%e121555121578%_
                                     (gx#syntax-e _%tl121554121575%_)))
                                (let ((_%hd121556121581%_
                                       (##car _%e121555121578%_))
                                      (_%tl121557121583%_
                                       (##cdr _%e121555121578%_)))
                                  (let ((_%hd121586%_ _%hd121556121581%_))
                                    (if (gx#stx-pair? _%tl121557121583%_)
                                        (let ((_%e121558121588%_
                                               (gx#syntax-e
                                                _%tl121557121583%_)))
                                          (let ((_%hd121559121591%_
                                                 (##car _%e121558121588%_))
                                                (_%tl121560121593%_
                                                 (##cdr _%e121558121588%_)))
                                            (let ((_%expr121596%_
                                                   _%hd121559121591%_))
                                              (if (gx#stx-null?
                                                   _%tl121560121593%_)
                                                  (if (gx#identifier?
                                                       _%hd121586%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd121586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr121596%_ '())))
              (_%E121551121566%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121551121566%_)))))
                                        (_%E121551121566%_)))))
                              (_%E121551121566%_))))
                      (_%E121551121566%_)))))
          (_%E121550121598%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx121494%_)
        (let* ((_%e121495121508%_ _%stx121494%_)
               (_%E121497121512%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121495121508%_)))
               (_%E121496121544%_
                (lambda ()
                  (if (gx#stx-pair? _%e121495121508%_)
                      (let ((_%e121498121516%_
                             (gx#syntax-e _%e121495121508%_)))
                        (let ((_%hd121499121519%_ (##car _%e121498121516%_))
                              (_%tl121500121521%_ (##cdr _%e121498121516%_)))
                          (if (gx#stx-pair? _%tl121500121521%_)
                              (let ((_%e121501121524%_
                                     (gx#syntax-e _%tl121500121521%_)))
                                (let ((_%hd121502121527%_
                                       (##car _%e121501121524%_))
                                      (_%tl121503121529%_
                                       (##cdr _%e121501121524%_)))
                                  (let ((_%id121532%_ _%hd121502121527%_))
                                    (if (gx#stx-pair? _%tl121503121529%_)
                                        (let ((_%e121504121534%_
                                               (gx#syntax-e
                                                _%tl121503121529%_)))
                                          (let ((_%hd121505121537%_
                                                 (##car _%e121504121534%_))
                                                (_%tl121506121539%_
                                                 (##cdr _%e121504121534%_)))
                                            (let ((_%alias-id121542%_
                                                   _%hd121505121537%_))
                                              (if (gx#stx-null?
                                                   _%tl121506121539%_)
                                                  (if (and (gx#identifier?
                                                            _%id121532%_)
                                                           (gx#identifier?
                                                            _%alias-id121542%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id121532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id121542%_ '())))
              (_%E121497121512%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121497121512%_)))))
                                        (_%E121497121512%_)))))
                              (_%E121497121512%_))))
                      (_%E121497121512%_)))))
          (_%E121496121544%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx121451%_)
        (let* ((_%e121452121462%_ _%stx121451%_)
               (_%E121454121466%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121452121462%_)))
               (_%E121453121490%_
                (lambda ()
                  (if (gx#stx-pair? _%e121452121462%_)
                      (let ((_%e121455121470%_
                             (gx#syntax-e _%e121452121462%_)))
                        (let ((_%hd121456121473%_ (##car _%e121455121470%_))
                              (_%tl121457121475%_ (##cdr _%e121455121470%_)))
                          (if (gx#stx-pair? _%tl121457121475%_)
                              (let ((_%e121458121478%_
                                     (gx#syntax-e _%tl121457121475%_)))
                                (let ((_%hd121459121481%_
                                       (##car _%e121458121478%_))
                                      (_%tl121460121483%_
                                       (##cdr _%e121458121478%_)))
                                  (let* ((_%hd121486%_ _%hd121459121481%_)
                                         (_%body121488%_ _%tl121460121483%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd121486%_)
                                             (gx#stx-list? _%body121488%_)
                                             (not (gx#stx-null?
                                                   _%body121488%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd121486%_)
                                         _%body121488%_)
                                        (_%E121454121466%_)))))
                              (_%E121454121466%_))))
                      (_%E121454121466%_)))))
          (_%E121453121490%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx121387%_)
        (letrec ((_%generate121389%_
                  (lambda (_%clause121419%_)
                    (let* ((_%e121420121427%_ _%clause121419%_)
                           (_%E121422121431%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx121387%_
                               _%clause121419%_)))
                           (_%E121421121447%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121420121427%_)
                                  (let ((_%e121423121435%_
                                         (gx#syntax-e _%e121420121427%_)))
                                    (let ((_%hd121424121438%_
                                           (##car _%e121423121435%_))
                                          (_%tl121425121440%_
                                           (##cdr _%e121423121435%_)))
                                      (let* ((_%hd121443%_ _%hd121424121438%_)
                                             (_%body121445%_
                                              _%tl121425121440%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd121443%_)
                                                 (gx#stx-list? _%body121445%_)
                                                 (not (gx#stx-null?
                                                       _%body121445%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd121443%_)
                                                   _%body121445%_)
                                             (gx#stx-source _%clause121419%_))
                                            (_%E121422121431%_)))))
                                  (_%E121422121431%_)))))
                      (_%E121421121447%_)))))
          (let* ((_%e121390121397%_ _%stx121387%_)
                 (_%E121392121401%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121390121397%_)))
                 (_%E121391121415%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121390121397%_)
                        (let ((_%e121393121405%_
                               (gx#syntax-e _%e121390121397%_)))
                          (let ((_%hd121394121408%_ (##car _%e121393121405%_))
                                (_%tl121395121410%_ (##cdr _%e121393121405%_)))
                            (let ((_%clauses121413%_ _%tl121395121410%_))
                              (if (gx#stx-list? _%clauses121413%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate121389%_
                                    _%clauses121413%_))
                                  (_%E121392121401%_)))))
                        (_%E121392121401%_)))))
            (_%E121391121415%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx121288%_ _%form121289%_)
        (letrec ((_%generate121291%_
                  (lambda (_%bind121334%_)
                    (let* ((_%e121335121345%_ _%bind121334%_)
                           (_%E121337121349%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx121288%_
                               _%bind121334%_)))
                           (_%E121336121373%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121335121345%_)
                                  (let ((_%e121338121353%_
                                         (gx#syntax-e _%e121335121345%_)))
                                    (let ((_%hd121339121356%_
                                           (##car _%e121338121353%_))
                                          (_%tl121340121358%_
                                           (##cdr _%e121338121353%_)))
                                      (let ((_%ids121361%_ _%hd121339121356%_))
                                        (if (gx#stx-pair? _%tl121340121358%_)
                                            (let ((_%e121341121363%_
                                                   (gx#syntax-e
                                                    _%tl121340121358%_)))
                                              (let ((_%hd121342121366%_
                                                     (##car _%e121341121363%_))
                                                    (_%tl121343121368%_
                                                     (##cdr _%e121341121363%_)))
                                                (let ((_%expr121371%_
                                                       _%hd121342121366%_))
                                                  (if (gx#stx-null?
                                                       _%tl121343121368%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids121361%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids121361%_)
                        (cons _%expr121371%_ '()))
                  (_%E121337121349%_))
              (_%E121337121349%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E121337121349%_)))))
                                  (_%E121337121349%_)))))
                      (_%E121336121373%_)))))
          (let* ((_%e121292121302%_ _%stx121288%_)
                 (_%E121294121306%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121292121302%_)))
                 (_%E121293121330%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121292121302%_)
                        (let ((_%e121295121310%_
                               (gx#syntax-e _%e121292121302%_)))
                          (let ((_%hd121296121313%_ (##car _%e121295121310%_))
                                (_%tl121297121315%_ (##cdr _%e121295121310%_)))
                            (if (gx#stx-pair? _%tl121297121315%_)
                                (let ((_%e121298121318%_
                                       (gx#syntax-e _%tl121297121315%_)))
                                  (let ((_%hd121299121321%_
                                         (##car _%e121298121318%_))
                                        (_%tl121300121323%_
                                         (##cdr _%e121298121318%_)))
                                    (let* ((_%hd121326%_ _%hd121299121321%_)
                                           (_%body121328%_ _%tl121300121323%_))
                                      (if (and (gx#stx-list? _%hd121326%_)
                                               (gx#stx-list? _%body121328%_)
                                               (not (gx#stx-null?
                                                     _%body121328%_)))
                                          (gx#core-cons*
                                           _%form121289%_
                                           (gx#stx-map1
                                            _%generate121291%_
                                            _%hd121326%_)
                                           _%body121328%_)
                                          (_%E121294121306%_)))))
                                (_%E121294121306%_))))
                        (_%E121294121306%_)))))
            (_%E121293121330%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx121380%_)
        (let ((_%form121382%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx121380%_ _%form121382%_))))
    (define gx#macro-expand-let-values
      (lambda _g123769_
        (let ((_g123768_ (##length _g123769_)))
          (cond ((##fx= _g123768_ 1)
                 (apply gx#macro-expand-let-values__0 _g123769_))
                ((##fx= _g123768_ 2)
                 (apply gx#macro-expand-let-values__% _g123769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g123769_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx121285%_)
        (gx#macro-expand-let-values__% _%stx121285%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx121283%_)
        (gx#macro-expand-let-values__% _%stx121283%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx121174%_)
        (let* ((_%e121175121201%_ _%stx121174%_)
               (_%E121187121205%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121175121201%_)))
               (_%E121177121247%_
                (lambda ()
                  (if (gx#stx-pair? _%e121175121201%_)
                      (let ((_%e121188121209%_
                             (gx#syntax-e _%e121175121201%_)))
                        (let ((_%hd121189121212%_ (##car _%e121188121209%_))
                              (_%tl121190121214%_ (##cdr _%e121188121209%_)))
                          (if (gx#stx-pair? _%tl121190121214%_)
                              (let ((_%e121191121217%_
                                     (gx#syntax-e _%tl121190121214%_)))
                                (let ((_%hd121192121220%_
                                       (##car _%e121191121217%_))
                                      (_%tl121193121222%_
                                       (##cdr _%e121191121217%_)))
                                  (let ((_%test121225%_ _%hd121192121220%_))
                                    (if (gx#stx-pair? _%tl121193121222%_)
                                        (let ((_%e121194121227%_
                                               (gx#syntax-e
                                                _%tl121193121222%_)))
                                          (let ((_%hd121195121230%_
                                                 (##car _%e121194121227%_))
                                                (_%tl121196121232%_
                                                 (##cdr _%e121194121227%_)))
                                            (let ((_%K121235%_
                                                   _%hd121195121230%_))
                                              (if (gx#stx-pair?
                                                   _%tl121196121232%_)
                                                  (let ((_%e121197121237%_
                                                         (gx#syntax-e
                                                          _%tl121196121232%_)))
                                                    (let ((_%hd121198121240%_
                                                           (##car _%e121197121237%_))
                                                          (_%tl121199121242%_
                                                           (##cdr _%e121197121237%_)))
                                                      (let ((_%E121245%_
                                                             _%hd121198121240%_))
                                                        (if (gx#stx-null?
                                                             _%tl121199121242%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test121225%_
                                                             _%K121235%_
                                                             _%E121245%_)
                                                            (_%E121187121205%_)))))
                                                  (_%E121187121205%_)))))
                                        (_%E121187121205%_)))))
                              (_%E121187121205%_))))
                      (_%E121187121205%_))))
               (_%E121176121279%_
                (lambda ()
                  (if (gx#stx-pair? _%e121175121201%_)
                      (let ((_%e121178121251%_
                             (gx#syntax-e _%e121175121201%_)))
                        (let ((_%hd121179121254%_ (##car _%e121178121251%_))
                              (_%tl121180121256%_ (##cdr _%e121178121251%_)))
                          (if (gx#stx-pair? _%tl121180121256%_)
                              (let ((_%e121181121259%_
                                     (gx#syntax-e _%tl121180121256%_)))
                                (let ((_%hd121182121262%_
                                       (##car _%e121181121259%_))
                                      (_%tl121183121264%_
                                       (##cdr _%e121181121259%_)))
                                  (let ((_%test121267%_ _%hd121182121262%_))
                                    (if (gx#stx-pair? _%tl121183121264%_)
                                        (let ((_%e121184121269%_
                                               (gx#syntax-e
                                                _%tl121183121264%_)))
                                          (let ((_%hd121185121272%_
                                                 (##car _%e121184121269%_))
                                                (_%tl121186121274%_
                                                 (##cdr _%e121184121269%_)))
                                            (let ((_%K121277%_
                                                   _%hd121185121272%_))
                                              (if (gx#stx-null?
                                                   _%tl121186121274%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test121267%_
                                                   _%K121277%_
                                                   '#!void)
                                                  (_%E121177121247%_)))))
                                        (_%E121177121247%_)))))
                              (_%E121177121247%_))))
                      (_%E121177121247%_)))))
          (_%E121176121279%_))))
    (define gx#free-identifier=?
      (lambda (_%xid121159%_ _%yid121160%_)
        (let ((_%xe121162%_ (gx#resolve-identifier__0 _%xid121159%_))
              (_%ye121163%_ (gx#resolve-identifier__0 _%yid121160%_)))
          (if (and _%xe121162%_ _%ye121163%_)
              (let ((_%$e121166%_ (eq? _%xe121162%_ _%ye121163%_)))
                (if _%$e121166%_
                    _%$e121166%_
                    (if (##structure-instance-of? _%xe121162%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye121163%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe121162%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye121163%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe121162%_ _%ye121163%_)
                  '#f
                  (gx#stx-eq? _%xid121159%_ _%yid121160%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid121140%_ _%yid121141%_)
        (letrec ((_%context121143%_
                  (lambda (_%e121157%_)
                    (if (##structure-direct-instance-of?
                         _%e121157%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e121157%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks121144%_
                  (lambda (_%e121152%_)
                    (if (symbol? _%e121152%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e121152%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e121152%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e121152%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap121145%_
                  (lambda (_%e121150%_)
                    (if (symbol? _%e121150%_)
                        _%e121150%_
                        (gx#syntax-local-unwrap _%e121150%_)))))
          (let ((_%x121147%_ (_%unwrap121145%_ _%xid121140%_))
                (_%y121148%_ (_%unwrap121145%_ _%yid121141%_)))
            (if (gx#stx-eq? _%x121147%_ _%y121148%_)
                (if (eq? (_%context121143%_ _%x121147%_)
                         (_%context121143%_ _%y121148%_))
                    (equal? (_%marks121144%_ _%x121147%_)
                            (_%marks121144%_ _%y121148%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx121138%_)
        (if (gx#identifier? _%stx121138%_)
            (gx#core-identifier=? _%stx121138%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx121136%_)
        (if (gx#identifier? _%stx121136%_)
            (gx#core-identifier=? _%stx121136%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx121079%_ _%where121080%_)
        (let _%lp121082%_ ((_%rest121084%_ (gx#syntax->list _%stx121079%_)))
          (let* ((_%rest121085121093%_ _%rest121084%_)
                 (_%else121087121101%_ (lambda () '#t))
                 (_%K121089121114%_
                  (lambda (_%rest121104%_ _%hd121105%_)
                    (if (gx#identifier? _%hd121105%_)
                        (if (__find (lambda (_%g121107121109%_)
                                      (gx#bound-identifier=?
                                       _%g121107121109%_
                                       _%hd121105%_))
                                    _%rest121104%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where121080%_
                             _%hd121105%_)
                            (_%lp121082%_ _%rest121104%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where121080%_
                         _%hd121105%_)))))
            (if (##pair? _%rest121085121093%_)
                (let ((_%hd121090121117%_ (##car _%rest121085121093%_))
                      (_%tl121091121119%_ (##cdr _%rest121085121093%_)))
                  (let* ((_%hd121122%_ _%hd121090121117%_)
                         (_%rest121124%_ _%tl121091121119%_))
                    (_%K121089121114%_ _%rest121124%_ _%hd121122%_)))
                (_%else121087121101%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx121129%_)
        (let ((_%where121131%_ _%stx121129%_))
          (gx#check-duplicate-identifiers__% _%stx121129%_ _%where121131%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g123771_
        (let ((_g123770_ (##length _g123771_)))
          (cond ((##fx= _g123770_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g123771_))
                ((##fx= _g123770_ 2)
                 (apply gx#check-duplicate-identifiers__% _g123771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g123771_))))))
    (define gx#core-bind-values?
      (lambda (_%stx121071%_)
        (gx#stx-andmap
         (lambda (_%x121073%_)
           (let ((_%$e121075%_ (gx#identifier? _%x121073%_)))
             (if _%$e121075%_ _%$e121075%_ (gx#stx-false? _%x121073%_))))
         _%stx121071%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx121035%_ _%rebind?121036%_ _%phi121037%_ _%ctx121038%_)
        (gx#stx-for-each1
         (lambda (_%id121040%_)
           (if (gx#identifier? _%id121040%_)
               (gx#core-bind-runtime!__%
                _%id121040%_
                _%rebind?121036%_
                _%phi121037%_
                _%ctx121038%_)
               '#!void))
         _%stx121035%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx121045%_)
        (let* ((_%rebind?121047%_ '#f)
               (_%phi121049%_ (gx#current-expander-phi))
               (_%ctx121051%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx121045%_
           _%rebind?121047%_
           _%phi121049%_
           _%ctx121051%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx121053%_ _%rebind?121054%_)
        (let* ((_%phi121056%_ (gx#current-expander-phi))
               (_%ctx121058%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx121053%_
           _%rebind?121054%_
           _%phi121056%_
           _%ctx121058%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx121060%_ _%rebind?121061%_ _%phi121062%_)
        (let ((_%ctx121064%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx121060%_
           _%rebind?121061%_
           _%phi121062%_
           _%ctx121064%_))))
    (define gx#core-bind-values!
      (lambda _g123773_
        (let ((_g123772_ (##length _g123773_)))
          (cond ((##fx= _g123772_ 1) (apply gx#core-bind-values!__0 _g123773_))
                ((##fx= _g123772_ 2) (apply gx#core-bind-values!__1 _g123773_))
                ((##fx= _g123772_ 3) (apply gx#core-bind-values!__2 _g123773_))
                ((##fx= _g123772_ 4) (apply gx#core-bind-values!__% _g123773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g123773_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx121030%_)
        (gx#stx-map1
         (lambda (_%x121032%_)
           (if (gx#identifier? _%x121032%_)
               (gx#core-quote-syntax__0 _%x121032%_)
               '#f))
         _%stx121030%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx121023%_)
        (if (gx#identifier? _%stx121023%_)
            (let* ((_%bind121025%_ (gx#resolve-identifier__0 _%stx121023%_))
                   (_%$e121027%_ (not _%bind121025%_)))
              (if _%$e121027%_
                  _%$e121027%_
                  (##structure-instance-of?
                   _%bind121025%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id121012%_ _%form121013%_)
        (let ((_%bind121015%_ (gx#resolve-identifier__0 _%id121012%_)))
          (if (##structure-instance-of? _%bind121015%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id121012%_)
              (if (not _%bind121015%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id121012%_)))
                      (gx#core-quote-syntax__0 _%id121012%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form121013%_
                       _%id121012%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form121013%_
                   _%id121012%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id120967%_ _%rebind?120968%_ _%phi120969%_ _%ctx120970%_)
        (let* ((_%key120972%_ (gx#core-identifier-key _%id120967%_))
               (_%eid120974%_
                (gx#make-binding-id__%
                 _%key120972%_
                 '#f
                 _%phi120969%_
                 _%ctx120970%_))
               (_%bind120980%_
                (if (##structure-instance-of?
                     _%ctx120970%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid120974%_
                     _%key120972%_
                     _%phi120969%_
                     _%ctx120970%_)
                    (if (##structure-instance-of?
                         _%ctx120970%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid120974%_
                         _%key120972%_
                         _%phi120969%_)
                        (if (##structure-instance-of?
                             _%ctx120970%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid120974%_
                             _%key120972%_
                             _%phi120969%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid120974%_
                             _%key120972%_
                             _%phi120969%_))))))
          (gx#bind-identifier!__%
           _%id120967%_
           _%bind120980%_
           _%rebind?120968%_
           _%phi120969%_
           _%ctx120970%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id120986%_)
        (let* ((_%rebind?120988%_ '#f)
               (_%phi120990%_ (gx#current-expander-phi))
               (_%ctx120992%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id120986%_
           _%rebind?120988%_
           _%phi120990%_
           _%ctx120992%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id120994%_ _%rebind?120995%_)
        (let* ((_%phi120997%_ (gx#current-expander-phi))
               (_%ctx120999%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id120994%_
           _%rebind?120995%_
           _%phi120997%_
           _%ctx120999%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id121001%_ _%rebind?121002%_ _%phi121003%_)
        (let ((_%ctx121005%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id121001%_
           _%rebind?121002%_
           _%phi121003%_
           _%ctx121005%_))))
    (define gx#core-bind-runtime!
      (lambda _g123775_
        (let ((_g123774_ (##length _g123775_)))
          (cond ((##fx= _g123774_ 1)
                 (apply gx#core-bind-runtime!__0 _g123775_))
                ((##fx= _g123774_ 2)
                 (apply gx#core-bind-runtime!__1 _g123775_))
                ((##fx= _g123774_ 3)
                 (apply gx#core-bind-runtime!__2 _g123775_))
                ((##fx= _g123774_ 4)
                 (apply gx#core-bind-runtime!__% _g123775_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g123775_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id120919%_
               _%eid120920%_
               _%rebind?120921%_
               _%phi120922%_
               _%ctx120923%_)
        (let* ((_%key120925%_ (gx#core-identifier-key _%id120919%_))
               (_%bind120930%_
                (if (##structure-instance-of?
                     _%ctx120923%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid120920%_
                     _%key120925%_
                     _%phi120922%_
                     _%ctx120923%_)
                    (if (##structure-instance-of?
                         _%ctx120923%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid120920%_
                         _%key120925%_
                         _%phi120922%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid120920%_
                         _%key120925%_
                         _%phi120922%_)))))
          (gx#bind-identifier!__%
           _%id120919%_
           _%bind120930%_
           _%rebind?120921%_
           _%phi120922%_
           _%ctx120923%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id120936%_ _%eid120937%_)
        (let* ((_%rebind?120939%_ '#f)
               (_%phi120941%_ (gx#current-expander-phi))
               (_%ctx120943%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120936%_
           _%eid120937%_
           _%rebind?120939%_
           _%phi120941%_
           _%ctx120943%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id120945%_ _%eid120946%_ _%rebind?120947%_)
        (let* ((_%phi120949%_ (gx#current-expander-phi))
               (_%ctx120951%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120945%_
           _%eid120946%_
           _%rebind?120947%_
           _%phi120949%_
           _%ctx120951%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id120953%_ _%eid120954%_ _%rebind?120955%_ _%phi120956%_)
        (let ((_%ctx120958%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id120953%_
           _%eid120954%_
           _%rebind?120955%_
           _%phi120956%_
           _%ctx120958%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g123777_
        (let ((_g123776_ (##length _g123777_)))
          (cond ((##fx= _g123776_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g123777_))
                ((##fx= _g123776_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g123777_))
                ((##fx= _g123776_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g123777_))
                ((##fx= _g123776_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g123777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g123777_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id120879%_
               _%eid120880%_
               _%rebind?120881%_
               _%phi120882%_
               _%ctx120883%_)
        (gx#bind-identifier!__%
         _%id120879%_
         (##structure
          gx#extern-binding::t
          _%eid120880%_
          (gx#core-identifier-key _%id120879%_)
          _%phi120882%_)
         _%rebind?120881%_
         _%phi120882%_
         _%ctx120883%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id120888%_ _%eid120889%_)
        (let* ((_%rebind?120891%_ '#f)
               (_%phi120893%_ (gx#current-expander-phi))
               (_%ctx120895%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120888%_
           _%eid120889%_
           _%rebind?120891%_
           _%phi120893%_
           _%ctx120895%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id120897%_ _%eid120898%_ _%rebind?120899%_)
        (let* ((_%phi120901%_ (gx#current-expander-phi))
               (_%ctx120903%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120897%_
           _%eid120898%_
           _%rebind?120899%_
           _%phi120901%_
           _%ctx120903%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id120905%_ _%eid120906%_ _%rebind?120907%_ _%phi120908%_)
        (let ((_%ctx120910%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id120905%_
           _%eid120906%_
           _%rebind?120907%_
           _%phi120908%_
           _%ctx120910%_))))
    (define gx#core-bind-extern!
      (lambda _g123779_
        (let ((_g123778_ (##length _g123779_)))
          (cond ((##fx= _g123778_ 2) (apply gx#core-bind-extern!__0 _g123779_))
                ((##fx= _g123778_ 3) (apply gx#core-bind-extern!__1 _g123779_))
                ((##fx= _g123778_ 4) (apply gx#core-bind-extern!__2 _g123779_))
                ((##fx= _g123778_ 5) (apply gx#core-bind-extern!__% _g123779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g123779_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id120833%_
               _%e120834%_
               _%rebind?120835%_
               _%phi120836%_
               _%ctx120837%_)
        (gx#bind-identifier!__%
         _%id120833%_
         (let ((_%key120842%_ (gx#core-identifier-key _%id120833%_))
               (_%e120843%_
                (if (or (##structure-instance-of? _%e120834%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e120834%_
                         'gx#expander-context::t))
                    _%e120834%_
                    (##structure
                     gx#user-expander::t
                     _%e120834%_
                     _%ctx120837%_
                     _%phi120836%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key120842%_
             '#t
             _%phi120836%_
             _%ctx120837%_)
            _%key120842%_
            _%phi120836%_
            _%e120843%_))
         _%rebind?120835%_
         _%phi120836%_
         _%ctx120837%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id120848%_ _%e120849%_)
        (let* ((_%rebind?120851%_ '#f)
               (_%phi120853%_ (gx#current-expander-phi))
               (_%ctx120855%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120848%_
           _%e120849%_
           _%rebind?120851%_
           _%phi120853%_
           _%ctx120855%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id120857%_ _%e120858%_ _%rebind?120859%_)
        (let* ((_%phi120861%_ (gx#current-expander-phi))
               (_%ctx120863%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120857%_
           _%e120858%_
           _%rebind?120859%_
           _%phi120861%_
           _%ctx120863%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id120865%_ _%e120866%_ _%rebind?120867%_ _%phi120868%_)
        (let ((_%ctx120870%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id120865%_
           _%e120866%_
           _%rebind?120867%_
           _%phi120868%_
           _%ctx120870%_))))
    (define gx#core-bind-syntax!
      (lambda _g123781_
        (let ((_g123780_ (##length _g123781_)))
          (cond ((##fx= _g123780_ 2) (apply gx#core-bind-syntax!__0 _g123781_))
                ((##fx= _g123780_ 3) (apply gx#core-bind-syntax!__1 _g123781_))
                ((##fx= _g123780_ 4) (apply gx#core-bind-syntax!__2 _g123781_))
                ((##fx= _g123780_ 5) (apply gx#core-bind-syntax!__% _g123781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g123781_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id120816%_ _%e120817%_ _%rebind?120818%_)
        (gx#core-bind-syntax!__%
         _%id120816%_
         _%e120817%_
         _%rebind?120818%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id120823%_ _%e120824%_)
        (let ((_%rebind?120826%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id120823%_
           _%e120824%_
           _%rebind?120826%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g123783_
        (let ((_g123782_ (##length _g123783_)))
          (cond ((##fx= _g123782_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g123783_))
                ((##fx= _g123782_ 3)
                 (apply gx#core-bind-root-syntax!__% _g123783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g123783_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id120774%_
               _%alias-id120775%_
               _%rebind?120776%_
               _%phi120777%_
               _%ctx120778%_)
        (gx#bind-identifier!__%
         _%id120774%_
         (let ((_%key120780%_ (gx#core-identifier-key _%id120774%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key120780%_
             '#t
             _%phi120777%_
             _%ctx120778%_)
            _%key120780%_
            _%phi120777%_
            _%alias-id120775%_))
         _%rebind?120776%_
         _%phi120777%_
         _%ctx120778%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id120785%_ _%alias-id120786%_)
        (let* ((_%rebind?120788%_ '#f)
               (_%phi120790%_ (gx#current-expander-phi))
               (_%ctx120792%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120785%_
           _%alias-id120786%_
           _%rebind?120788%_
           _%phi120790%_
           _%ctx120792%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id120794%_ _%alias-id120795%_ _%rebind?120796%_)
        (let* ((_%phi120798%_ (gx#current-expander-phi))
               (_%ctx120800%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120794%_
           _%alias-id120795%_
           _%rebind?120796%_
           _%phi120798%_
           _%ctx120800%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id120802%_ _%alias-id120803%_ _%rebind?120804%_ _%phi120805%_)
        (let ((_%ctx120807%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id120802%_
           _%alias-id120803%_
           _%rebind?120804%_
           _%phi120805%_
           _%ctx120807%_))))
    (define gx#core-bind-alias!
      (lambda _g123785_
        (let ((_g123784_ (##length _g123785_)))
          (cond ((##fx= _g123784_ 2) (apply gx#core-bind-alias!__0 _g123785_))
                ((##fx= _g123784_ 3) (apply gx#core-bind-alias!__1 _g123785_))
                ((##fx= _g123784_ 4) (apply gx#core-bind-alias!__2 _g123785_))
                ((##fx= _g123784_ 5) (apply gx#core-bind-alias!__% _g123785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g123785_))))))
    (define gx#make-binding-id__%
      (lambda (_%key120724%_ _%syntax?120725%_ _%phi120726%_ _%ctx120727%_)
        (if (uninterned-symbol? _%key120724%_)
            (##gensym 'L)
            (if (pair? _%key120724%_)
                (gensym (##car _%key120724%_))
                (if (##structure-instance-of? _%ctx120727%_ 'gx#top-context::t)
                    (let ((_%ns120732%_
                           (gx#core-context-namespace__% _%ctx120727%_)))
                      (if (and (fxzero? _%phi120726%_) (not _%syntax?120725%_))
                          (if _%ns120732%_
                              (make-symbol__1 _%ns120732%_ '"#" _%key120724%_)
                              _%key120724%_)
                          (if _%syntax?120725%_
                              (make-symbol__1
                               (let ((_%$e120736%_ _%ns120732%_))
                                 (if _%$e120736%_ _%$e120736%_ '""))
                               '"[:"
                               (number->string _%phi120726%_)
                               '":]#"
                               _%key120724%_)
                              (make-symbol__1
                               (let ((_%$e120740%_ _%ns120732%_))
                                 (if _%$e120740%_ _%$e120740%_ '""))
                               '"["
                               (number->string _%phi120726%_)
                               '"]#"
                               _%key120724%_))))
                    (gensym _%key120724%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key120747%_)
        (let* ((_%syntax?120749%_ '#f)
               (_%phi120751%_ (gx#current-expander-phi))
               (_%ctx120753%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120747%_
           _%syntax?120749%_
           _%phi120751%_
           _%ctx120753%_))))
    (define gx#make-binding-id__1
      (lambda (_%key120755%_ _%syntax?120756%_)
        (let* ((_%phi120758%_ (gx#current-expander-phi))
               (_%ctx120760%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120755%_
           _%syntax?120756%_
           _%phi120758%_
           _%ctx120760%_))))
    (define gx#make-binding-id__2
      (lambda (_%key120762%_ _%syntax?120763%_ _%phi120764%_)
        (let ((_%ctx120766%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key120762%_
           _%syntax?120763%_
           _%phi120764%_
           _%ctx120766%_))))
    (define gx#make-binding-id
      (lambda _g123787_
        (let ((_g123786_ (##length _g123787_)))
          (cond ((##fx= _g123786_ 1) (apply gx#make-binding-id__0 _g123787_))
                ((##fx= _g123786_ 2) (apply gx#make-binding-id__1 _g123787_))
                ((##fx= _g123786_ 3) (apply gx#make-binding-id__2 _g123787_))
                ((##fx= _g123786_ 4) (apply gx#make-binding-id__% _g123787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g123787_))))))))
