(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1771036675)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx364611%_)
        (letrec ((_%expand-special364613%_
                  (lambda (_%hd364615%_ _%K364616%_ _%rest364617%_ _%r364618%_)
                    (_%K364616%_
                     _%rest364617%_
                     (cons (gx#core-expand-top _%hd364615%_) _%r364618%_)))))
          (gx#core-expand-block__0 _%stx364611%_ _%expand-special364613%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx364305%_)
        (letrec ((_%expand-special364307%_
                  (lambda (_%hd364429%_ _%K364430%_ _%rest364431%_ _%r364432%_)
                    (let* ((_%K364436%_
                            (lambda (_%e364434%_)
                              (_%K364430%_
                               _%rest364431%_
                               (cons _%e364434%_ _%r364432%_))))
                           (_%e364437364479%_ _%hd364429%_)
                           (_%E364474364483%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e364437364479%_)))
                           (_%E364470364495%_
                            (lambda ()
                              (if (gx#stx-pair? _%e364437364479%_)
                                  (let ((_%e364475364487%_
                                         (gx#syntax-e _%e364437364479%_)))
                                    (let ((_%hd364476364490%_
                                           (##car _%e364475364487%_))
                                          (_%tl364477364492%_
                                           (##cdr _%e364475364487%_)))
                                      (if (and (gx#identifier?
                                                _%hd364476364490%_)
                                               (gx#core-identifier=?
                                                _%hd364476364490%_
                                                '%#define-runtime))
                                          (_%K364436%_
                                           (gx#core-expand-define-runtime%
                                            _%hd364429%_))
                                          (_%E364474364483%_))))
                                  (_%E364474364483%_))))
                           (_%E364466364507%_
                            (lambda ()
                              (if (gx#stx-pair? _%e364437364479%_)
                                  (let ((_%e364471364499%_
                                         (gx#syntax-e _%e364437364479%_)))
                                    (let ((_%hd364472364502%_
                                           (##car _%e364471364499%_))
                                          (_%tl364473364504%_
                                           (##cdr _%e364471364499%_)))
                                      (if (and (gx#identifier?
                                                _%hd364472364502%_)
                                               (gx#core-identifier=?
                                                _%hd364472364502%_
                                                '%#define-alias))
                                          (_%K364436%_
                                           (gx#core-expand-define-alias%
                                            _%hd364429%_))
                                          (_%E364470364495%_))))
                                  (_%E364470364495%_))))
                           (_%E364456364519%_
                            (lambda ()
                              (if (gx#stx-pair? _%e364437364479%_)
                                  (let ((_%e364467364511%_
                                         (gx#syntax-e _%e364437364479%_)))
                                    (let ((_%hd364468364514%_
                                           (##car _%e364467364511%_))
                                          (_%tl364469364516%_
                                           (##cdr _%e364467364511%_)))
                                      (if (and (gx#identifier?
                                                _%hd364468364514%_)
                                               (gx#core-identifier=?
                                                _%hd364468364514%_
                                                '%#define-syntax))
                                          (_%K364436%_
                                           (gx#core-expand-define-syntax%
                                            _%hd364429%_))
                                          (_%E364466364507%_))))
                                  (_%E364466364507%_))))
                           (_%E364443364551%_
                            (lambda ()
                              (if (gx#stx-pair? _%e364437364479%_)
                                  (let ((_%e364457364523%_
                                         (gx#syntax-e _%e364437364479%_)))
                                    (let ((_%hd364458364526%_
                                           (##car _%e364457364523%_))
                                          (_%tl364459364528%_
                                           (##cdr _%e364457364523%_)))
                                      (if (and (gx#identifier?
                                                _%hd364458364526%_)
                                               (gx#core-identifier=?
                                                _%hd364458364526%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl364459364528%_)
                                              (let ((_%e364460364531%_
                                                     (gx#syntax-e
                                                      _%tl364459364528%_)))
                                                (let ((_%hd364461364534%_
                                                       (##car _%e364460364531%_))
                                                      (_%tl364462364536%_
                                                       (##cdr _%e364460364531%_)))
                                                  (let ((_%hd-bind364539%_
                                                         _%hd364461364534%_))
                                                    (if (gx#stx-pair?
                                                         _%tl364462364536%_)
                                                        (let ((_%e364463364541%_
                                                               (gx#syntax-e
                                                                _%tl364462364536%_)))
                                                          (let ((_%hd364464364544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e364463364541%_))
                        (_%tl364465364546%_ (##cdr _%e364463364541%_)))
                    (let ((_%expr364549%_ _%hd364464364544%_))
                      (if (gx#stx-null? _%tl364465364546%_)
                          (if (gx#core-bind-values? _%hd-bind364539%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind364539%_)
                                (_%K364436%_ _%hd364429%_))
                              (_%E364456364519%_))
                          (_%E364456364519%_)))))
                (_%E364456364519%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E364456364519%_))
                                          (_%E364456364519%_))))
                                  (_%E364456364519%_))))
                           (_%E364439364595%_
                            (lambda ()
                              (if (gx#stx-pair? _%e364437364479%_)
                                  (let ((_%e364444364555%_
                                         (gx#syntax-e _%e364437364479%_)))
                                    (let ((_%hd364445364558%_
                                           (##car _%e364444364555%_))
                                          (_%tl364446364560%_
                                           (##cdr _%e364444364555%_)))
                                      (if (and (gx#identifier?
                                                _%hd364445364558%_)
                                               (gx#core-identifier=?
                                                _%hd364445364558%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl364446364560%_)
                                              (let ((_%e364447364563%_
                                                     (gx#syntax-e
                                                      _%tl364446364560%_)))
                                                (let ((_%hd364448364566%_
                                                       (##car _%e364447364563%_))
                                                      (_%tl364449364568%_
                                                       (##cdr _%e364447364563%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd364448364566%_)
                                                      (let ((_%e364453364571%_
                                                             (gx#syntax-e
                                                              _%hd364448364566%_)))
                                                        (let ((_%hd364454364574%_
                                                               (##car _%e364453364571%_))
                                                              (_%tl364455364576%_
                                                               (##cdr _%e364453364571%_)))
                                                          (let ((_%id364579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd364454364574%_))
                    (if (gx#stx-null? _%tl364455364576%_)
                        (if (gx#stx-pair? _%tl364449364568%_)
                            (let ((_%e364450364581%_
                                   (gx#syntax-e _%tl364449364568%_)))
                              (let ((_%hd364451364584%_
                                     (##car _%e364450364581%_))
                                    (_%tl364452364586%_
                                     (##cdr _%e364450364581%_)))
                                (let* ((_%expr364589%_ _%hd364451364584%_)
                                       (_%props364591%_ _%tl364452364586%_))
                                  (if (gx#identifier? _%id364579%_)
                                      (let ((_%bind364593%_
                                             (gx#core-bind-runtime!__0
                                              _%id364579%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind364593%_
                                         _%props364591%_)
                                        (_%K364436%_ _%hd364429%_))
                                      (_%E364443364551%_)))))
                            (_%E364443364551%_))
                        (_%E364443364551%_)))))
              (_%E364443364551%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E364443364551%_))
                                          (_%E364443364551%_))))
                                  (_%E364443364551%_))))
                           (_%E364438364607%_
                            (lambda ()
                              (if (gx#stx-pair? _%e364437364479%_)
                                  (let ((_%e364440364599%_
                                         (gx#syntax-e _%e364437364479%_)))
                                    (let ((_%hd364441364602%_
                                           (##car _%e364440364599%_))
                                          (_%tl364442364604%_
                                           (##cdr _%e364440364599%_)))
                                      (if (and (gx#identifier?
                                                _%hd364441364602%_)
                                               (gx#core-identifier=?
                                                _%hd364441364602%_
                                                '%#begin-syntax))
                                          (_%K364436%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd364429%_))
                                          (_%E364439364595%_))))
                                  (_%E364439364595%_)))))
                      (_%E364438364607%_))))
                 (_%eval-body364308%_
                  (lambda (_%rbody364316%_)
                    (let _%lp364318%_ ((_%rest364320%_ _%rbody364316%_)
                                       (_%body364321%_ '())
                                       (_%ebody364322%_ '()))
                      (let* ((_%rest364323364331%_ _%rest364320%_)
                             (_%else364325364339%_
                              (lambda ()
                                (values _%body364321%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody364322%_)
                                          (gx#stx-source _%stx364305%_))))))
                             (_%K364327364417%_
                              (lambda (_%rest364342%_ _%hd364343%_)
                                (let* ((_%e364344364361%_ _%hd364343%_)
                                       (_%E364356364365%_
                                        (lambda ()
                                          (_%lp364318%_
                                           _%rest364342%_
                                           (cons _%hd364343%_ _%body364321%_)
                                           (cons _%hd364343%_
                                                 _%ebody364322%_))))
                                       (_%E364346364377%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e364344364361%_)
                                              (let ((_%e364357364369%_
                                                     (gx#syntax-e
                                                      _%e364344364361%_)))
                                                (let ((_%hd364358364372%_
                                                       (##car _%e364357364369%_))
                                                      (_%tl364359364374%_
                                                       (##cdr _%e364357364369%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd364358364372%_)
                                                           (gx#core-identifier=?
                                                            _%hd364358364372%_
                                                            '%#begin-syntax))
                                                      (_%lp364318%_
                                                       _%rest364342%_
                                                       (cons _%hd364343%_
                                                             _%body364321%_)
                                                       _%ebody364322%_)
                                                      (_%E364356364365%_))))
                                              (_%E364356364365%_))))
                                       (_%E364345364413%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e364344364361%_)
                                              (let ((_%e364347364381%_
                                                     (gx#syntax-e
                                                      _%e364344364361%_)))
                                                (let ((_%hd364348364384%_
                                                       (##car _%e364347364381%_))
                                                      (_%tl364349364386%_
                                                       (##cdr _%e364347364381%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd364348364384%_)
                                                           (gx#core-identifier=?
                                                            _%hd364348364384%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl364349364386%_)
                                                          (let ((_%e364350364389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl364349364386%_)))
                    (let ((_%hd364351364392%_ (##car _%e364350364389%_))
                          (_%tl364352364394%_ (##cdr _%e364350364389%_)))
                      (let ((_%hd-bind364397%_ _%hd364351364392%_))
                        (if (gx#stx-pair? _%tl364352364394%_)
                            (let ((_%e364353364399%_
                                   (gx#syntax-e _%tl364352364394%_)))
                              (let ((_%hd364354364402%_
                                     (##car _%e364353364399%_))
                                    (_%tl364355364404%_
                                     (##cdr _%e364353364399%_)))
                                (let* ((_%expr364407%_ _%hd364354364402%_)
                                       (_%ignore-props364409%_
                                        _%tl364355364404%_)
                                       (_%ehd364411%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind364397%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr364407%_)
                                                           '())))
                                         (gx#stx-source _%hd364343%_))))
                                  (_%lp364318%_
                                   _%rest364342%_
                                   (cons _%ehd364411%_ _%body364321%_)
                                   (cons _%ehd364411%_ _%ebody364322%_)))))
                            (_%E364346364377%_)))))
                  (_%E364346364377%_))
              (_%E364346364377%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E364346364377%_)))))
                                  (_%E364345364413%_)))))
                        (if (pair? _%rest364323364331%_)
                            (let ((_%hd364328364420%_
                                   (##car _%rest364323364331%_))
                                  (_%tl364329364422%_
                                   (##cdr _%rest364323364331%_)))
                              (let* ((_%hd364425%_ _%hd364328364420%_)
                                     (_%rest364427%_ _%tl364329364422%_))
                                (_%K364327364417%_
                                 _%rest364427%_
                                 _%hd364425%_)))
                            (_%else364325364339%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody364311%_
                     (gx#core-expand-block__1
                      _%stx364305%_
                      _%expand-special364307%_
                      '#f))
                    (_g364644_ (_%eval-body364308%_ _%rbody364311%_)))
               (begin
                 (let ((_g364645_
                        (if (##values? _g364644_)
                            (##values-length _g364644_)
                            1)))
                   (if (not (##fx= _g364645_ 2))
                       (error "Context expects 2 values" _g364645_)))
                 (let ((_%expanded-body364313%_ (##values-ref _g364644_ 0))
                       (_%value364314%_ (##values-ref _g364644_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body364313%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value364314%_ '())))
                    (gx#stx-source _%stx364305%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx364275%_)
        (let* ((_%e364276364283%_ _%stx364275%_)
               (_%E364278364287%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e364276364283%_)))
               (_%E364277364301%_
                (lambda ()
                  (if (gx#stx-pair? _%e364276364283%_)
                      (let ((_%e364279364291%_
                             (gx#syntax-e _%e364276364283%_)))
                        (let ((_%hd364280364294%_ (##car _%e364279364291%_))
                              (_%tl364281364296%_ (##cdr _%e364279364291%_)))
                          (let ((_%body364299%_ _%tl364281364296%_))
                            (if (gx#stx-list? _%body364299%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body364299%_)
                                 (gx#stx-source _%stx364275%_))
                                (_%E364278364287%_)))))
                      (_%E364278364287%_)))))
          (_%E364277364301%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx364273%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx364273%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx364219%_)
        (let* ((_%e364220364233%_ _%stx364219%_)
               (_%E364222364237%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e364220364233%_)))
               (_%E364221364269%_
                (lambda ()
                  (if (gx#stx-pair? _%e364220364233%_)
                      (let ((_%e364223364241%_
                             (gx#syntax-e _%e364220364233%_)))
                        (let ((_%hd364224364244%_ (##car _%e364223364241%_))
                              (_%tl364225364246%_ (##cdr _%e364223364241%_)))
                          (if (gx#stx-pair? _%tl364225364246%_)
                              (let ((_%e364226364249%_
                                     (gx#syntax-e _%tl364225364246%_)))
                                (let ((_%hd364227364252%_
                                       (##car _%e364226364249%_))
                                      (_%tl364228364254%_
                                       (##cdr _%e364226364249%_)))
                                  (let ((_%ann364257%_ _%hd364227364252%_))
                                    (if (gx#stx-pair? _%tl364228364254%_)
                                        (let ((_%e364229364259%_
                                               (gx#syntax-e
                                                _%tl364228364254%_)))
                                          (let ((_%hd364230364262%_
                                                 (##car _%e364229364259%_))
                                                (_%tl364231364264%_
                                                 (##cdr _%e364229364259%_)))
                                            (let ((_%expr364267%_
                                                   _%hd364230364262%_))
                                              (if (gx#stx-null?
                                                   _%tl364231364264%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann364257%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr364267%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx364219%_))
                                                  (_%E364222364237%_)))))
                                        (_%E364222364237%_)))))
                              (_%E364222364237%_))))
                      (_%E364222364237%_)))))
          (_%E364221364269%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx363884%_ _%body363885%_)
        (letrec ((_%expand-special363887%_
                  (lambda (_%hd364214%_ _%K364215%_ _%rest364216%_ _%r364217%_)
                    (_%K364215%_
                     '()
                     (cons (_%expand-internal363888%_
                            _%hd364214%_
                            _%rest364216%_)
                           _%r364217%_))))
                 (_%expand-internal363888%_
                  (lambda (_%hd364210%_ _%rest364211%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal363890%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd364210%_ _%rest364211%_))
                          (gx#stx-source _%stx363884%_))
                         _%expand-internal-special363889%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj364628
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj364628)
                       __obj364628))))
                 (_%expand-internal-special363889%_
                  (lambda (_%hd364048%_ _%K364049%_ _%rest364050%_ _%r364051%_)
                    (let* ((_%e364052364090%_ _%hd364048%_)
                           (_%E364085364094%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e364052364090%_)))
                           (_%E364081364106%_
                            (lambda ()
                              (if (gx#stx-pair? _%e364052364090%_)
                                  (let ((_%e364086364098%_
                                         (gx#syntax-e _%e364052364090%_)))
                                    (let ((_%hd364087364101%_
                                           (##car _%e364086364098%_))
                                          (_%tl364088364103%_
                                           (##cdr _%e364086364098%_)))
                                      (if (and (gx#identifier?
                                                _%hd364087364101%_)
                                               (gx#core-identifier=?
                                                _%hd364087364101%_
                                                '%#declare))
                                          (_%K364049%_
                                           _%rest364050%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd364048%_)
                                                 _%r364051%_))
                                          (_%E364085364094%_))))
                                  (_%E364085364094%_))))
                           (_%E364077364118%_
                            (lambda ()
                              (if (gx#stx-pair? _%e364052364090%_)
                                  (let ((_%e364082364110%_
                                         (gx#syntax-e _%e364052364090%_)))
                                    (let ((_%hd364083364113%_
                                           (##car _%e364082364110%_))
                                          (_%tl364084364115%_
                                           (##cdr _%e364082364110%_)))
                                      (if (and (gx#identifier?
                                                _%hd364083364113%_)
                                               (gx#core-identifier=?
                                                _%hd364083364113%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd364048%_)
                                            (_%K364049%_
                                             _%rest364050%_
                                             _%r364051%_))
                                          (_%E364081364106%_))))
                                  (_%E364081364106%_))))
                           (_%E364067364130%_
                            (lambda ()
                              (if (gx#stx-pair? _%e364052364090%_)
                                  (let ((_%e364078364122%_
                                         (gx#syntax-e _%e364052364090%_)))
                                    (let ((_%hd364079364125%_
                                           (##car _%e364078364122%_))
                                          (_%tl364080364127%_
                                           (##cdr _%e364078364122%_)))
                                      (if (and (gx#identifier?
                                                _%hd364079364125%_)
                                               (gx#core-identifier=?
                                                _%hd364079364125%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd364048%_)
                                            (_%K364049%_
                                             _%rest364050%_
                                             _%r364051%_))
                                          (_%E364077364118%_))))
                                  (_%E364077364118%_))))
                           (_%E364054364162%_
                            (lambda ()
                              (if (gx#stx-pair? _%e364052364090%_)
                                  (let ((_%e364068364134%_
                                         (gx#syntax-e _%e364052364090%_)))
                                    (let ((_%hd364069364137%_
                                           (##car _%e364068364134%_))
                                          (_%tl364070364139%_
                                           (##cdr _%e364068364134%_)))
                                      (if (and (gx#identifier?
                                                _%hd364069364137%_)
                                               (gx#core-identifier=?
                                                _%hd364069364137%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl364070364139%_)
                                              (let ((_%e364071364142%_
                                                     (gx#syntax-e
                                                      _%tl364070364139%_)))
                                                (let ((_%hd364072364145%_
                                                       (##car _%e364071364142%_))
                                                      (_%tl364073364147%_
                                                       (##cdr _%e364071364142%_)))
                                                  (let ((_%hd-bind364150%_
                                                         _%hd364072364145%_))
                                                    (if (gx#stx-pair?
                                                         _%tl364073364147%_)
                                                        (let ((_%e364074364152%_
                                                               (gx#syntax-e
                                                                _%tl364073364147%_)))
                                                          (let ((_%hd364075364155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e364074364152%_))
                        (_%tl364076364157%_ (##cdr _%e364074364152%_)))
                    (let ((_%expr364160%_ _%hd364075364155%_))
                      (if (gx#stx-null? _%tl364076364157%_)
                          (if (gx#core-bind-values? _%hd-bind364150%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind364150%_)
                                (_%K364049%_
                                 _%rest364050%_
                                 (cons _%hd364048%_ _%r364051%_)))
                              (_%E364067364130%_))
                          (_%E364067364130%_)))))
                (_%E364067364130%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E364067364130%_))
                                          (_%E364067364130%_))))
                                  (_%E364067364130%_))))
                           (_%E364053364206%_
                            (lambda ()
                              (if (gx#stx-pair? _%e364052364090%_)
                                  (let ((_%e364055364166%_
                                         (gx#syntax-e _%e364052364090%_)))
                                    (let ((_%hd364056364169%_
                                           (##car _%e364055364166%_))
                                          (_%tl364057364171%_
                                           (##cdr _%e364055364166%_)))
                                      (if (and (gx#identifier?
                                                _%hd364056364169%_)
                                               (gx#core-identifier=?
                                                _%hd364056364169%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl364057364171%_)
                                              (let ((_%e364058364174%_
                                                     (gx#syntax-e
                                                      _%tl364057364171%_)))
                                                (let ((_%hd364059364177%_
                                                       (##car _%e364058364174%_))
                                                      (_%tl364060364179%_
                                                       (##cdr _%e364058364174%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd364059364177%_)
                                                      (let ((_%e364064364182%_
                                                             (gx#syntax-e
                                                              _%hd364059364177%_)))
                                                        (let ((_%hd364065364185%_
                                                               (##car _%e364064364182%_))
                                                              (_%tl364066364187%_
                                                               (##cdr _%e364064364182%_)))
                                                          (let ((_%id364190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd364065364185%_))
                    (if (gx#stx-null? _%tl364066364187%_)
                        (if (gx#stx-pair? _%tl364060364179%_)
                            (let ((_%e364061364192%_
                                   (gx#syntax-e _%tl364060364179%_)))
                              (let ((_%hd364062364195%_
                                     (##car _%e364061364192%_))
                                    (_%tl364063364197%_
                                     (##cdr _%e364061364192%_)))
                                (let* ((_%expr364200%_ _%hd364062364195%_)
                                       (_%props364202%_ _%tl364063364197%_))
                                  (if (gx#identifier? _%id364190%_)
                                      (let ((_%bind364204%_
                                             (gx#core-bind-runtime!__0
                                              _%id364190%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind364204%_
                                         _%props364202%_)
                                        (_%K364049%_
                                         _%rest364050%_
                                         (cons _%hd364048%_ _%r364051%_)))
                                      (_%E364054364162%_)))))
                            (_%E364054364162%_))
                        (_%E364054364162%_)))))
              (_%E364054364162%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E364054364162%_))
                                          (_%E364054364162%_))))
                                  (_%E364054364162%_)))))
                      (_%E364053364206%_))))
                 (_%wrap-internal363890%_
                  (lambda (_%rbody363892%_)
                    (let _%lp363894%_ ((_%rest363896%_ _%rbody363892%_)
                                       (_%decls363897%_ '())
                                       (_%bind363898%_ '())
                                       (_%body363899%_ '()))
                      (let* ((_%e363900363907%_ _%rest363896%_)
                             (_%E363902363956%_
                              (lambda ()
                                (let* ((_%body363951%_
                                        (let* ((_%body363910363920%_
                                                _%body363899%_)
                                               (_%else363913363928%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body363899%_)
                                                   (gx#stx-source
                                                    _%stx363884%_)))))
                                          (let ((_%K363918363948%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx363884%_)))
                                                (_%K363915363934%_
                                                 (lambda (_%expr363932%_)
                                                   _%expr363932%_)))
                                            (let ((_%try-match363912363944%_
                                                   (lambda ()
                                                     (if (pair? _%body363910363920%_)
                                                         (let ((_%tl363917363939%_
                                                                (##cdr _%body363910363920%_))
                                                               (_%hd363916363937%_
                                                                (##car _%body363910363920%_)))
                                                           (if (null? _%tl363917363939%_)
                                                               (let ((_%expr363942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd363916363937%_))
                         (_%K363915363934%_ _%expr363942%_))
                       (_%else363913363928%_)))
                 (_%else363913363928%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body363910363920%_)
                                                  (_%K363918363948%_)
                                                  (_%try-match363912363944%_))))))
                                       (_%body363953%_
                                        (if (null? _%bind363898%_)
                                            _%body363951%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind363898%_
                                                         (cons _%body363951%_
                                                               '())))
                                             (gx#stx-source _%stx363884%_)))))
                                  (if (null? _%decls363897%_)
                                      _%body363953%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls363897%_
                                                   (cons _%body363953%_ '())))
                                       (gx#stx-source _%stx363884%_))))))
                             (_%E363901364044%_
                              (lambda ()
                                (if (gx#stx-pair? _%e363900363907%_)
                                    (let ((_%e363903363960%_
                                           (gx#syntax-e _%e363900363907%_)))
                                      (let ((_%hd363904363963%_
                                             (##car _%e363903363960%_))
                                            (_%tl363905363965%_
                                             (##cdr _%e363903363960%_)))
                                        (let* ((_%hd363968%_
                                                _%hd363904363963%_)
                                               (_%rest363970%_
                                                _%tl363905363965%_)
                                               (_%e363971363988%_ _%hd363968%_)
                                               (_%E363983363992%_
                                                (lambda ()
                                                  (if (null? _%bind363898%_)
                                                      (_%lp363894%_
                                                       _%rest363970%_
                                                       _%decls363897%_
                                                       _%bind363898%_
                                                       (cons _%hd363968%_
                                                             _%body363899%_))
                                                      (_%lp363894%_
                                                       _%rest363970%_
                                                       _%decls363897%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd363968%_ '()))
                     _%bind363898%_)
               _%body363899%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E363973364006%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e363971363988%_)
                                                      (let ((_%e363984363996%_
                                                             (gx#syntax-e
                                                              _%e363971363988%_)))
                                                        (let ((_%hd363985363999%_
                                                               (##car _%e363984363996%_))
                                                              (_%tl363986364001%_
                                                               (##cdr _%e363984363996%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd363985363999%_)
                           (gx#core-identifier=?
                            _%hd363985363999%_
                            '%#declare))
                      (let ((_%xdecls364004%_ _%tl363986364001%_))
                        (_%lp363894%_
                         _%rest363970%_
                         (gx#stx-foldr cons _%decls363897%_ _%xdecls364004%_)
                         _%bind363898%_
                         _%body363899%_))
                      (_%E363983363992%_))))
              (_%E363983363992%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E363972364040%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e363971363988%_)
                                                      (let ((_%e363974364010%_
                                                             (gx#syntax-e
                                                              _%e363971363988%_)))
                                                        (let ((_%hd363975364013%_
                                                               (##car _%e363974364010%_))
                                                              (_%tl363976364015%_
                                                               (##cdr _%e363974364010%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd363975364013%_)
                           (gx#core-identifier=?
                            _%hd363975364013%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl363976364015%_)
                          (let ((_%e363977364018%_
                                 (gx#syntax-e _%tl363976364015%_)))
                            (let ((_%hd363978364021%_
                                   (##car _%e363977364018%_))
                                  (_%tl363979364023%_
                                   (##cdr _%e363977364018%_)))
                              (let ((_%hd-bind364026%_ _%hd363978364021%_))
                                (if (gx#stx-pair? _%tl363979364023%_)
                                    (let ((_%e363980364028%_
                                           (gx#syntax-e _%tl363979364023%_)))
                                      (let ((_%hd363981364031%_
                                             (##car _%e363980364028%_))
                                            (_%tl363982364033%_
                                             (##cdr _%e363980364028%_)))
                                        (let* ((_%expr364036%_
                                                _%hd363981364031%_)
                                               (_%ignore-props364038%_
                                                _%tl363982364033%_))
                                          (_%lp363894%_
                                           _%rest363970%_
                                           _%decls363897%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind364026%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr364036%_)
                                                             '()))
                                                 _%bind363898%_)
                                           _%body363899%_))))
                                    (_%E363973364006%_)))))
                          (_%E363973364006%_))
                      (_%E363973364006%_))))
              (_%E363973364006%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E363972364040%_))))
                                    (_%E363902363956%_)))))
                        (_%E363901364044%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body363885%_)
            (gx#stx-source _%stx363884%_))
           _%expand-special363887%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx363822%_)
        (let* ((_%e363823363830%_ _%stx363822%_)
               (_%E363825363834%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e363823363830%_)))
               (_%E363824363880%_
                (lambda ()
                  (if (gx#stx-pair? _%e363823363830%_)
                      (let ((_%e363826363838%_
                             (gx#syntax-e _%e363823363830%_)))
                        (let ((_%hd363827363841%_ (##car _%e363826363838%_))
                              (_%tl363828363843%_ (##cdr _%e363826363838%_)))
                          (let ((_%body363846%_ _%tl363828363843%_))
                            (if (gx#stx-list? _%body363846%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl363848%_)
                                     (let* ((_%e363849363856%_ _%decl363848%_)
                                            (_%E363851363860%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e363849363856%_)))
                                            (_%E363850363876%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e363849363856%_)
                                                   (let ((_%e363852363864%_
                                                          (gx#syntax-e
                                                           _%e363849363856%_)))
                                                     (let ((_%hd363853363867%_
                                                            (##car _%e363852363864%_))
                                                           (_%tl363854363869%_
                                                            (##cdr _%e363852363864%_)))
                                                       (let* ((_%head363872%_
                                                               _%hd363853363867%_)
                                                              (_%args363874%_
                                                               _%tl363854363869%_))
                                                         (if (gx#stx-list?
                                                              _%args363874%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl363848%_)
                                                             (_%E363851363860%_)))))
                                                   (_%E363851363860%_)))))
                                       (_%E363850363876%_)))
                                   _%body363846%_))
                                 (gx#stx-source _%stx363822%_))
                                (_%E363825363834%_)))))
                      (_%E363825363834%_)))))
          (_%E363824363880%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx363726%_)
        (let* ((_%e363727363734%_ _%stx363726%_)
               (_%E363729363738%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e363727363734%_)))
               (_%E363728363818%_
                (lambda ()
                  (if (gx#stx-pair? _%e363727363734%_)
                      (let ((_%e363730363742%_
                             (gx#syntax-e _%e363727363734%_)))
                        (let ((_%hd363731363745%_ (##car _%e363730363742%_))
                              (_%tl363732363747%_ (##cdr _%e363730363742%_)))
                          (let ((_%body363750%_ _%tl363732363747%_))
                            (let _%lp363752%_ ((_%rest363754%_ _%body363750%_)
                                               (_%r363755%_ '()))
                              (let* ((_%e363756363770%_ _%rest363754%_)
                                     (_%E363768363774%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx363726%_)))
                                     (_%E363758363778%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e363756363770%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r363755%_))
                                             (gx#stx-source _%stx363726%_))
                                            (_%E363768363774%_))))
                                     (_%E363757363814%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e363756363770%_)
                                            (let ((_%e363759363782%_
                                                   (gx#syntax-e
                                                    _%e363756363770%_)))
                                              (let ((_%hd363760363785%_
                                                     (##car _%e363759363782%_))
                                                    (_%tl363761363787%_
                                                     (##cdr _%e363759363782%_)))
                                                (if (gx#stx-pair?
                                                     _%hd363760363785%_)
                                                    (let ((_%e363762363790%_
                                                           (gx#syntax-e
                                                            _%hd363760363785%_)))
                                                      (let ((_%hd363763363793%_
                                                             (##car _%e363762363790%_))
                                                            (_%tl363764363795%_
                                                             (##cdr _%e363762363790%_)))
                                                        (let ((_%id363798%_
                                                               _%hd363763363793%_))
                                                          (if (gx#stx-pair?
                                                               _%tl363764363795%_)
                                                              (let ((_%e363765363800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl363764363795%_)))
                        (let ((_%hd363766363803%_ (##car _%e363765363800%_))
                              (_%tl363767363805%_ (##cdr _%e363765363800%_)))
                          (let ((_%eid363808%_ _%hd363766363803%_))
                            (if (gx#stx-null? _%tl363767363805%_)
                                (let ((_%rest363810%_ _%tl363761363787%_))
                                  (if (and (gx#identifier? _%id363798%_)
                                           (gx#identifier? _%eid363808%_))
                                      (let ((_%eid363812%_
                                             (gx#stx-e _%eid363808%_)))
                                        (gx#core-bind-extern!__0
                                         _%id363798%_
                                         _%eid363812%_)
                                        (_%lp363752%_
                                         _%rest363810%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id363798%_)
                                                     (cons _%eid363812%_ '()))
                                               _%r363755%_)))
                                      (_%E363758363778%_)))
                                (_%E363758363778%_)))))
                      (_%E363758363778%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E363758363778%_))))
                                            (_%E363758363778%_)))))
                                (_%E363757363814%_))))))
                      (_%E363729363738%_)))))
          (_%E363728363818%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx363615%_)
        (let* ((_%e363616363642%_ _%stx363615%_)
               (_%E363631363646%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e363616363642%_)))
               (_%E363618363678%_
                (lambda ()
                  (if (gx#stx-pair? _%e363616363642%_)
                      (let ((_%e363632363650%_
                             (gx#syntax-e _%e363616363642%_)))
                        (let ((_%hd363633363653%_ (##car _%e363632363650%_))
                              (_%tl363634363655%_ (##cdr _%e363632363650%_)))
                          (if (gx#stx-pair? _%tl363634363655%_)
                              (let ((_%e363635363658%_
                                     (gx#syntax-e _%tl363634363655%_)))
                                (let ((_%hd363636363661%_
                                       (##car _%e363635363658%_))
                                      (_%tl363637363663%_
                                       (##cdr _%e363635363658%_)))
                                  (let ((_%hd363666%_ _%hd363636363661%_))
                                    (if (gx#stx-pair? _%tl363637363663%_)
                                        (let ((_%e363638363668%_
                                               (gx#syntax-e
                                                _%tl363637363663%_)))
                                          (let ((_%hd363639363671%_
                                                 (##car _%e363638363668%_))
                                                (_%tl363640363673%_
                                                 (##cdr _%e363638363668%_)))
                                            (let ((_%expr363676%_
                                                   _%hd363639363671%_))
                                              (if (gx#stx-null?
                                                   _%tl363640363673%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd363666%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd363666%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd363666%_)
                             (cons (gx#core-expand-expression _%expr363676%_)
                                   '())))
                 (gx#stx-source _%stx363615%_)))
              (_%E363631363646%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E363631363646%_)))))
                                        (_%E363631363646%_)))))
                              (_%E363631363646%_))))
                      (_%E363631363646%_))))
               (_%E363617363722%_
                (lambda ()
                  (if (gx#stx-pair? _%e363616363642%_)
                      (let ((_%e363619363682%_
                             (gx#syntax-e _%e363616363642%_)))
                        (let ((_%hd363620363685%_ (##car _%e363619363682%_))
                              (_%tl363621363687%_ (##cdr _%e363619363682%_)))
                          (if (gx#stx-pair? _%tl363621363687%_)
                              (let ((_%e363622363690%_
                                     (gx#syntax-e _%tl363621363687%_)))
                                (let ((_%hd363623363693%_
                                       (##car _%e363622363690%_))
                                      (_%tl363624363695%_
                                       (##cdr _%e363622363690%_)))
                                  (if (gx#stx-pair? _%hd363623363693%_)
                                      (let ((_%e363628363698%_
                                             (gx#syntax-e _%hd363623363693%_)))
                                        (let ((_%hd363629363701%_
                                               (##car _%e363628363698%_))
                                              (_%tl363630363703%_
                                               (##cdr _%e363628363698%_)))
                                          (let ((_%id363706%_
                                                 _%hd363629363701%_))
                                            (if (gx#stx-null?
                                                 _%tl363630363703%_)
                                                (if (gx#stx-pair?
                                                     _%tl363624363695%_)
                                                    (let ((_%e363625363708%_
                                                           (gx#syntax-e
                                                            _%tl363624363695%_)))
                                                      (let ((_%hd363626363711%_
                                                             (##car _%e363625363708%_))
                                                            (_%tl363627363713%_
                                                             (##cdr _%e363625363708%_)))
                                                        (let* ((_%expr363716%_
                                                                _%hd363626363711%_)
                                                               (_%props363718%_
                                                                _%tl363627363713%_))
                                                          (if (gx#identifier?
                                                               _%id363706%_)
                                                              (let ((_%bind363720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id363706%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind363720%_
                         _%props363718%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id363706%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr363716%_)
                                           '())))
                         (gx#stx-source _%stx363615%_)))
                      (_%E363618363678%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E363618363678%_))
                                                (_%E363618363678%_)))))
                                      (_%E363618363678%_))))
                              (_%E363618363678%_))))
                      (_%E363618363678%_)))))
          (_%E363617363722%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx363554%_)
        (let* ((_%e363555363568%_ _%stx363554%_)
               (_%E363557363572%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e363555363568%_)))
               (_%E363556363611%_
                (lambda ()
                  (if (gx#stx-pair? _%e363555363568%_)
                      (let ((_%e363558363576%_
                             (gx#syntax-e _%e363555363568%_)))
                        (let ((_%hd363559363579%_ (##car _%e363558363576%_))
                              (_%tl363560363581%_ (##cdr _%e363558363576%_)))
                          (if (gx#stx-pair? _%tl363560363581%_)
                              (let ((_%e363561363584%_
                                     (gx#syntax-e _%tl363560363581%_)))
                                (let ((_%hd363562363587%_
                                       (##car _%e363561363584%_))
                                      (_%tl363563363589%_
                                       (##cdr _%e363561363584%_)))
                                  (let ((_%id363592%_ _%hd363562363587%_))
                                    (if (gx#stx-pair? _%tl363563363589%_)
                                        (let ((_%e363564363594%_
                                               (gx#syntax-e
                                                _%tl363563363589%_)))
                                          (let ((_%hd363565363597%_
                                                 (##car _%e363564363594%_))
                                                (_%tl363566363599%_
                                                 (##cdr _%e363564363594%_)))
                                            (let* ((_%binding-id363602%_
                                                    _%hd363565363597%_)
                                                   (_%props363604%_
                                                    _%tl363566363599%_))
                                              (if (and (gx#identifier?
                                                        _%id363592%_)
                                                       (gx#identifier?
                                                        _%binding-id363602%_)
                                                       (gx#stx-list?
                                                        _%props363604%_))
                                                  (let* ((_%eid363606%_
                                                          (gx#stx-e
                                                           _%binding-id363602%_))
                                                         (_%bind363608%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id363592%_
                                                           _%eid363606%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind363608%_
                                                     _%props363604%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id363592%_)
                         (cons _%eid363606%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E363557363572%_)))))
                                        (_%E363557363572%_)))))
                              (_%E363557363572%_))))
                      (_%E363557363572%_)))))
          (_%E363556363611%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind363489%_ _%props363490%_)
        (letrec ((_%eval-prop363492%_
                  (lambda (_%prop363552%_)
                    (gx#eval-expression+1 _%prop363552%_))))
          (let _%loop363494%_ ((_%rest363496%_ _%props363490%_)
                               (_%props363497%_ '()))
            (let* ((_%e363498363509%_ _%rest363496%_)
                   (_%E363507363513%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e363498363509%_)))
                   (_%E363500363517%_
                    (lambda ()
                      (if (gx#stx-null? _%e363498363509%_)
                          (if (null? _%props363497%_)
                              '#!void
                              (##structure-set!
                               _%bind363489%_
                               (reverse! _%props363497%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%E363507363513%_))))
                   (_%E363499363548%_
                    (lambda ()
                      (if (gx#stx-pair? _%e363498363509%_)
                          (let ((_%e363501363521%_
                                 (gx#syntax-e _%e363498363509%_)))
                            (let ((_%hd363502363524%_
                                   (##car _%e363501363521%_))
                                  (_%tl363503363526%_
                                   (##cdr _%e363501363521%_)))
                              (let ((_%key363529%_ _%hd363502363524%_))
                                (if (gx#stx-pair? _%tl363503363526%_)
                                    (let ((_%e363504363531%_
                                           (gx#syntax-e _%tl363503363526%_)))
                                      (let ((_%hd363505363534%_
                                             (##car _%e363504363531%_))
                                            (_%tl363506363536%_
                                             (##cdr _%e363504363531%_)))
                                        (let* ((_%prop363539%_
                                                _%hd363505363534%_)
                                               (_%rest363541%_
                                                _%tl363506363536%_))
                                          (if (gx#stx-keyword? _%key363529%_)
                                              (let* ((_%key363543%_
                                                      (gx#stx-e _%key363529%_))
                                                     (_%$e363545%_
                                                      _%key363543%_))
                                                (if (eq? 'macro: _%$e363545%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind363489%_
                                                       (if (gx#identifier?
                                                            _%prop363539%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop363539%_)
                                                           (gx#eval-expression+1
                                                            _%prop363539%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop363494%_
                                                       _%rest363541%_
                                                       _%props363497%_))
                                                    (if (eq? 'type:
                                                             _%$e363545%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind363489%_
                                                           (gx#eval-expression+1
                                                            _%prop363539%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop363494%_
                                                           _%rest363541%_
                                                           _%props363497%_))
                                                        (_%loop363494%_
                                                         _%rest363541%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop363539%_)
                                                               (cons _%key363543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props363497%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E363500363517%_)))))
                                    (_%E363500363517%_)))))
                          (_%E363500363517%_)))))
              (_%E363499363548%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx363432%_)
        (let* ((_%e363433363446%_ _%stx363432%_)
               (_%E363435363450%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e363433363446%_)))
               (_%E363434363485%_
                (lambda ()
                  (if (gx#stx-pair? _%e363433363446%_)
                      (let ((_%e363436363454%_
                             (gx#syntax-e _%e363433363446%_)))
                        (let ((_%hd363437363457%_ (##car _%e363436363454%_))
                              (_%tl363438363459%_ (##cdr _%e363436363454%_)))
                          (if (gx#stx-pair? _%tl363438363459%_)
                              (let ((_%e363439363462%_
                                     (gx#syntax-e _%tl363438363459%_)))
                                (let ((_%hd363440363465%_
                                       (##car _%e363439363462%_))
                                      (_%tl363441363467%_
                                       (##cdr _%e363439363462%_)))
                                  (let ((_%id363470%_ _%hd363440363465%_))
                                    (if (gx#stx-pair? _%tl363441363467%_)
                                        (let ((_%e363442363472%_
                                               (gx#syntax-e
                                                _%tl363441363467%_)))
                                          (let ((_%hd363443363475%_
                                                 (##car _%e363442363472%_))
                                                (_%tl363444363477%_
                                                 (##cdr _%e363442363472%_)))
                                            (let ((_%expr363480%_
                                                   _%hd363443363475%_))
                                              (if (gx#stx-null?
                                                   _%tl363444363477%_)
                                                  (if (gx#identifier?
                                                       _%id363470%_)
                                                      (let ((_g364646_
                                                             (gx#core-expand-expression+1
                                                              _%expr363480%_)))
                                                        (begin
                                                          (let ((_g364647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g364646_)
                             (##values-length _g364646_)
                             1)))
                    (if (not (##fx= _g364647_ 2))
                        (error "Context expects 2 values" _g364647_)))
                  (let ((_%e-stx363482%_ (##values-ref _g364646_ 0))
                        (_%e363483%_ (##values-ref _g364646_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id363470%_ _%e363483%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id363470%_)
                                   (cons _%e-stx363482%_ '())))
                       (gx#stx-source _%stx363432%_))))))
              (_%E363435363450%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E363435363450%_)))))
                                        (_%E363435363450%_)))))
                              (_%E363435363450%_))))
                      (_%E363435363450%_)))))
          (_%E363434363485%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx363376%_)
        (let* ((_%e363377363390%_ _%stx363376%_)
               (_%E363379363394%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e363377363390%_)))
               (_%E363378363428%_
                (lambda ()
                  (if (gx#stx-pair? _%e363377363390%_)
                      (let ((_%e363380363398%_
                             (gx#syntax-e _%e363377363390%_)))
                        (let ((_%hd363381363401%_ (##car _%e363380363398%_))
                              (_%tl363382363403%_ (##cdr _%e363380363398%_)))
                          (if (gx#stx-pair? _%tl363382363403%_)
                              (let ((_%e363383363406%_
                                     (gx#syntax-e _%tl363382363403%_)))
                                (let ((_%hd363384363409%_
                                       (##car _%e363383363406%_))
                                      (_%tl363385363411%_
                                       (##cdr _%e363383363406%_)))
                                  (let ((_%id363414%_ _%hd363384363409%_))
                                    (if (gx#stx-pair? _%tl363385363411%_)
                                        (let ((_%e363386363416%_
                                               (gx#syntax-e
                                                _%tl363385363411%_)))
                                          (let ((_%hd363387363419%_
                                                 (##car _%e363386363416%_))
                                                (_%tl363388363421%_
                                                 (##cdr _%e363386363416%_)))
                                            (let ((_%alias-id363424%_
                                                   _%hd363387363419%_))
                                              (if (gx#stx-null?
                                                   _%tl363388363421%_)
                                                  (if (and (gx#identifier?
                                                            _%id363414%_)
                                                           (gx#identifier?
                                                            _%alias-id363424%_))
                                                      (let ((_%alias-id363426%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id363424%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id363414%_
                                                         _%alias-id363426%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id363414%_)
                             (cons _%alias-id363426%_ '())))))
              (_%E363379363394%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E363379363394%_)))))
                                        (_%E363379363394%_)))))
                              (_%E363379363394%_))))
                      (_%E363379363394%_)))))
          (_%E363378363428%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx363319%_ _%wrap?363320%_)
        (let* ((_%e363321363331%_ _%stx363319%_)
               (_%E363323363335%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e363321363331%_)))
               (_%E363322363362%_
                (lambda ()
                  (if (gx#stx-pair? _%e363321363331%_)
                      (let ((_%e363324363339%_
                             (gx#syntax-e _%e363321363331%_)))
                        (let ((_%hd363325363342%_ (##car _%e363324363339%_))
                              (_%tl363326363344%_ (##cdr _%e363324363339%_)))
                          (if (gx#stx-pair? _%tl363326363344%_)
                              (let ((_%e363327363347%_
                                     (gx#syntax-e _%tl363326363344%_)))
                                (let ((_%hd363328363350%_
                                       (##car _%e363327363347%_))
                                      (_%tl363329363352%_
                                       (##cdr _%e363327363347%_)))
                                  (let* ((_%hd363355%_ _%hd363328363350%_)
                                         (_%body363357%_ _%tl363329363352%_))
                                    (if (gx#core-bind-values? _%hd363355%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd363355%_)
                                           (let ((_%body363360%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd363355%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx363319%_
                                                               _%body363357%_)
                                                              '()))))
                                             (if _%wrap?363320%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body363360%_)
                                                  (gx#stx-source
                                                   _%stx363319%_))
                                                 _%body363360%_)))
                                         gx#current-expander-context
                                         (let ((__obj364629
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj364629)
                                           __obj364629))
                                        (_%E363323363335%_)))))
                              (_%E363323363335%_))))
                      (_%E363323363335%_)))))
          (_%E363322363362%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx363369%_)
        (let ((_%wrap?363371%_ '#t))
          (gx#core-expand-lambda%__% _%stx363369%_ _%wrap?363371%_))))
    (define gx#core-expand-lambda%
      (lambda _g364648_
        (let ((_g364649_ (##length _g364648_)))
          (cond ((##fx= _g364649_ 1)
                 (apply gx#core-expand-lambda%__0 _g364648_))
                ((##fx= _g364649_ 2)
                 (apply gx#core-expand-lambda%__% _g364648_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g364648_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx363283%_)
        (let* ((_%e363284363291%_ _%stx363283%_)
               (_%E363286363295%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e363284363291%_)))
               (_%E363285363314%_
                (lambda ()
                  (if (gx#stx-pair? _%e363284363291%_)
                      (let ((_%e363287363299%_
                             (gx#syntax-e _%e363284363291%_)))
                        (let ((_%hd363288363302%_ (##car _%e363287363299%_))
                              (_%tl363289363304%_ (##cdr _%e363287363299%_)))
                          (let ((_%clauses363307%_ _%tl363289363304%_))
                            (if (gx#stx-list? _%clauses363307%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause363309%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause363309%_)
                                       (let ((_%$e363311%_
                                              (gx#stx-source
                                               _%clause363309%_)))
                                         (if _%$e363311%_
                                             _%$e363311%_
                                             (gx#stx-source _%stx363283%_))))
                                      '#f))
                                   _%clauses363307%_))
                                 (gx#stx-source _%stx363283%_))
                                (_%E363286363295%_)))))
                      (_%E363286363295%_)))))
          (_%E363285363314%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx363237%_)
        (let* ((_%e363238363248%_ _%stx363237%_)
               (_%E363240363252%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e363238363248%_)))
               (_%E363239363279%_
                (lambda ()
                  (if (gx#stx-pair? _%e363238363248%_)
                      (let ((_%e363241363256%_
                             (gx#syntax-e _%e363238363248%_)))
                        (let ((_%hd363242363259%_ (##car _%e363241363256%_))
                              (_%tl363243363261%_ (##cdr _%e363241363256%_)))
                          (if (gx#stx-pair? _%tl363243363261%_)
                              (let ((_%e363244363264%_
                                     (gx#syntax-e _%tl363243363261%_)))
                                (let ((_%hd363245363267%_
                                       (##car _%e363244363264%_))
                                      (_%tl363246363269%_
                                       (##cdr _%e363244363264%_)))
                                  (let* ((_%hd363272%_ _%hd363245363267%_)
                                         (_%body363274%_ _%tl363246363269%_))
                                    (if (gx#core-expand-let-bind? _%hd363272%_)
                                        (let ((_%expressions363276%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd363272%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd363272%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd363272%_
                                                           _%expressions363276%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx363237%_
                         _%body363274%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx363237%_)))
                                           gx#current-expander-context
                                           (let ((__obj364630
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj364630)
                                             __obj364630)))
                                        (_%E363240363252%_)))))
                              (_%E363240363252%_))))
                      (_%E363240363252%_)))))
          (_%E363239363279%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx363182%_ _%form363183%_)
        (let* ((_%e363184363194%_ _%stx363182%_)
               (_%E363186363198%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e363184363194%_)))
               (_%E363185363223%_
                (lambda ()
                  (if (gx#stx-pair? _%e363184363194%_)
                      (let ((_%e363187363202%_
                             (gx#syntax-e _%e363184363194%_)))
                        (let ((_%hd363188363205%_ (##car _%e363187363202%_))
                              (_%tl363189363207%_ (##cdr _%e363187363202%_)))
                          (if (gx#stx-pair? _%tl363189363207%_)
                              (let ((_%e363190363210%_
                                     (gx#syntax-e _%tl363189363207%_)))
                                (let ((_%hd363191363213%_
                                       (##car _%e363190363210%_))
                                      (_%tl363192363215%_
                                       (##cdr _%e363190363210%_)))
                                  (let* ((_%hd363218%_ _%hd363191363213%_)
                                         (_%body363220%_ _%tl363192363215%_))
                                    (if (gx#core-expand-let-bind? _%hd363218%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd363218%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form363183%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd363218%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd363218%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx363182%_
                                                               _%body363220%_)
                                                              '())))
                                            (gx#stx-source _%stx363182%_)))
                                         gx#current-expander-context
                                         (let ((__obj364631
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj364631)
                                           __obj364631))
                                        (_%E363186363198%_)))))
                              (_%E363186363198%_))))
                      (_%E363186363198%_)))))
          (_%E363185363223%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx363230%_)
        (let ((_%form363232%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx363230%_ _%form363232%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g364650_
        (let ((_g364651_ (##length _g364650_)))
          (cond ((##fx= _g364651_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g364650_))
                ((##fx= _g364651_ 2)
                 (apply gx#core-expand-letrec-values%__% _g364650_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g364650_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx363179%_)
        (gx#core-expand-letrec-values%__% _%stx363179%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx363136%_)
        (if (gx#stx-list? _%stx363136%_)
            (gx#stx-andmap
             (lambda (_%bind363138%_)
               (let* ((_%e363139363149%_ _%bind363138%_)
                      (_%E363141363153%_ (lambda () '#f))
                      (_%E363140363175%_
                       (lambda ()
                         (if (gx#stx-pair? _%e363139363149%_)
                             (let ((_%e363142363157%_
                                    (gx#syntax-e _%e363139363149%_)))
                               (let ((_%hd363143363160%_
                                      (##car _%e363142363157%_))
                                     (_%tl363144363162%_
                                      (##cdr _%e363142363157%_)))
                                 (let ((_%hd363165%_ _%hd363143363160%_))
                                   (if (gx#stx-pair? _%tl363144363162%_)
                                       (let ((_%e363145363167%_
                                              (gx#syntax-e
                                               _%tl363144363162%_)))
                                         (let ((_%hd363146363170%_
                                                (##car _%e363145363167%_))
                                               (_%tl363147363172%_
                                                (##cdr _%e363145363167%_)))
                                           (if (gx#stx-null?
                                                _%tl363147363172%_)
                                               (gx#core-bind-values?
                                                _%hd363165%_)
                                               (_%E363141363153%_))))
                                       (_%E363141363153%_)))))
                             (_%E363141363153%_)))))
                 (_%E363140363175%_)))
             _%stx363136%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind363095%_)
        (let* ((_%e363096363106%_ _%bind363095%_)
               (_%E363098363110%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e363096363106%_)))
               (_%E363097363132%_
                (lambda ()
                  (if (gx#stx-pair? _%e363096363106%_)
                      (let ((_%e363099363114%_
                             (gx#syntax-e _%e363096363106%_)))
                        (let ((_%hd363100363117%_ (##car _%e363099363114%_))
                              (_%tl363101363119%_ (##cdr _%e363099363114%_)))
                          (if (gx#stx-pair? _%tl363101363119%_)
                              (let ((_%e363102363122%_
                                     (gx#syntax-e _%tl363101363119%_)))
                                (let ((_%hd363103363125%_
                                       (##car _%e363102363122%_))
                                      (_%tl363104363127%_
                                       (##cdr _%e363102363122%_)))
                                  (let ((_%expr363130%_ _%hd363103363125%_))
                                    (if (gx#stx-null? _%tl363104363127%_)
                                        (gx#core-expand-expression
                                         _%expr363130%_)
                                        (_%E363098363110%_)))))
                              (_%E363098363110%_))))
                      (_%E363098363110%_)))))
          (_%E363097363132%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind363054%_)
        (let* ((_%e363055363065%_ _%bind363054%_)
               (_%E363057363069%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e363055363065%_)))
               (_%E363056363091%_
                (lambda ()
                  (if (gx#stx-pair? _%e363055363065%_)
                      (let ((_%e363058363073%_
                             (gx#syntax-e _%e363055363065%_)))
                        (let ((_%hd363059363076%_ (##car _%e363058363073%_))
                              (_%tl363060363078%_ (##cdr _%e363058363073%_)))
                          (let ((_%hd363081%_ _%hd363059363076%_))
                            (if (gx#stx-pair? _%tl363060363078%_)
                                (let ((_%e363061363083%_
                                       (gx#syntax-e _%tl363060363078%_)))
                                  (let ((_%hd363062363086%_
                                         (##car _%e363061363083%_))
                                        (_%tl363063363088%_
                                         (##cdr _%e363061363083%_)))
                                    (if (gx#stx-null? _%tl363063363088%_)
                                        (gx#core-bind-values!__0 _%hd363081%_)
                                        (_%E363057363069%_))))
                                (_%E363057363069%_)))))
                      (_%E363057363069%_)))))
          (_%E363056363091%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind363012%_ _%expr363013%_)
        (let* ((_%e363014363024%_ _%bind363012%_)
               (_%E363016363028%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e363014363024%_)))
               (_%E363015363050%_
                (lambda ()
                  (if (gx#stx-pair? _%e363014363024%_)
                      (let ((_%e363017363032%_
                             (gx#syntax-e _%e363014363024%_)))
                        (let ((_%hd363018363035%_ (##car _%e363017363032%_))
                              (_%tl363019363037%_ (##cdr _%e363017363032%_)))
                          (let ((_%hd363040%_ _%hd363018363035%_))
                            (if (gx#stx-pair? _%tl363019363037%_)
                                (let ((_%e363020363042%_
                                       (gx#syntax-e _%tl363019363037%_)))
                                  (let ((_%hd363021363045%_
                                         (##car _%e363020363042%_))
                                        (_%tl363022363047%_
                                         (##cdr _%e363020363042%_)))
                                    (if (gx#stx-null? _%tl363022363047%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd363040%_)
                                              (cons _%expr363013%_ '()))
                                        (_%E363016363028%_))))
                                (_%E363016363028%_)))))
                      (_%E363016363028%_)))))
          (_%E363015363050%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx362966%_)
        (let* ((_%e362967362977%_ _%stx362966%_)
               (_%E362969362981%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e362967362977%_)))
               (_%E362968363008%_
                (lambda ()
                  (if (gx#stx-pair? _%e362967362977%_)
                      (let ((_%e362970362985%_
                             (gx#syntax-e _%e362967362977%_)))
                        (let ((_%hd362971362988%_ (##car _%e362970362985%_))
                              (_%tl362972362990%_ (##cdr _%e362970362985%_)))
                          (if (gx#stx-pair? _%tl362972362990%_)
                              (let ((_%e362973362993%_
                                     (gx#syntax-e _%tl362972362990%_)))
                                (let ((_%hd362974362996%_
                                       (##car _%e362973362993%_))
                                      (_%tl362975362998%_
                                       (##cdr _%e362973362993%_)))
                                  (let* ((_%hd363001%_ _%hd362974362996%_)
                                         (_%body363003%_ _%tl362975362998%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd363001%_)
                                        (let ((_%expanders363005%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd363001%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd363001%_
                                              _%expanders363005%_)
                                             (gx#core-expand-local-block
                                              _%stx362966%_
                                              _%body363003%_))
                                           gx#current-expander-context
                                           (let ((__obj364632
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj364632)
                                             __obj364632)))
                                        (_%E362969362981%_)))))
                              (_%E362969362981%_))))
                      (_%E362969362981%_)))))
          (_%E362968363008%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx362915%_)
        (let* ((_%e362916362926%_ _%stx362915%_)
               (_%E362918362930%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e362916362926%_)))
               (_%E362917362962%_
                (lambda ()
                  (if (gx#stx-pair? _%e362916362926%_)
                      (let ((_%e362919362934%_
                             (gx#syntax-e _%e362916362926%_)))
                        (let ((_%hd362920362937%_ (##car _%e362919362934%_))
                              (_%tl362921362939%_ (##cdr _%e362919362934%_)))
                          (if (gx#stx-pair? _%tl362921362939%_)
                              (let ((_%e362922362942%_
                                     (gx#syntax-e _%tl362921362939%_)))
                                (let ((_%hd362923362945%_
                                       (##car _%e362922362942%_))
                                      (_%tl362924362947%_
                                       (##cdr _%e362922362942%_)))
                                  (let* ((_%hd362950%_ _%hd362923362945%_)
                                         (_%body362952%_ _%tl362924362947%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd362950%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd362950%_
                                            (make-list
                                             (gx#stx-length _%hd362950%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g362954362957%_
                                                     _%g362955362959%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g362954362957%_
                                               _%g362955362959%_
                                               '#t))
                                            _%hd362950%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd362950%_))
                                           (gx#core-expand-local-block
                                            _%stx362915%_
                                            _%body362952%_))
                                         gx#current-expander-context
                                         (let ((__obj364633
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj364633)
                                           __obj364633))
                                        (_%E362918362930%_)))))
                              (_%E362918362930%_))))
                      (_%E362918362930%_)))))
          (_%E362917362962%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx362872%_)
        (if (gx#stx-list? _%stx362872%_)
            (gx#stx-andmap
             (lambda (_%bind362874%_)
               (let* ((_%e362875362885%_ _%bind362874%_)
                      (_%E362877362889%_ (lambda () '#f))
                      (_%E362876362911%_
                       (lambda ()
                         (if (gx#stx-pair? _%e362875362885%_)
                             (let ((_%e362878362893%_
                                    (gx#syntax-e _%e362875362885%_)))
                               (let ((_%hd362879362896%_
                                      (##car _%e362878362893%_))
                                     (_%tl362880362898%_
                                      (##cdr _%e362878362893%_)))
                                 (let ((_%hd362901%_ _%hd362879362896%_))
                                   (if (gx#stx-pair? _%tl362880362898%_)
                                       (let ((_%e362881362903%_
                                              (gx#syntax-e
                                               _%tl362880362898%_)))
                                         (let ((_%hd362882362906%_
                                                (##car _%e362881362903%_))
                                               (_%tl362883362908%_
                                                (##cdr _%e362881362903%_)))
                                           (if (gx#stx-null?
                                                _%tl362883362908%_)
                                               (gx#identifier? _%hd362901%_)
                                               (_%E362877362889%_))))
                                       (_%E362877362889%_)))))
                             (_%E362877362889%_)))))
                 (_%E362876362911%_)))
             _%stx362872%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind362828%_)
        (let* ((_%e362829362839%_ _%bind362828%_)
               (_%E362831362843%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e362829362839%_)))
               (_%E362830362868%_
                (lambda ()
                  (if (gx#stx-pair? _%e362829362839%_)
                      (let ((_%e362832362847%_
                             (gx#syntax-e _%e362829362839%_)))
                        (let ((_%hd362833362850%_ (##car _%e362832362847%_))
                              (_%tl362834362852%_ (##cdr _%e362832362847%_)))
                          (if (gx#stx-pair? _%tl362834362852%_)
                              (let ((_%e362835362855%_
                                     (gx#syntax-e _%tl362834362852%_)))
                                (let ((_%hd362836362858%_
                                       (##car _%e362835362855%_))
                                      (_%tl362837362860%_
                                       (##cdr _%e362835362855%_)))
                                  (let ((_%expr362863%_ _%hd362836362858%_))
                                    (if (gx#stx-null? _%tl362837362860%_)
                                        (let ((_g364652_
                                               (gx#core-expand-expression+1
                                                _%expr362863%_)))
                                          (begin
                                            (let ((_g364653_
                                                   (if (##values? _g364652_)
                                                       (##values-length
                                                        _g364652_)
                                                       1)))
                                              (if (not (##fx= _g364653_ 2))
                                                  (error "Context expects 2 values"
                                                         _g364653_)))
                                            (let ((_%_362865%_
                                                   (##values-ref _g364652_ 0))
                                                  (_%e362866%_
                                                   (##values-ref _g364652_ 1)))
                                              _%e362866%_)))
                                        (_%E362831362843%_)))))
                              (_%E362831362843%_))))
                      (_%E362831362843%_)))))
          (_%E362830362868%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind362773%_ _%e362774%_ _%rebind?362775%_)
        (let* ((_%e362776362786%_ _%bind362773%_)
               (_%E362778362790%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e362776362786%_)))
               (_%E362777362812%_
                (lambda ()
                  (if (gx#stx-pair? _%e362776362786%_)
                      (let ((_%e362779362794%_
                             (gx#syntax-e _%e362776362786%_)))
                        (let ((_%hd362780362797%_ (##car _%e362779362794%_))
                              (_%tl362781362799%_ (##cdr _%e362779362794%_)))
                          (let ((_%id362802%_ _%hd362780362797%_))
                            (if (gx#stx-pair? _%tl362781362799%_)
                                (let ((_%e362782362804%_
                                       (gx#syntax-e _%tl362781362799%_)))
                                  (let ((_%hd362783362807%_
                                         (##car _%e362782362804%_))
                                        (_%tl362784362809%_
                                         (##cdr _%e362782362804%_)))
                                    (if (gx#stx-null? _%tl362784362809%_)
                                        (gx#core-bind-syntax!__1
                                         _%id362802%_
                                         _%e362774%_
                                         _%rebind?362775%_)
                                        (_%E362778362790%_))))
                                (_%E362778362790%_)))))
                      (_%E362778362790%_)))))
          (_%E362777362812%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind362819%_ _%e362820%_)
        (let ((_%rebind?362822%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind362819%_
           _%e362820%_
           _%rebind?362822%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g364654_
        (let ((_g364655_ (##length _g364654_)))
          (cond ((##fx= _g364655_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g364654_))
                ((##fx= _g364655_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g364654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g364654_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx362731%_)
        (let* ((_%e362732362742%_ _%stx362731%_)
               (_%E362734362746%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e362732362742%_)))
               (_%E362733362768%_
                (lambda ()
                  (if (gx#stx-pair? _%e362732362742%_)
                      (let ((_%e362735362750%_
                             (gx#syntax-e _%e362732362742%_)))
                        (let ((_%hd362736362753%_ (##car _%e362735362750%_))
                              (_%tl362737362755%_ (##cdr _%e362735362750%_)))
                          (if (gx#stx-pair? _%tl362737362755%_)
                              (let ((_%e362738362758%_
                                     (gx#syntax-e _%tl362737362755%_)))
                                (let ((_%hd362739362761%_
                                       (##car _%e362738362758%_))
                                      (_%tl362740362763%_
                                       (##cdr _%e362738362758%_)))
                                  (let ((_%expr362766%_ _%hd362739362761%_))
                                    (if (gx#stx-null? _%tl362740362763%_)
                                        (gx#core-expand-expression
                                         _%expr362766%_)
                                        (_%E362734362746%_)))))
                              (_%E362734362746%_))))
                      (_%E362734362746%_)))))
          (_%E362733362768%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx362690%_)
        (let* ((_%e362691362701%_ _%stx362690%_)
               (_%E362693362705%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e362691362701%_)))
               (_%E362692362727%_
                (lambda ()
                  (if (gx#stx-pair? _%e362691362701%_)
                      (let ((_%e362694362709%_
                             (gx#syntax-e _%e362691362701%_)))
                        (let ((_%hd362695362712%_ (##car _%e362694362709%_))
                              (_%tl362696362714%_ (##cdr _%e362694362709%_)))
                          (if (gx#stx-pair? _%tl362696362714%_)
                              (let ((_%e362697362717%_
                                     (gx#syntax-e _%tl362696362714%_)))
                                (let ((_%hd362698362720%_
                                       (##car _%e362697362717%_))
                                      (_%tl362699362722%_
                                       (##cdr _%e362697362717%_)))
                                  (let ((_%e362725%_ _%hd362698362720%_))
                                    (if (gx#stx-null? _%tl362699362722%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e362725%_)
                                                     '()))
                                         (gx#stx-source _%stx362690%_))
                                        (_%E362693362705%_)))))
                              (_%E362693362705%_))))
                      (_%E362693362705%_)))))
          (_%E362692362727%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx362649%_)
        (let* ((_%e362650362660%_ _%stx362649%_)
               (_%E362652362664%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e362650362660%_)))
               (_%E362651362686%_
                (lambda ()
                  (if (gx#stx-pair? _%e362650362660%_)
                      (let ((_%e362653362668%_
                             (gx#syntax-e _%e362650362660%_)))
                        (let ((_%hd362654362671%_ (##car _%e362653362668%_))
                              (_%tl362655362673%_ (##cdr _%e362653362668%_)))
                          (if (gx#stx-pair? _%tl362655362673%_)
                              (let ((_%e362656362676%_
                                     (gx#syntax-e _%tl362655362673%_)))
                                (let ((_%hd362657362679%_
                                       (##car _%e362656362676%_))
                                      (_%tl362658362681%_
                                       (##cdr _%e362656362676%_)))
                                  (let ((_%e362684%_ _%hd362657362679%_))
                                    (if (gx#stx-null? _%tl362658362681%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e362684%_)
                                                     '()))
                                         (gx#stx-source _%stx362649%_))
                                        (_%E362652362664%_)))))
                              (_%E362652362664%_))))
                      (_%E362652362664%_)))))
          (_%E362651362686%_))))
    (define gx#core-expand-call%
      (lambda (_%stx362543%_)
        (letrec ((_%expand-runtime-call362545%_
                  (lambda (_%rator-expr362646%_ _%args362647%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr362646%_
                      (gx#stx-map1 gx#core-expand-expression _%args362647%_))
                     (gx#stx-source _%stx362543%_)))))
          (let* ((_%e362546362556%_ _%stx362543%_)
                 (_%E362548362560%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e362546362556%_)))
                 (_%E362547362642%_
                  (lambda ()
                    (if (gx#stx-pair? _%e362546362556%_)
                        (let ((_%e362549362564%_
                               (gx#syntax-e _%e362546362556%_)))
                          (let ((_%hd362550362567%_ (##car _%e362549362564%_))
                                (_%tl362551362569%_ (##cdr _%e362549362564%_)))
                            (if (gx#stx-pair? _%tl362551362569%_)
                                (let ((_%e362552362572%_
                                       (gx#syntax-e _%tl362551362569%_)))
                                  (let ((_%hd362553362575%_
                                         (##car _%e362552362572%_))
                                        (_%tl362554362577%_
                                         (##cdr _%e362552362572%_)))
                                    (let* ((_%rator362580%_ _%hd362553362575%_)
                                           (_%args362582%_ _%tl362554362577%_))
                                      (if (gx#stx-list? _%args362582%_)
                                          (let* ((_%rator-expr362584%_
                                                  (gx#core-expand-expression
                                                   _%rator362580%_))
                                                 (_%e362585362595%_
                                                  _%rator-expr362584%_)
                                                 (_%E362587362599%_
                                                  (lambda ()
                                                    (_%expand-runtime-call362545%_
                                                     _%rator-expr362584%_
                                                     _%args362582%_)))
                                                 (_%E362586362638%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e362585362595%_)
                                                        (let ((_%e362588362603%_
                                                               (gx#syntax-e
                                                                _%e362585362595%_)))
                                                          (let ((_%hd362589362606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e362588362603%_))
                        (_%tl362590362608%_ (##cdr _%e362588362603%_)))
                    (if (and (gx#identifier? _%hd362589362606%_)
                             (gx#core-identifier=? _%hd362589362606%_ '%#ref))
                        (if (gx#stx-pair? _%tl362590362608%_)
                            (let ((_%e362591362611%_
                                   (gx#syntax-e _%tl362590362608%_)))
                              (let ((_%hd362592362614%_
                                     (##car _%e362591362611%_))
                                    (_%tl362593362616%_
                                     (##cdr _%e362591362611%_)))
                                (let ((_%id362619%_ _%hd362592362614%_))
                                  (if (gx#stx-null? _%tl362593362616%_)
                                      (let ((_%$e362621%_
                                             (gx#resolve-identifier__0
                                              _%id362619%_)))
                                        (if _%$e362621%_
                                            ((lambda (_%bind362624%_)
                                               (let _%again362626%_ ((_%bind362628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind362624%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e362630%_
                                                        (if (##structure-instance-of?
                                                             _%bind362628%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind362628%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e362630%_
                                                       ((lambda (_%macro362633%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons _%macro362633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%args362582%_)
                    (gx#stx-source _%stx362543%_))))
                _%$e362630%_)
               (if (##structure-direct-instance-of?
                    _%bind362628%_
                    'gx#import-binding::t)
                   (_%again362626%_
                    (##unchecked-structure-ref _%bind362628%_ '5 '#f '#f))
                   (_%expand-runtime-call362545%_
                    _%rator-expr362584%_
                    _%args362582%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e362621%_)
                                            (_%expand-runtime-call362545%_
                                             _%rator-expr362584%_
                                             _%args362582%_)))
                                      (_%E362587362599%_)))))
                            (_%E362587362599%_))
                        (_%E362587362599%_))))
                (_%E362587362599%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E362586362638%_))
                                          (_%E362548362560%_)))))
                                (_%E362548362560%_))))
                        (_%E362548362560%_)))))
            (_%E362547362642%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx362476%_)
        (let* ((_%e362477362493%_ _%stx362476%_)
               (_%E362479362497%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e362477362493%_)))
               (_%E362478362539%_
                (lambda ()
                  (if (gx#stx-pair? _%e362477362493%_)
                      (let ((_%e362480362501%_
                             (gx#syntax-e _%e362477362493%_)))
                        (let ((_%hd362481362504%_ (##car _%e362480362501%_))
                              (_%tl362482362506%_ (##cdr _%e362480362501%_)))
                          (if (gx#stx-pair? _%tl362482362506%_)
                              (let ((_%e362483362509%_
                                     (gx#syntax-e _%tl362482362506%_)))
                                (let ((_%hd362484362512%_
                                       (##car _%e362483362509%_))
                                      (_%tl362485362514%_
                                       (##cdr _%e362483362509%_)))
                                  (let ((_%test362517%_ _%hd362484362512%_))
                                    (if (gx#stx-pair? _%tl362485362514%_)
                                        (let ((_%e362486362519%_
                                               (gx#syntax-e
                                                _%tl362485362514%_)))
                                          (let ((_%hd362487362522%_
                                                 (##car _%e362486362519%_))
                                                (_%tl362488362524%_
                                                 (##cdr _%e362486362519%_)))
                                            (let ((_%K362527%_
                                                   _%hd362487362522%_))
                                              (if (gx#stx-pair?
                                                   _%tl362488362524%_)
                                                  (let ((_%e362489362529%_
                                                         (gx#syntax-e
                                                          _%tl362488362524%_)))
                                                    (let ((_%hd362490362532%_
                                                           (##car _%e362489362529%_))
                                                          (_%tl362491362534%_
                                                           (##cdr _%e362489362529%_)))
                                                      (let ((_%E362537%_
                                                             _%hd362490362532%_))
                                                        (if (gx#stx-null?
                                                             _%tl362491362534%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test362517%_)
                                 (cons (gx#core-expand-expression _%K362527%_)
                                       (cons (gx#core-expand-expression
                                              _%E362537%_)
                                             '()))))
                     (gx#stx-source _%stx362476%_))
                    (_%E362479362497%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E362479362497%_)))))
                                        (_%E362479362497%_)))))
                              (_%E362479362497%_))))
                      (_%E362479362497%_)))))
          (_%E362478362539%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx362435%_)
        (let* ((_%e362436362446%_ _%stx362435%_)
               (_%E362438362450%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e362436362446%_)))
               (_%E362437362472%_
                (lambda ()
                  (if (gx#stx-pair? _%e362436362446%_)
                      (let ((_%e362439362454%_
                             (gx#syntax-e _%e362436362446%_)))
                        (let ((_%hd362440362457%_ (##car _%e362439362454%_))
                              (_%tl362441362459%_ (##cdr _%e362439362454%_)))
                          (if (gx#stx-pair? _%tl362441362459%_)
                              (let ((_%e362442362462%_
                                     (gx#syntax-e _%tl362441362459%_)))
                                (let ((_%hd362443362465%_
                                       (##car _%e362442362462%_))
                                      (_%tl362444362467%_
                                       (##cdr _%e362442362462%_)))
                                  (let ((_%id362470%_ _%hd362443362465%_))
                                    (if (gx#stx-null? _%tl362444362467%_)
                                        (if (gx#identifier? _%id362470%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id362470%_
                                                          _%stx362435%_)
                                                         '()))
                                             (gx#stx-source _%stx362435%_))
                                            (_%E362438362450%_))
                                        (_%E362438362450%_)))))
                              (_%E362438362450%_))))
                      (_%E362438362450%_)))))
          (_%E362437362472%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx362381%_)
        (let* ((_%e362382362395%_ _%stx362381%_)
               (_%E362384362399%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e362382362395%_)))
               (_%E362383362431%_
                (lambda ()
                  (if (gx#stx-pair? _%e362382362395%_)
                      (let ((_%e362385362403%_
                             (gx#syntax-e _%e362382362395%_)))
                        (let ((_%hd362386362406%_ (##car _%e362385362403%_))
                              (_%tl362387362408%_ (##cdr _%e362385362403%_)))
                          (if (gx#stx-pair? _%tl362387362408%_)
                              (let ((_%e362388362411%_
                                     (gx#syntax-e _%tl362387362408%_)))
                                (let ((_%hd362389362414%_
                                       (##car _%e362388362411%_))
                                      (_%tl362390362416%_
                                       (##cdr _%e362388362411%_)))
                                  (let ((_%id362419%_ _%hd362389362414%_))
                                    (if (gx#stx-pair? _%tl362390362416%_)
                                        (let ((_%e362391362421%_
                                               (gx#syntax-e
                                                _%tl362390362416%_)))
                                          (let ((_%hd362392362424%_
                                                 (##car _%e362391362421%_))
                                                (_%tl362393362426%_
                                                 (##cdr _%e362391362421%_)))
                                            (let ((_%expr362429%_
                                                   _%hd362392362424%_))
                                              (if (gx#stx-null?
                                                   _%tl362393362426%_)
                                                  (if (gx#identifier?
                                                       _%id362419%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id362419%_
                            _%stx362381%_)
                           (cons (gx#core-expand-expression _%expr362429%_)
                                 '())))
               (gx#stx-source _%stx362381%_))
              (_%E362384362399%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E362384362399%_)))))
                                        (_%E362384362399%_)))))
                              (_%E362384362399%_))))
                      (_%E362384362399%_)))))
          (_%E362383362431%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx362226%_)
        (letrec ((_%generate362228%_
                  (lambda (_%body362258%_)
                    (let _%lp362260%_ ((_%rest362262%_ _%body362258%_)
                                       (_%ns362263%_
                                        (gx#core-context-namespace__0))
                                       (_%r362264%_ '()))
                      (let* ((_%e362265362280%_ _%rest362262%_)
                             (_%E362278362284%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e362265362280%_)))
                             (_%E362274362288%_
                              (lambda ()
                                (if (gx#stx-null? _%e362265362280%_)
                                    (reverse _%r362264%_)
                                    (_%E362278362284%_))))
                             (_%E362267362345%_
                              (lambda ()
                                (if (gx#stx-pair? _%e362265362280%_)
                                    (let ((_%e362275362292%_
                                           (gx#syntax-e _%e362265362280%_)))
                                      (let ((_%hd362276362295%_
                                             (##car _%e362275362292%_))
                                            (_%tl362277362297%_
                                             (##cdr _%e362275362292%_)))
                                        (let* ((_%hd362300%_
                                                _%hd362276362295%_)
                                               (_%rest362302%_
                                                _%tl362277362297%_))
                                          (if (gx#identifier? _%hd362300%_)
                                              (_%lp362260%_
                                               _%rest362302%_
                                               _%ns362263%_
                                               (cons (cons _%hd362300%_
                                                           (cons (if _%ns362263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd362300%_
                              _%ns362263%_
                              '"#"
                              _%hd362300%_)
                             _%hd362300%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r362264%_))
                                              (let* ((_%e362303362313%_
                                                      _%hd362300%_)
                                                     (_%E362305362317%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e362303362313%_)))
                                                     (_%E362304362341%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e362303362313%_)
                                                            (let ((_%e362306362321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e362303362313%_)))
                      (let ((_%hd362307362324%_ (##car _%e362306362321%_))
                            (_%tl362308362326%_ (##cdr _%e362306362321%_)))
                        (let ((_%id362329%_ _%hd362307362324%_))
                          (if (gx#stx-pair? _%tl362308362326%_)
                              (let ((_%e362309362331%_
                                     (gx#syntax-e _%tl362308362326%_)))
                                (let ((_%hd362310362334%_
                                       (##car _%e362309362331%_))
                                      (_%tl362311362336%_
                                       (##cdr _%e362309362331%_)))
                                  (let ((_%eid362339%_ _%hd362310362334%_))
                                    (if (gx#stx-null? _%tl362311362336%_)
                                        (if (and (gx#identifier? _%id362329%_)
                                                 (gx#identifier?
                                                  _%eid362339%_))
                                            (_%lp362260%_
                                             _%rest362302%_
                                             _%ns362263%_
                                             (cons (cons _%id362329%_
                                                         (cons _%eid362339%_
                                                               '()))
                                                   _%r362264%_))
                                            (_%E362305362317%_))
                                        (_%E362305362317%_)))))
                              (_%E362305362317%_)))))
                    (_%E362305362317%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E362304362341%_))))))
                                    (_%E362274362288%_))))
                             (_%E362266362377%_
                              (lambda ()
                                (if (gx#stx-pair? _%e362265362280%_)
                                    (let ((_%e362268362349%_
                                           (gx#syntax-e _%e362265362280%_)))
                                      (let ((_%hd362269362352%_
                                             (##car _%e362268362349%_))
                                            (_%tl362270362354%_
                                             (##cdr _%e362268362349%_)))
                                        (if (eq? (gx#stx-e _%hd362269362352%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl362270362354%_)
                                                (let ((_%e362271362357%_
                                                       (gx#syntax-e
                                                        _%tl362270362354%_)))
                                                  (let ((_%hd362272362360%_
                                                         (##car _%e362271362357%_))
                                                        (_%tl362273362362%_
                                                         (##cdr _%e362271362357%_)))
                                                    (let* ((_%ns362365%_
                                                            _%hd362272362360%_)
                                                           (_%rest362367%_
                                                            _%tl362273362362%_)
                                                           (_%ns362375%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns362365%_)
                        (symbol->string (gx#stx-e _%ns362365%_))
                        (if (or (gx#stx-string? _%ns362365%_)
                                (gx#stx-false? _%ns362365%_))
                            (gx#stx-e _%ns362365%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx362226%_
                             _%ns362365%_)))))
              (_%lp362260%_ _%rest362367%_ _%ns362375%_ _%r362264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E362267362345%_))
                                            (_%E362267362345%_))))
                                    (_%E362267362345%_)))))
                        (_%E362266362377%_))))))
          (let* ((_%e362229362236%_ _%stx362226%_)
                 (_%E362231362240%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e362229362236%_)))
                 (_%E362230362254%_
                  (lambda ()
                    (if (gx#stx-pair? _%e362229362236%_)
                        (let ((_%e362232362244%_
                               (gx#syntax-e _%e362229362236%_)))
                          (let ((_%hd362233362247%_ (##car _%e362232362244%_))
                                (_%tl362234362249%_ (##cdr _%e362232362244%_)))
                            (let ((_%body362252%_ _%tl362234362249%_))
                              (if (gx#stx-list? _%body362252%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate362228%_ _%body362252%_))
                                  (_%E362231362240%_)))))
                        (_%E362231362240%_)))))
            (_%E362230362254%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx362183%_)
        (let* ((_%e362184362194%_ _%stx362183%_)
               (_%E362186362198%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e362184362194%_)))
               (_%E362185362222%_
                (lambda ()
                  (if (gx#stx-pair? _%e362184362194%_)
                      (let ((_%e362187362202%_
                             (gx#syntax-e _%e362184362194%_)))
                        (let ((_%hd362188362205%_ (##car _%e362187362202%_))
                              (_%tl362189362207%_ (##cdr _%e362187362202%_)))
                          (if (gx#stx-pair? _%tl362189362207%_)
                              (let ((_%e362190362210%_
                                     (gx#syntax-e _%tl362189362207%_)))
                                (let ((_%hd362191362213%_
                                       (##car _%e362190362210%_))
                                      (_%tl362192362215%_
                                       (##cdr _%e362190362210%_)))
                                  (let* ((_%hd362218%_ _%hd362191362213%_)
                                         (_%body362220%_ _%tl362192362215%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd362218%_)
                                             (gx#stx-list? _%body362220%_)
                                             (not (gx#stx-null?
                                                   _%body362220%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd362218%_)
                                         _%body362220%_)
                                        (_%E362186362198%_)))))
                              (_%E362186362198%_))))
                      (_%E362186362198%_)))))
          (_%E362185362222%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx362119%_)
        (letrec ((_%generate362121%_
                  (lambda (_%clause362151%_)
                    (let* ((_%e362152362159%_ _%clause362151%_)
                           (_%E362154362163%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx362119%_
                               _%clause362151%_)))
                           (_%E362153362179%_
                            (lambda ()
                              (if (gx#stx-pair? _%e362152362159%_)
                                  (let ((_%e362155362167%_
                                         (gx#syntax-e _%e362152362159%_)))
                                    (let ((_%hd362156362170%_
                                           (##car _%e362155362167%_))
                                          (_%tl362157362172%_
                                           (##cdr _%e362155362167%_)))
                                      (let* ((_%hd362175%_ _%hd362156362170%_)
                                             (_%body362177%_
                                              _%tl362157362172%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd362175%_)
                                                 (gx#stx-list? _%body362177%_)
                                                 (not (gx#stx-null?
                                                       _%body362177%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd362175%_)
                                                   _%body362177%_)
                                             (gx#stx-source _%clause362151%_))
                                            (_%E362154362163%_)))))
                                  (_%E362154362163%_)))))
                      (_%E362153362179%_)))))
          (let* ((_%e362122362129%_ _%stx362119%_)
                 (_%E362124362133%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e362122362129%_)))
                 (_%E362123362147%_
                  (lambda ()
                    (if (gx#stx-pair? _%e362122362129%_)
                        (let ((_%e362125362137%_
                               (gx#syntax-e _%e362122362129%_)))
                          (let ((_%hd362126362140%_ (##car _%e362125362137%_))
                                (_%tl362127362142%_ (##cdr _%e362125362137%_)))
                            (let ((_%clauses362145%_ _%tl362127362142%_))
                              (if (gx#stx-list? _%clauses362145%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate362121%_
                                    _%clauses362145%_))
                                  (_%E362124362133%_)))))
                        (_%E362124362133%_)))))
            (_%E362123362147%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx362020%_ _%form362021%_)
        (letrec ((_%generate362023%_
                  (lambda (_%bind362066%_)
                    (let* ((_%e362067362077%_ _%bind362066%_)
                           (_%E362069362081%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx362020%_
                               _%bind362066%_)))
                           (_%E362068362105%_
                            (lambda ()
                              (if (gx#stx-pair? _%e362067362077%_)
                                  (let ((_%e362070362085%_
                                         (gx#syntax-e _%e362067362077%_)))
                                    (let ((_%hd362071362088%_
                                           (##car _%e362070362085%_))
                                          (_%tl362072362090%_
                                           (##cdr _%e362070362085%_)))
                                      (let ((_%ids362093%_ _%hd362071362088%_))
                                        (if (gx#stx-pair? _%tl362072362090%_)
                                            (let ((_%e362073362095%_
                                                   (gx#syntax-e
                                                    _%tl362072362090%_)))
                                              (let ((_%hd362074362098%_
                                                     (##car _%e362073362095%_))
                                                    (_%tl362075362100%_
                                                     (##cdr _%e362073362095%_)))
                                                (let ((_%expr362103%_
                                                       _%hd362074362098%_))
                                                  (if (gx#stx-null?
                                                       _%tl362075362100%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids362093%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids362093%_)
                        (cons _%expr362103%_ '()))
                  (_%E362069362081%_))
              (_%E362069362081%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E362069362081%_)))))
                                  (_%E362069362081%_)))))
                      (_%E362068362105%_)))))
          (let* ((_%e362024362034%_ _%stx362020%_)
                 (_%E362026362038%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e362024362034%_)))
                 (_%E362025362062%_
                  (lambda ()
                    (if (gx#stx-pair? _%e362024362034%_)
                        (let ((_%e362027362042%_
                               (gx#syntax-e _%e362024362034%_)))
                          (let ((_%hd362028362045%_ (##car _%e362027362042%_))
                                (_%tl362029362047%_ (##cdr _%e362027362042%_)))
                            (if (gx#stx-pair? _%tl362029362047%_)
                                (let ((_%e362030362050%_
                                       (gx#syntax-e _%tl362029362047%_)))
                                  (let ((_%hd362031362053%_
                                         (##car _%e362030362050%_))
                                        (_%tl362032362055%_
                                         (##cdr _%e362030362050%_)))
                                    (let* ((_%hd362058%_ _%hd362031362053%_)
                                           (_%body362060%_ _%tl362032362055%_))
                                      (if (and (gx#stx-list? _%hd362058%_)
                                               (gx#stx-list? _%body362060%_)
                                               (not (gx#stx-null?
                                                     _%body362060%_)))
                                          (gx#core-cons*
                                           _%form362021%_
                                           (gx#stx-map1
                                            _%generate362023%_
                                            _%hd362058%_)
                                           _%body362060%_)
                                          (_%E362026362038%_)))))
                                (_%E362026362038%_))))
                        (_%E362026362038%_)))))
            (_%E362025362062%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx362112%_)
        (let ((_%form362114%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx362112%_ _%form362114%_))))
    (define gx#macro-expand-let-values
      (lambda _g364656_
        (let ((_g364657_ (##length _g364656_)))
          (cond ((##fx= _g364657_ 1)
                 (apply gx#macro-expand-let-values__0 _g364656_))
                ((##fx= _g364657_ 2)
                 (apply gx#macro-expand-let-values__% _g364656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g364656_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx362017%_)
        (gx#macro-expand-let-values__% _%stx362017%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx362015%_)
        (gx#macro-expand-let-values__% _%stx362015%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx361906%_)
        (let* ((_%e361907361933%_ _%stx361906%_)
               (_%E361919361937%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e361907361933%_)))
               (_%E361909361979%_
                (lambda ()
                  (if (gx#stx-pair? _%e361907361933%_)
                      (let ((_%e361920361941%_
                             (gx#syntax-e _%e361907361933%_)))
                        (let ((_%hd361921361944%_ (##car _%e361920361941%_))
                              (_%tl361922361946%_ (##cdr _%e361920361941%_)))
                          (if (gx#stx-pair? _%tl361922361946%_)
                              (let ((_%e361923361949%_
                                     (gx#syntax-e _%tl361922361946%_)))
                                (let ((_%hd361924361952%_
                                       (##car _%e361923361949%_))
                                      (_%tl361925361954%_
                                       (##cdr _%e361923361949%_)))
                                  (let ((_%test361957%_ _%hd361924361952%_))
                                    (if (gx#stx-pair? _%tl361925361954%_)
                                        (let ((_%e361926361959%_
                                               (gx#syntax-e
                                                _%tl361925361954%_)))
                                          (let ((_%hd361927361962%_
                                                 (##car _%e361926361959%_))
                                                (_%tl361928361964%_
                                                 (##cdr _%e361926361959%_)))
                                            (let ((_%K361967%_
                                                   _%hd361927361962%_))
                                              (if (gx#stx-pair?
                                                   _%tl361928361964%_)
                                                  (let ((_%e361929361969%_
                                                         (gx#syntax-e
                                                          _%tl361928361964%_)))
                                                    (let ((_%hd361930361972%_
                                                           (##car _%e361929361969%_))
                                                          (_%tl361931361974%_
                                                           (##cdr _%e361929361969%_)))
                                                      (let ((_%E361977%_
                                                             _%hd361930361972%_))
                                                        (if (gx#stx-null?
                                                             _%tl361931361974%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test361957%_
                                                             _%K361967%_
                                                             _%E361977%_)
                                                            (_%E361919361937%_)))))
                                                  (_%E361919361937%_)))))
                                        (_%E361919361937%_)))))
                              (_%E361919361937%_))))
                      (_%E361919361937%_))))
               (_%E361908362011%_
                (lambda ()
                  (if (gx#stx-pair? _%e361907361933%_)
                      (let ((_%e361910361983%_
                             (gx#syntax-e _%e361907361933%_)))
                        (let ((_%hd361911361986%_ (##car _%e361910361983%_))
                              (_%tl361912361988%_ (##cdr _%e361910361983%_)))
                          (if (gx#stx-pair? _%tl361912361988%_)
                              (let ((_%e361913361991%_
                                     (gx#syntax-e _%tl361912361988%_)))
                                (let ((_%hd361914361994%_
                                       (##car _%e361913361991%_))
                                      (_%tl361915361996%_
                                       (##cdr _%e361913361991%_)))
                                  (let ((_%test361999%_ _%hd361914361994%_))
                                    (if (gx#stx-pair? _%tl361915361996%_)
                                        (let ((_%e361916362001%_
                                               (gx#syntax-e
                                                _%tl361915361996%_)))
                                          (let ((_%hd361917362004%_
                                                 (##car _%e361916362001%_))
                                                (_%tl361918362006%_
                                                 (##cdr _%e361916362001%_)))
                                            (let ((_%K362009%_
                                                   _%hd361917362004%_))
                                              (if (gx#stx-null?
                                                   _%tl361918362006%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test361999%_
                                                   _%K362009%_
                                                   '#!void)
                                                  (_%E361909361979%_)))))
                                        (_%E361909361979%_)))))
                              (_%E361909361979%_))))
                      (_%E361909361979%_)))))
          (_%E361908362011%_))))
    (define gx#free-identifier=?
      (lambda (_%xid361891%_ _%yid361892%_)
        (let ((_%xe361894%_ (gx#resolve-identifier__0 _%xid361891%_))
              (_%ye361895%_ (gx#resolve-identifier__0 _%yid361892%_)))
          (if (and _%xe361894%_ _%ye361895%_)
              (let ((_%$e361898%_ (eq? _%xe361894%_ _%ye361895%_)))
                (if _%$e361898%_
                    _%$e361898%_
                    (if (##structure-instance-of? _%xe361894%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye361895%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe361894%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye361895%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe361894%_ _%ye361895%_)
                  '#f
                  (gx#stx-eq? _%xid361891%_ _%yid361892%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid361872%_ _%yid361873%_)
        (letrec ((_%context361875%_
                  (lambda (_%e361889%_)
                    (if (##structure-direct-instance-of?
                         _%e361889%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e361889%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks361876%_
                  (lambda (_%e361884%_)
                    (if (symbol? _%e361884%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e361884%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e361884%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e361884%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap361877%_
                  (lambda (_%e361882%_)
                    (if (symbol? _%e361882%_)
                        _%e361882%_
                        (gx#syntax-local-unwrap _%e361882%_)))))
          (let ((_%x361879%_ (_%unwrap361877%_ _%xid361872%_))
                (_%y361880%_ (_%unwrap361877%_ _%yid361873%_)))
            (if (gx#stx-eq? _%x361879%_ _%y361880%_)
                (if (eq? (_%context361875%_ _%x361879%_)
                         (_%context361875%_ _%y361880%_))
                    (equal? (_%marks361876%_ _%x361879%_)
                            (_%marks361876%_ _%y361880%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx361870%_)
        (if (gx#identifier? _%stx361870%_)
            (gx#core-identifier=? _%stx361870%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx361868%_)
        (if (gx#identifier? _%stx361868%_)
            (gx#core-identifier=? _%stx361868%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx361811%_ _%where361812%_)
        (let _%lp361814%_ ((_%rest361816%_ (gx#syntax->list _%stx361811%_)))
          (let* ((_%rest361817361825%_ _%rest361816%_)
                 (_%else361819361833%_ (lambda () '#t))
                 (_%K361821361846%_
                  (lambda (_%rest361836%_ _%hd361837%_)
                    (if (gx#identifier? _%hd361837%_)
                        (if (__find (lambda (_%g361839361841%_)
                                      (gx#bound-identifier=?
                                       _%g361839361841%_
                                       _%hd361837%_))
                                    _%rest361836%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where361812%_
                             _%hd361837%_)
                            (_%lp361814%_ _%rest361836%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where361812%_
                         _%hd361837%_)))))
            (if (pair? _%rest361817361825%_)
                (let ((_%hd361822361849%_ (##car _%rest361817361825%_))
                      (_%tl361823361851%_ (##cdr _%rest361817361825%_)))
                  (let* ((_%hd361854%_ _%hd361822361849%_)
                         (_%rest361856%_ _%tl361823361851%_))
                    (_%K361821361846%_ _%rest361856%_ _%hd361854%_)))
                (_%else361819361833%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx361861%_)
        (let ((_%where361863%_ _%stx361861%_))
          (gx#check-duplicate-identifiers__% _%stx361861%_ _%where361863%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g364658_
        (let ((_g364659_ (##length _g364658_)))
          (cond ((##fx= _g364659_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g364658_))
                ((##fx= _g364659_ 2)
                 (apply gx#check-duplicate-identifiers__% _g364658_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g364658_))))))
    (define gx#core-bind-values?
      (lambda (_%stx361803%_)
        (gx#stx-andmap
         (lambda (_%x361805%_)
           (let ((_%$e361807%_ (gx#identifier? _%x361805%_)))
             (if _%$e361807%_ _%$e361807%_ (gx#stx-false? _%x361805%_))))
         _%stx361803%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx361767%_ _%rebind?361768%_ _%phi361769%_ _%ctx361770%_)
        (gx#stx-for-each1
         (lambda (_%id361772%_)
           (if (gx#identifier? _%id361772%_)
               (gx#core-bind-runtime!__%
                _%id361772%_
                _%rebind?361768%_
                _%phi361769%_
                _%ctx361770%_)
               '#!void))
         _%stx361767%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx361777%_)
        (let* ((_%rebind?361779%_ '#f)
               (_%phi361781%_ (gx#current-expander-phi))
               (_%ctx361783%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx361777%_
           _%rebind?361779%_
           _%phi361781%_
           _%ctx361783%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx361785%_ _%rebind?361786%_)
        (let* ((_%phi361788%_ (gx#current-expander-phi))
               (_%ctx361790%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx361785%_
           _%rebind?361786%_
           _%phi361788%_
           _%ctx361790%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx361792%_ _%rebind?361793%_ _%phi361794%_)
        (let ((_%ctx361796%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx361792%_
           _%rebind?361793%_
           _%phi361794%_
           _%ctx361796%_))))
    (define gx#core-bind-values!
      (lambda _g364660_
        (let ((_g364661_ (##length _g364660_)))
          (cond ((##fx= _g364661_ 1) (apply gx#core-bind-values!__0 _g364660_))
                ((##fx= _g364661_ 2) (apply gx#core-bind-values!__1 _g364660_))
                ((##fx= _g364661_ 3) (apply gx#core-bind-values!__2 _g364660_))
                ((##fx= _g364661_ 4) (apply gx#core-bind-values!__% _g364660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g364660_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx361762%_)
        (gx#stx-map1
         (lambda (_%x361764%_)
           (if (gx#identifier? _%x361764%_)
               (gx#core-quote-syntax__0 _%x361764%_)
               '#f))
         _%stx361762%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx361755%_)
        (if (gx#identifier? _%stx361755%_)
            (let* ((_%bind361757%_ (gx#resolve-identifier__0 _%stx361755%_))
                   (_%$e361759%_ (not _%bind361757%_)))
              (if _%$e361759%_
                  _%$e361759%_
                  (##structure-instance-of?
                   _%bind361757%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id361744%_ _%form361745%_)
        (let ((_%bind361747%_ (gx#resolve-identifier__0 _%id361744%_)))
          (if (##structure-instance-of? _%bind361747%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id361744%_)
              (if (not _%bind361747%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id361744%_)))
                      (gx#core-quote-syntax__0 _%id361744%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form361745%_
                       _%id361744%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form361745%_
                   _%id361744%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id361699%_ _%rebind?361700%_ _%phi361701%_ _%ctx361702%_)
        (let* ((_%key361704%_ (gx#core-identifier-key _%id361699%_))
               (_%eid361706%_
                (gx#make-binding-id__%
                 _%key361704%_
                 '#f
                 _%phi361701%_
                 _%ctx361702%_))
               (_%bind361712%_
                (if (##structure-instance-of?
                     _%ctx361702%_
                     'gx#module-context::t)
                    (let ((__obj364637
                           (##structure
                            gx#module-binding::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#module-binding:::init!
                       __obj364637
                       _%eid361706%_
                       _%key361704%_
                       _%phi361701%_
                       _%ctx361702%_)
                      __obj364637)
                    (if (##structure-instance-of?
                         _%ctx361702%_
                         'gx#top-context::t)
                        (let ((__obj364636
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj364636
                           _%eid361706%_
                           _%key361704%_
                           _%phi361701%_)
                          __obj364636)
                        (if (##structure-instance-of?
                             _%ctx361702%_
                             'gx#local-context::t)
                            (let ((__obj364635
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj364635
                               _%eid361706%_
                               _%key361704%_
                               _%phi361701%_)
                              __obj364635)
                            (let ((__obj364634
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj364634
                               _%eid361706%_
                               _%key361704%_
                               _%phi361701%_)
                              __obj364634))))))
          (gx#bind-identifier!__%
           _%id361699%_
           _%bind361712%_
           _%rebind?361700%_
           _%phi361701%_
           _%ctx361702%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id361718%_)
        (let* ((_%rebind?361720%_ '#f)
               (_%phi361722%_ (gx#current-expander-phi))
               (_%ctx361724%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id361718%_
           _%rebind?361720%_
           _%phi361722%_
           _%ctx361724%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id361726%_ _%rebind?361727%_)
        (let* ((_%phi361729%_ (gx#current-expander-phi))
               (_%ctx361731%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id361726%_
           _%rebind?361727%_
           _%phi361729%_
           _%ctx361731%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id361733%_ _%rebind?361734%_ _%phi361735%_)
        (let ((_%ctx361737%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id361733%_
           _%rebind?361734%_
           _%phi361735%_
           _%ctx361737%_))))
    (define gx#core-bind-runtime!
      (lambda _g364662_
        (let ((_g364663_ (##length _g364662_)))
          (cond ((##fx= _g364663_ 1)
                 (apply gx#core-bind-runtime!__0 _g364662_))
                ((##fx= _g364663_ 2)
                 (apply gx#core-bind-runtime!__1 _g364662_))
                ((##fx= _g364663_ 3)
                 (apply gx#core-bind-runtime!__2 _g364662_))
                ((##fx= _g364663_ 4)
                 (apply gx#core-bind-runtime!__% _g364662_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g364662_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id361651%_
               _%eid361652%_
               _%rebind?361653%_
               _%phi361654%_
               _%ctx361655%_)
        (let* ((_%key361657%_ (gx#core-identifier-key _%id361651%_))
               (_%bind361662%_
                (if (##structure-instance-of?
                     _%ctx361655%_
                     'gx#module-context::t)
                    (let ((__obj364640
                           (##structure
                            gx#module-binding::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#module-binding:::init!
                       __obj364640
                       _%eid361652%_
                       _%key361657%_
                       _%phi361654%_
                       _%ctx361655%_)
                      __obj364640)
                    (if (##structure-instance-of?
                         _%ctx361655%_
                         'gx#top-context::t)
                        (let ((__obj364639
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj364639
                           _%eid361652%_
                           _%key361657%_
                           _%phi361654%_)
                          __obj364639)
                        (let ((__obj364638
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj364638
                           _%eid361652%_
                           _%key361657%_
                           _%phi361654%_)
                          __obj364638)))))
          (gx#bind-identifier!__%
           _%id361651%_
           _%bind361662%_
           _%rebind?361653%_
           _%phi361654%_
           _%ctx361655%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id361668%_ _%eid361669%_)
        (let* ((_%rebind?361671%_ '#f)
               (_%phi361673%_ (gx#current-expander-phi))
               (_%ctx361675%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id361668%_
           _%eid361669%_
           _%rebind?361671%_
           _%phi361673%_
           _%ctx361675%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id361677%_ _%eid361678%_ _%rebind?361679%_)
        (let* ((_%phi361681%_ (gx#current-expander-phi))
               (_%ctx361683%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id361677%_
           _%eid361678%_
           _%rebind?361679%_
           _%phi361681%_
           _%ctx361683%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id361685%_ _%eid361686%_ _%rebind?361687%_ _%phi361688%_)
        (let ((_%ctx361690%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id361685%_
           _%eid361686%_
           _%rebind?361687%_
           _%phi361688%_
           _%ctx361690%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g364664_
        (let ((_g364665_ (##length _g364664_)))
          (cond ((##fx= _g364665_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g364664_))
                ((##fx= _g364665_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g364664_))
                ((##fx= _g364665_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g364664_))
                ((##fx= _g364665_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g364664_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g364664_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id361611%_
               _%eid361612%_
               _%rebind?361613%_
               _%phi361614%_
               _%ctx361615%_)
        (gx#bind-identifier!__%
         _%id361611%_
         (let ((__obj364641
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj364641
            _%eid361612%_
            (gx#core-identifier-key _%id361611%_)
            _%phi361614%_)
           __obj364641)
         _%rebind?361613%_
         _%phi361614%_
         _%ctx361615%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id361620%_ _%eid361621%_)
        (let* ((_%rebind?361623%_ '#f)
               (_%phi361625%_ (gx#current-expander-phi))
               (_%ctx361627%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id361620%_
           _%eid361621%_
           _%rebind?361623%_
           _%phi361625%_
           _%ctx361627%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id361629%_ _%eid361630%_ _%rebind?361631%_)
        (let* ((_%phi361633%_ (gx#current-expander-phi))
               (_%ctx361635%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id361629%_
           _%eid361630%_
           _%rebind?361631%_
           _%phi361633%_
           _%ctx361635%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id361637%_ _%eid361638%_ _%rebind?361639%_ _%phi361640%_)
        (let ((_%ctx361642%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id361637%_
           _%eid361638%_
           _%rebind?361639%_
           _%phi361640%_
           _%ctx361642%_))))
    (define gx#core-bind-extern!
      (lambda _g364666_
        (let ((_g364667_ (##length _g364666_)))
          (cond ((##fx= _g364667_ 2) (apply gx#core-bind-extern!__0 _g364666_))
                ((##fx= _g364667_ 3) (apply gx#core-bind-extern!__1 _g364666_))
                ((##fx= _g364667_ 4) (apply gx#core-bind-extern!__2 _g364666_))
                ((##fx= _g364667_ 5) (apply gx#core-bind-extern!__% _g364666_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g364666_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id361565%_
               _%e361566%_
               _%rebind?361567%_
               _%phi361568%_
               _%ctx361569%_)
        (gx#bind-identifier!__%
         _%id361565%_
         (let ((_%key361574%_ (gx#core-identifier-key _%id361565%_))
               (_%e361575%_
                (if (or (##structure-instance-of? _%e361566%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e361566%_
                         'gx#expander-context::t))
                    _%e361566%_
                    (##structure
                     gx#user-expander::t
                     _%e361566%_
                     _%ctx361569%_
                     _%phi361568%_))))
           (let ((__obj364642
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj364642
              (gx#make-binding-id__%
               _%key361574%_
               '#t
               _%phi361568%_
               _%ctx361569%_)
              _%key361574%_
              _%phi361568%_
              _%e361575%_)
             __obj364642))
         _%rebind?361567%_
         _%phi361568%_
         _%ctx361569%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id361580%_ _%e361581%_)
        (let* ((_%rebind?361583%_ '#f)
               (_%phi361585%_ (gx#current-expander-phi))
               (_%ctx361587%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id361580%_
           _%e361581%_
           _%rebind?361583%_
           _%phi361585%_
           _%ctx361587%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id361589%_ _%e361590%_ _%rebind?361591%_)
        (let* ((_%phi361593%_ (gx#current-expander-phi))
               (_%ctx361595%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id361589%_
           _%e361590%_
           _%rebind?361591%_
           _%phi361593%_
           _%ctx361595%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id361597%_ _%e361598%_ _%rebind?361599%_ _%phi361600%_)
        (let ((_%ctx361602%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id361597%_
           _%e361598%_
           _%rebind?361599%_
           _%phi361600%_
           _%ctx361602%_))))
    (define gx#core-bind-syntax!
      (lambda _g364668_
        (let ((_g364669_ (##length _g364668_)))
          (cond ((##fx= _g364669_ 2) (apply gx#core-bind-syntax!__0 _g364668_))
                ((##fx= _g364669_ 3) (apply gx#core-bind-syntax!__1 _g364668_))
                ((##fx= _g364669_ 4) (apply gx#core-bind-syntax!__2 _g364668_))
                ((##fx= _g364669_ 5) (apply gx#core-bind-syntax!__% _g364668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g364668_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id361548%_ _%e361549%_ _%rebind?361550%_)
        (gx#core-bind-syntax!__%
         _%id361548%_
         _%e361549%_
         _%rebind?361550%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id361555%_ _%e361556%_)
        (let ((_%rebind?361558%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id361555%_
           _%e361556%_
           _%rebind?361558%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g364670_
        (let ((_g364671_ (##length _g364670_)))
          (cond ((##fx= _g364671_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g364670_))
                ((##fx= _g364671_ 3)
                 (apply gx#core-bind-root-syntax!__% _g364670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g364670_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id361506%_
               _%alias-id361507%_
               _%rebind?361508%_
               _%phi361509%_
               _%ctx361510%_)
        (gx#bind-identifier!__%
         _%id361506%_
         (let* ((_%key361512%_ (gx#core-identifier-key _%id361506%_))
                (__obj364643
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj364643
            (gx#make-binding-id__%
             _%key361512%_
             '#t
             _%phi361509%_
             _%ctx361510%_)
            _%key361512%_
            _%phi361509%_
            _%alias-id361507%_)
           __obj364643)
         _%rebind?361508%_
         _%phi361509%_
         _%ctx361510%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id361517%_ _%alias-id361518%_)
        (let* ((_%rebind?361520%_ '#f)
               (_%phi361522%_ (gx#current-expander-phi))
               (_%ctx361524%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id361517%_
           _%alias-id361518%_
           _%rebind?361520%_
           _%phi361522%_
           _%ctx361524%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id361526%_ _%alias-id361527%_ _%rebind?361528%_)
        (let* ((_%phi361530%_ (gx#current-expander-phi))
               (_%ctx361532%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id361526%_
           _%alias-id361527%_
           _%rebind?361528%_
           _%phi361530%_
           _%ctx361532%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id361534%_ _%alias-id361535%_ _%rebind?361536%_ _%phi361537%_)
        (let ((_%ctx361539%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id361534%_
           _%alias-id361535%_
           _%rebind?361536%_
           _%phi361537%_
           _%ctx361539%_))))
    (define gx#core-bind-alias!
      (lambda _g364672_
        (let ((_g364673_ (##length _g364672_)))
          (cond ((##fx= _g364673_ 2) (apply gx#core-bind-alias!__0 _g364672_))
                ((##fx= _g364673_ 3) (apply gx#core-bind-alias!__1 _g364672_))
                ((##fx= _g364673_ 4) (apply gx#core-bind-alias!__2 _g364672_))
                ((##fx= _g364673_ 5) (apply gx#core-bind-alias!__% _g364672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g364672_))))))
    (define gx#make-binding-id__%
      (lambda (_%key361456%_ _%syntax?361457%_ _%phi361458%_ _%ctx361459%_)
        (if (uninterned-symbol? _%key361456%_)
            (##gensym 'L)
            (if (pair? _%key361456%_)
                (gensym (##car _%key361456%_))
                (if (##structure-instance-of? _%ctx361459%_ 'gx#top-context::t)
                    (let ((_%ns361464%_
                           (gx#core-context-namespace__% _%ctx361459%_)))
                      (if (and (fxzero? _%phi361458%_) (not _%syntax?361457%_))
                          (if _%ns361464%_
                              (make-symbol__1 _%ns361464%_ '"#" _%key361456%_)
                              _%key361456%_)
                          (if _%syntax?361457%_
                              (make-symbol__1
                               (let ((_%$e361468%_ _%ns361464%_))
                                 (if _%$e361468%_ _%$e361468%_ '""))
                               '"[:"
                               (number->string _%phi361458%_)
                               '":]#"
                               _%key361456%_)
                              (make-symbol__1
                               (let ((_%$e361472%_ _%ns361464%_))
                                 (if _%$e361472%_ _%$e361472%_ '""))
                               '"["
                               (number->string _%phi361458%_)
                               '"]#"
                               _%key361456%_))))
                    (gensym _%key361456%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key361479%_)
        (let* ((_%syntax?361481%_ '#f)
               (_%phi361483%_ (gx#current-expander-phi))
               (_%ctx361485%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key361479%_
           _%syntax?361481%_
           _%phi361483%_
           _%ctx361485%_))))
    (define gx#make-binding-id__1
      (lambda (_%key361487%_ _%syntax?361488%_)
        (let* ((_%phi361490%_ (gx#current-expander-phi))
               (_%ctx361492%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key361487%_
           _%syntax?361488%_
           _%phi361490%_
           _%ctx361492%_))))
    (define gx#make-binding-id__2
      (lambda (_%key361494%_ _%syntax?361495%_ _%phi361496%_)
        (let ((_%ctx361498%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key361494%_
           _%syntax?361495%_
           _%phi361496%_
           _%ctx361498%_))))
    (define gx#make-binding-id
      (lambda _g364674_
        (let ((_g364675_ (##length _g364674_)))
          (cond ((##fx= _g364675_ 1) (apply gx#make-binding-id__0 _g364674_))
                ((##fx= _g364675_ 2) (apply gx#make-binding-id__1 _g364674_))
                ((##fx= _g364675_ 3) (apply gx#make-binding-id__2 _g364674_))
                ((##fx= _g364675_ 4) (apply gx#make-binding-id__% _g364674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g364674_))))))))
