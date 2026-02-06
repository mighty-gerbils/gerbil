(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1770405373)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx178733%_)
        (letrec ((_%expand-special178735%_
                  (lambda (_%hd178737%_ _%K178738%_ _%rest178739%_ _%r178740%_)
                    (_%K178738%_
                     _%rest178739%_
                     (cons (gx#core-expand-top _%hd178737%_) _%r178740%_)))))
          (gx#core-expand-block__0 _%stx178733%_ _%expand-special178735%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx178427%_)
        (letrec ((_%expand-special178429%_
                  (lambda (_%hd178551%_ _%K178552%_ _%rest178553%_ _%r178554%_)
                    (let* ((_%K178558%_
                            (lambda (_%e178556%_)
                              (_%K178552%_
                               _%rest178553%_
                               (cons _%e178556%_ _%r178554%_))))
                           (_%e178559178601%_ _%hd178551%_)
                           (_%E178596178605%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e178559178601%_)))
                           (_%E178592178617%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178559178601%_)
                                  (let ((_%e178597178609%_
                                         (gx#syntax-e _%e178559178601%_)))
                                    (let ((_%hd178598178612%_
                                           (##car _%e178597178609%_))
                                          (_%tl178599178614%_
                                           (##cdr _%e178597178609%_)))
                                      (if (and (gx#identifier?
                                                _%hd178598178612%_)
                                               (gx#core-identifier=?
                                                _%hd178598178612%_
                                                '%#define-runtime))
                                          (_%K178558%_
                                           (gx#core-expand-define-runtime%
                                            _%hd178551%_))
                                          (_%E178596178605%_))))
                                  (_%E178596178605%_))))
                           (_%E178588178629%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178559178601%_)
                                  (let ((_%e178593178621%_
                                         (gx#syntax-e _%e178559178601%_)))
                                    (let ((_%hd178594178624%_
                                           (##car _%e178593178621%_))
                                          (_%tl178595178626%_
                                           (##cdr _%e178593178621%_)))
                                      (if (and (gx#identifier?
                                                _%hd178594178624%_)
                                               (gx#core-identifier=?
                                                _%hd178594178624%_
                                                '%#define-alias))
                                          (_%K178558%_
                                           (gx#core-expand-define-alias%
                                            _%hd178551%_))
                                          (_%E178592178617%_))))
                                  (_%E178592178617%_))))
                           (_%E178578178641%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178559178601%_)
                                  (let ((_%e178589178633%_
                                         (gx#syntax-e _%e178559178601%_)))
                                    (let ((_%hd178590178636%_
                                           (##car _%e178589178633%_))
                                          (_%tl178591178638%_
                                           (##cdr _%e178589178633%_)))
                                      (if (and (gx#identifier?
                                                _%hd178590178636%_)
                                               (gx#core-identifier=?
                                                _%hd178590178636%_
                                                '%#define-syntax))
                                          (_%K178558%_
                                           (gx#core-expand-define-syntax%
                                            _%hd178551%_))
                                          (_%E178588178629%_))))
                                  (_%E178588178629%_))))
                           (_%E178565178673%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178559178601%_)
                                  (let ((_%e178579178645%_
                                         (gx#syntax-e _%e178559178601%_)))
                                    (let ((_%hd178580178648%_
                                           (##car _%e178579178645%_))
                                          (_%tl178581178650%_
                                           (##cdr _%e178579178645%_)))
                                      (if (and (gx#identifier?
                                                _%hd178580178648%_)
                                               (gx#core-identifier=?
                                                _%hd178580178648%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl178581178650%_)
                                              (let ((_%e178582178653%_
                                                     (gx#syntax-e
                                                      _%tl178581178650%_)))
                                                (let ((_%hd178583178656%_
                                                       (##car _%e178582178653%_))
                                                      (_%tl178584178658%_
                                                       (##cdr _%e178582178653%_)))
                                                  (let ((_%hd-bind178661%_
                                                         _%hd178583178656%_))
                                                    (if (gx#stx-pair?
                                                         _%tl178584178658%_)
                                                        (let ((_%e178585178663%_
                                                               (gx#syntax-e
                                                                _%tl178584178658%_)))
                                                          (let ((_%hd178586178666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e178585178663%_))
                        (_%tl178587178668%_ (##cdr _%e178585178663%_)))
                    (let ((_%expr178671%_ _%hd178586178666%_))
                      (if (gx#stx-null? _%tl178587178668%_)
                          (if (gx#core-bind-values? _%hd-bind178661%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind178661%_)
                                (_%K178558%_ _%hd178551%_))
                              (_%E178578178641%_))
                          (_%E178578178641%_)))))
                (_%E178578178641%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E178578178641%_))
                                          (_%E178578178641%_))))
                                  (_%E178578178641%_))))
                           (_%E178561178717%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178559178601%_)
                                  (let ((_%e178566178677%_
                                         (gx#syntax-e _%e178559178601%_)))
                                    (let ((_%hd178567178680%_
                                           (##car _%e178566178677%_))
                                          (_%tl178568178682%_
                                           (##cdr _%e178566178677%_)))
                                      (if (and (gx#identifier?
                                                _%hd178567178680%_)
                                               (gx#core-identifier=?
                                                _%hd178567178680%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl178568178682%_)
                                              (let ((_%e178569178685%_
                                                     (gx#syntax-e
                                                      _%tl178568178682%_)))
                                                (let ((_%hd178570178688%_
                                                       (##car _%e178569178685%_))
                                                      (_%tl178571178690%_
                                                       (##cdr _%e178569178685%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd178570178688%_)
                                                      (let ((_%e178575178693%_
                                                             (gx#syntax-e
                                                              _%hd178570178688%_)))
                                                        (let ((_%hd178576178696%_
                                                               (##car _%e178575178693%_))
                                                              (_%tl178577178698%_
                                                               (##cdr _%e178575178693%_)))
                                                          (let ((_%id178701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd178576178696%_))
                    (if (gx#stx-null? _%tl178577178698%_)
                        (if (gx#stx-pair? _%tl178571178690%_)
                            (let ((_%e178572178703%_
                                   (gx#syntax-e _%tl178571178690%_)))
                              (let ((_%hd178573178706%_
                                     (##car _%e178572178703%_))
                                    (_%tl178574178708%_
                                     (##cdr _%e178572178703%_)))
                                (let* ((_%expr178711%_ _%hd178573178706%_)
                                       (_%props178713%_ _%tl178574178708%_))
                                  (if (gx#identifier? _%id178701%_)
                                      (let ((_%bind178715%_
                                             (gx#core-bind-runtime!__0
                                              _%id178701%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind178715%_
                                         _%props178713%_)
                                        (_%K178558%_ _%hd178551%_))
                                      (_%E178565178673%_)))))
                            (_%E178565178673%_))
                        (_%E178565178673%_)))))
              (_%E178565178673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E178565178673%_))
                                          (_%E178565178673%_))))
                                  (_%E178565178673%_))))
                           (_%E178560178729%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178559178601%_)
                                  (let ((_%e178562178721%_
                                         (gx#syntax-e _%e178559178601%_)))
                                    (let ((_%hd178563178724%_
                                           (##car _%e178562178721%_))
                                          (_%tl178564178726%_
                                           (##cdr _%e178562178721%_)))
                                      (if (and (gx#identifier?
                                                _%hd178563178724%_)
                                               (gx#core-identifier=?
                                                _%hd178563178724%_
                                                '%#begin-syntax))
                                          (_%K178558%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd178551%_))
                                          (_%E178561178717%_))))
                                  (_%E178561178717%_)))))
                      (_%E178560178729%_))))
                 (_%eval-body178430%_
                  (lambda (_%rbody178438%_)
                    (let _%lp178440%_ ((_%rest178442%_ _%rbody178438%_)
                                       (_%body178443%_ '())
                                       (_%ebody178444%_ '()))
                      (let* ((_%rest178445178453%_ _%rest178442%_)
                             (_%else178447178461%_
                              (lambda ()
                                (values _%body178443%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody178444%_)
                                          (gx#stx-source _%stx178427%_))))))
                             (_%K178449178539%_
                              (lambda (_%rest178464%_ _%hd178465%_)
                                (let* ((_%e178466178483%_ _%hd178465%_)
                                       (_%E178478178487%_
                                        (lambda ()
                                          (_%lp178440%_
                                           _%rest178464%_
                                           (cons _%hd178465%_ _%body178443%_)
                                           (cons _%hd178465%_
                                                 _%ebody178444%_))))
                                       (_%E178468178499%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e178466178483%_)
                                              (let ((_%e178479178491%_
                                                     (gx#syntax-e
                                                      _%e178466178483%_)))
                                                (let ((_%hd178480178494%_
                                                       (##car _%e178479178491%_))
                                                      (_%tl178481178496%_
                                                       (##cdr _%e178479178491%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd178480178494%_)
                                                           (gx#core-identifier=?
                                                            _%hd178480178494%_
                                                            '%#begin-syntax))
                                                      (_%lp178440%_
                                                       _%rest178464%_
                                                       (cons _%hd178465%_
                                                             _%body178443%_)
                                                       _%ebody178444%_)
                                                      (_%E178478178487%_))))
                                              (_%E178478178487%_))))
                                       (_%E178467178535%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e178466178483%_)
                                              (let ((_%e178469178503%_
                                                     (gx#syntax-e
                                                      _%e178466178483%_)))
                                                (let ((_%hd178470178506%_
                                                       (##car _%e178469178503%_))
                                                      (_%tl178471178508%_
                                                       (##cdr _%e178469178503%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd178470178506%_)
                                                           (gx#core-identifier=?
                                                            _%hd178470178506%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl178471178508%_)
                                                          (let ((_%e178472178511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl178471178508%_)))
                    (let ((_%hd178473178514%_ (##car _%e178472178511%_))
                          (_%tl178474178516%_ (##cdr _%e178472178511%_)))
                      (let ((_%hd-bind178519%_ _%hd178473178514%_))
                        (if (gx#stx-pair? _%tl178474178516%_)
                            (let ((_%e178475178521%_
                                   (gx#syntax-e _%tl178474178516%_)))
                              (let ((_%hd178476178524%_
                                     (##car _%e178475178521%_))
                                    (_%tl178477178526%_
                                     (##cdr _%e178475178521%_)))
                                (let* ((_%expr178529%_ _%hd178476178524%_)
                                       (_%ignore-props178531%_
                                        _%tl178477178526%_)
                                       (_%ehd178533%_
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#define-values)
                                               (cons (gx#core-quote-bind-values
                                                      _%hd-bind178519%_)
                                                     (cons (gx#core-expand-expression
                                                            _%expr178529%_)
                                                           '())))
                                         (gx#stx-source _%hd178465%_))))
                                  (_%lp178440%_
                                   _%rest178464%_
                                   (cons _%ehd178533%_ _%body178443%_)
                                   (cons _%ehd178533%_ _%ebody178444%_)))))
                            (_%E178468178499%_)))))
                  (_%E178468178499%_))
              (_%E178468178499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E178468178499%_)))))
                                  (_%E178467178535%_)))))
                        (if (pair? _%rest178445178453%_)
                            (let ((_%hd178450178542%_
                                   (##car _%rest178445178453%_))
                                  (_%tl178451178544%_
                                   (##cdr _%rest178445178453%_)))
                              (let* ((_%hd178547%_ _%hd178450178542%_)
                                     (_%rest178549%_ _%tl178451178544%_))
                                (_%K178449178539%_
                                 _%rest178549%_
                                 _%hd178547%_)))
                            (_%else178447178461%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody178433%_
                     (gx#core-expand-block__1
                      _%stx178427%_
                      _%expand-special178429%_
                      '#f))
                    (_g178766_ (_%eval-body178430%_ _%rbody178433%_)))
               (begin
                 (let ((_g178767_
                        (if (##values? _g178766_)
                            (##values-length _g178766_)
                            1)))
                   (if (not (##fx= _g178767_ 2))
                       (error "Context expects 2 values" _g178767_)))
                 (let ((_%expanded-body178435%_ (##values-ref _g178766_ 0))
                       (_%value178436%_ (##values-ref _g178766_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body178435%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value178436%_ '())))
                    (gx#stx-source _%stx178427%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx178397%_)
        (let* ((_%e178398178405%_ _%stx178397%_)
               (_%E178400178409%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178398178405%_)))
               (_%E178399178423%_
                (lambda ()
                  (if (gx#stx-pair? _%e178398178405%_)
                      (let ((_%e178401178413%_
                             (gx#syntax-e _%e178398178405%_)))
                        (let ((_%hd178402178416%_ (##car _%e178401178413%_))
                              (_%tl178403178418%_ (##cdr _%e178401178413%_)))
                          (let ((_%body178421%_ _%tl178403178418%_))
                            (if (gx#stx-list? _%body178421%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body178421%_)
                                 (gx#stx-source _%stx178397%_))
                                (_%E178400178409%_)))))
                      (_%E178400178409%_)))))
          (_%E178399178423%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx178395%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx178395%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx178341%_)
        (let* ((_%e178342178355%_ _%stx178341%_)
               (_%E178344178359%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e178342178355%_)))
               (_%E178343178391%_
                (lambda ()
                  (if (gx#stx-pair? _%e178342178355%_)
                      (let ((_%e178345178363%_
                             (gx#syntax-e _%e178342178355%_)))
                        (let ((_%hd178346178366%_ (##car _%e178345178363%_))
                              (_%tl178347178368%_ (##cdr _%e178345178363%_)))
                          (if (gx#stx-pair? _%tl178347178368%_)
                              (let ((_%e178348178371%_
                                     (gx#syntax-e _%tl178347178368%_)))
                                (let ((_%hd178349178374%_
                                       (##car _%e178348178371%_))
                                      (_%tl178350178376%_
                                       (##cdr _%e178348178371%_)))
                                  (let ((_%ann178379%_ _%hd178349178374%_))
                                    (if (gx#stx-pair? _%tl178350178376%_)
                                        (let ((_%e178351178381%_
                                               (gx#syntax-e
                                                _%tl178350178376%_)))
                                          (let ((_%hd178352178384%_
                                                 (##car _%e178351178381%_))
                                                (_%tl178353178386%_
                                                 (##cdr _%e178351178381%_)))
                                            (let ((_%expr178389%_
                                                   _%hd178352178384%_))
                                              (if (gx#stx-null?
                                                   _%tl178353178386%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann178379%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr178389%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx178341%_))
                                                  (_%E178344178359%_)))))
                                        (_%E178344178359%_)))))
                              (_%E178344178359%_))))
                      (_%E178344178359%_)))))
          (_%E178343178391%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx178006%_ _%body178007%_)
        (letrec ((_%expand-special178009%_
                  (lambda (_%hd178336%_ _%K178337%_ _%rest178338%_ _%r178339%_)
                    (_%K178337%_
                     '()
                     (cons (_%expand-internal178010%_
                            _%hd178336%_
                            _%rest178338%_)
                           _%r178339%_))))
                 (_%expand-internal178010%_
                  (lambda (_%hd178332%_ _%rest178333%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal178012%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd178332%_ _%rest178333%_))
                          (gx#stx-source _%stx178006%_))
                         _%expand-internal-special178011%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj178750
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj178750)
                       __obj178750))))
                 (_%expand-internal-special178011%_
                  (lambda (_%hd178170%_ _%K178171%_ _%rest178172%_ _%r178173%_)
                    (let* ((_%e178174178212%_ _%hd178170%_)
                           (_%E178207178216%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e178174178212%_)))
                           (_%E178203178228%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178174178212%_)
                                  (let ((_%e178208178220%_
                                         (gx#syntax-e _%e178174178212%_)))
                                    (let ((_%hd178209178223%_
                                           (##car _%e178208178220%_))
                                          (_%tl178210178225%_
                                           (##cdr _%e178208178220%_)))
                                      (if (and (gx#identifier?
                                                _%hd178209178223%_)
                                               (gx#core-identifier=?
                                                _%hd178209178223%_
                                                '%#declare))
                                          (_%K178171%_
                                           _%rest178172%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd178170%_)
                                                 _%r178173%_))
                                          (_%E178207178216%_))))
                                  (_%E178207178216%_))))
                           (_%E178199178240%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178174178212%_)
                                  (let ((_%e178204178232%_
                                         (gx#syntax-e _%e178174178212%_)))
                                    (let ((_%hd178205178235%_
                                           (##car _%e178204178232%_))
                                          (_%tl178206178237%_
                                           (##cdr _%e178204178232%_)))
                                      (if (and (gx#identifier?
                                                _%hd178205178235%_)
                                               (gx#core-identifier=?
                                                _%hd178205178235%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd178170%_)
                                            (_%K178171%_
                                             _%rest178172%_
                                             _%r178173%_))
                                          (_%E178203178228%_))))
                                  (_%E178203178228%_))))
                           (_%E178189178252%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178174178212%_)
                                  (let ((_%e178200178244%_
                                         (gx#syntax-e _%e178174178212%_)))
                                    (let ((_%hd178201178247%_
                                           (##car _%e178200178244%_))
                                          (_%tl178202178249%_
                                           (##cdr _%e178200178244%_)))
                                      (if (and (gx#identifier?
                                                _%hd178201178247%_)
                                               (gx#core-identifier=?
                                                _%hd178201178247%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd178170%_)
                                            (_%K178171%_
                                             _%rest178172%_
                                             _%r178173%_))
                                          (_%E178199178240%_))))
                                  (_%E178199178240%_))))
                           (_%E178176178284%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178174178212%_)
                                  (let ((_%e178190178256%_
                                         (gx#syntax-e _%e178174178212%_)))
                                    (let ((_%hd178191178259%_
                                           (##car _%e178190178256%_))
                                          (_%tl178192178261%_
                                           (##cdr _%e178190178256%_)))
                                      (if (and (gx#identifier?
                                                _%hd178191178259%_)
                                               (gx#core-identifier=?
                                                _%hd178191178259%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl178192178261%_)
                                              (let ((_%e178193178264%_
                                                     (gx#syntax-e
                                                      _%tl178192178261%_)))
                                                (let ((_%hd178194178267%_
                                                       (##car _%e178193178264%_))
                                                      (_%tl178195178269%_
                                                       (##cdr _%e178193178264%_)))
                                                  (let ((_%hd-bind178272%_
                                                         _%hd178194178267%_))
                                                    (if (gx#stx-pair?
                                                         _%tl178195178269%_)
                                                        (let ((_%e178196178274%_
                                                               (gx#syntax-e
                                                                _%tl178195178269%_)))
                                                          (let ((_%hd178197178277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e178196178274%_))
                        (_%tl178198178279%_ (##cdr _%e178196178274%_)))
                    (let ((_%expr178282%_ _%hd178197178277%_))
                      (if (gx#stx-null? _%tl178198178279%_)
                          (if (gx#core-bind-values? _%hd-bind178272%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind178272%_)
                                (_%K178171%_
                                 _%rest178172%_
                                 (cons _%hd178170%_ _%r178173%_)))
                              (_%E178189178252%_))
                          (_%E178189178252%_)))))
                (_%E178189178252%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E178189178252%_))
                                          (_%E178189178252%_))))
                                  (_%E178189178252%_))))
                           (_%E178175178328%_
                            (lambda ()
                              (if (gx#stx-pair? _%e178174178212%_)
                                  (let ((_%e178177178288%_
                                         (gx#syntax-e _%e178174178212%_)))
                                    (let ((_%hd178178178291%_
                                           (##car _%e178177178288%_))
                                          (_%tl178179178293%_
                                           (##cdr _%e178177178288%_)))
                                      (if (and (gx#identifier?
                                                _%hd178178178291%_)
                                               (gx#core-identifier=?
                                                _%hd178178178291%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl178179178293%_)
                                              (let ((_%e178180178296%_
                                                     (gx#syntax-e
                                                      _%tl178179178293%_)))
                                                (let ((_%hd178181178299%_
                                                       (##car _%e178180178296%_))
                                                      (_%tl178182178301%_
                                                       (##cdr _%e178180178296%_)))
                                                  (if (gx#stx-pair?
                                                       _%hd178181178299%_)
                                                      (let ((_%e178186178304%_
                                                             (gx#syntax-e
                                                              _%hd178181178299%_)))
                                                        (let ((_%hd178187178307%_
                                                               (##car _%e178186178304%_))
                                                              (_%tl178188178309%_
                                                               (##cdr _%e178186178304%_)))
                                                          (let ((_%id178312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd178187178307%_))
                    (if (gx#stx-null? _%tl178188178309%_)
                        (if (gx#stx-pair? _%tl178182178301%_)
                            (let ((_%e178183178314%_
                                   (gx#syntax-e _%tl178182178301%_)))
                              (let ((_%hd178184178317%_
                                     (##car _%e178183178314%_))
                                    (_%tl178185178319%_
                                     (##cdr _%e178183178314%_)))
                                (let* ((_%expr178322%_ _%hd178184178317%_)
                                       (_%props178324%_ _%tl178185178319%_))
                                  (if (gx#identifier? _%id178312%_)
                                      (let ((_%bind178326%_
                                             (gx#core-bind-runtime!__0
                                              _%id178312%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind178326%_
                                         _%props178324%_)
                                        (_%K178171%_
                                         _%rest178172%_
                                         (cons _%hd178170%_ _%r178173%_)))
                                      (_%E178176178284%_)))))
                            (_%E178176178284%_))
                        (_%E178176178284%_)))))
              (_%E178176178284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E178176178284%_))
                                          (_%E178176178284%_))))
                                  (_%E178176178284%_)))))
                      (_%E178175178328%_))))
                 (_%wrap-internal178012%_
                  (lambda (_%rbody178014%_)
                    (let _%lp178016%_ ((_%rest178018%_ _%rbody178014%_)
                                       (_%decls178019%_ '())
                                       (_%bind178020%_ '())
                                       (_%body178021%_ '()))
                      (let* ((_%e178022178029%_ _%rest178018%_)
                             (_%E178024178078%_
                              (lambda ()
                                (let* ((_%body178073%_
                                        (let* ((_%body178032178042%_
                                                _%body178021%_)
                                               (_%else178035178050%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body178021%_)
                                                   (gx#stx-source
                                                    _%stx178006%_)))))
                                          (let ((_%K178040178070%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx178006%_)))
                                                (_%K178037178056%_
                                                 (lambda (_%expr178054%_)
                                                   _%expr178054%_)))
                                            (let ((_%try-match178034178066%_
                                                   (lambda ()
                                                     (if (pair? _%body178032178042%_)
                                                         (let ((_%tl178039178061%_
                                                                (##cdr _%body178032178042%_))
                                                               (_%hd178038178059%_
                                                                (##car _%body178032178042%_)))
                                                           (if (null? _%tl178039178061%_)
                                                               (let ((_%expr178064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd178038178059%_))
                         (_%K178037178056%_ _%expr178064%_))
                       (_%else178035178050%_)))
                 (_%else178035178050%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body178032178042%_)
                                                  (_%K178040178070%_)
                                                  (_%try-match178034178066%_))))))
                                       (_%body178075%_
                                        (if (null? _%bind178020%_)
                                            _%body178073%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind178020%_
                                                         (cons _%body178073%_
                                                               '())))
                                             (gx#stx-source _%stx178006%_)))))
                                  (if (null? _%decls178019%_)
                                      _%body178075%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls178019%_
                                                   (cons _%body178075%_ '())))
                                       (gx#stx-source _%stx178006%_))))))
                             (_%E178023178166%_
                              (lambda ()
                                (if (gx#stx-pair? _%e178022178029%_)
                                    (let ((_%e178025178082%_
                                           (gx#syntax-e _%e178022178029%_)))
                                      (let ((_%hd178026178085%_
                                             (##car _%e178025178082%_))
                                            (_%tl178027178087%_
                                             (##cdr _%e178025178082%_)))
                                        (let* ((_%hd178090%_
                                                _%hd178026178085%_)
                                               (_%rest178092%_
                                                _%tl178027178087%_)
                                               (_%e178093178110%_ _%hd178090%_)
                                               (_%E178105178114%_
                                                (lambda ()
                                                  (if (null? _%bind178020%_)
                                                      (_%lp178016%_
                                                       _%rest178092%_
                                                       _%decls178019%_
                                                       _%bind178020%_
                                                       (cons _%hd178090%_
                                                             _%body178021%_))
                                                      (_%lp178016%_
                                                       _%rest178092%_
                                                       _%decls178019%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd178090%_ '()))
                     _%bind178020%_)
               _%body178021%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E178095178128%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e178093178110%_)
                                                      (let ((_%e178106178118%_
                                                             (gx#syntax-e
                                                              _%e178093178110%_)))
                                                        (let ((_%hd178107178121%_
                                                               (##car _%e178106178118%_))
                                                              (_%tl178108178123%_
                                                               (##cdr _%e178106178118%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd178107178121%_)
                           (gx#core-identifier=?
                            _%hd178107178121%_
                            '%#declare))
                      (let ((_%xdecls178126%_ _%tl178108178123%_))
                        (_%lp178016%_
                         _%rest178092%_
                         (gx#stx-foldr cons _%decls178019%_ _%xdecls178126%_)
                         _%bind178020%_
                         _%body178021%_))
                      (_%E178105178114%_))))
              (_%E178105178114%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E178094178162%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e178093178110%_)
                                                      (let ((_%e178096178132%_
                                                             (gx#syntax-e
                                                              _%e178093178110%_)))
                                                        (let ((_%hd178097178135%_
                                                               (##car _%e178096178132%_))
                                                              (_%tl178098178137%_
                                                               (##cdr _%e178096178132%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd178097178135%_)
                           (gx#core-identifier=?
                            _%hd178097178135%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl178098178137%_)
                          (let ((_%e178099178140%_
                                 (gx#syntax-e _%tl178098178137%_)))
                            (let ((_%hd178100178143%_
                                   (##car _%e178099178140%_))
                                  (_%tl178101178145%_
                                   (##cdr _%e178099178140%_)))
                              (let ((_%hd-bind178148%_ _%hd178100178143%_))
                                (if (gx#stx-pair? _%tl178101178145%_)
                                    (let ((_%e178102178150%_
                                           (gx#syntax-e _%tl178101178145%_)))
                                      (let ((_%hd178103178153%_
                                             (##car _%e178102178150%_))
                                            (_%tl178104178155%_
                                             (##cdr _%e178102178150%_)))
                                        (let* ((_%expr178158%_
                                                _%hd178103178153%_)
                                               (_%ignore-props178160%_
                                                _%tl178104178155%_))
                                          (_%lp178016%_
                                           _%rest178092%_
                                           _%decls178019%_
                                           (cons (cons (gx#core-quote-bind-values
                                                        _%hd-bind178148%_)
                                                       (cons (gx#core-expand-expression
                                                              _%expr178158%_)
                                                             '()))
                                                 _%bind178020%_)
                                           _%body178021%_))))
                                    (_%E178095178128%_)))))
                          (_%E178095178128%_))
                      (_%E178095178128%_))))
              (_%E178095178128%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E178094178162%_))))
                                    (_%E178024178078%_)))))
                        (_%E178023178166%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body178007%_)
            (gx#stx-source _%stx178006%_))
           _%expand-special178009%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx177944%_)
        (let* ((_%e177945177952%_ _%stx177944%_)
               (_%E177947177956%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177945177952%_)))
               (_%E177946178002%_
                (lambda ()
                  (if (gx#stx-pair? _%e177945177952%_)
                      (let ((_%e177948177960%_
                             (gx#syntax-e _%e177945177952%_)))
                        (let ((_%hd177949177963%_ (##car _%e177948177960%_))
                              (_%tl177950177965%_ (##cdr _%e177948177960%_)))
                          (let ((_%body177968%_ _%tl177950177965%_))
                            (if (gx#stx-list? _%body177968%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl177970%_)
                                     (let* ((_%e177971177978%_ _%decl177970%_)
                                            (_%E177973177982%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e177971177978%_)))
                                            (_%E177972177998%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e177971177978%_)
                                                   (let ((_%e177974177986%_
                                                          (gx#syntax-e
                                                           _%e177971177978%_)))
                                                     (let ((_%hd177975177989%_
                                                            (##car _%e177974177986%_))
                                                           (_%tl177976177991%_
                                                            (##cdr _%e177974177986%_)))
                                                       (let* ((_%head177994%_
                                                               _%hd177975177989%_)
                                                              (_%args177996%_
                                                               _%tl177976177991%_))
                                                         (if (gx#stx-list?
                                                              _%args177996%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl177970%_)
                                                             (_%E177973177982%_)))))
                                                   (_%E177973177982%_)))))
                                       (_%E177972177998%_)))
                                   _%body177968%_))
                                 (gx#stx-source _%stx177944%_))
                                (_%E177947177956%_)))))
                      (_%E177947177956%_)))))
          (_%E177946178002%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx177848%_)
        (let* ((_%e177849177856%_ _%stx177848%_)
               (_%E177851177860%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177849177856%_)))
               (_%E177850177940%_
                (lambda ()
                  (if (gx#stx-pair? _%e177849177856%_)
                      (let ((_%e177852177864%_
                             (gx#syntax-e _%e177849177856%_)))
                        (let ((_%hd177853177867%_ (##car _%e177852177864%_))
                              (_%tl177854177869%_ (##cdr _%e177852177864%_)))
                          (let ((_%body177872%_ _%tl177854177869%_))
                            (let _%lp177874%_ ((_%rest177876%_ _%body177872%_)
                                               (_%r177877%_ '()))
                              (let* ((_%e177878177892%_ _%rest177876%_)
                                     (_%E177890177896%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx177848%_)))
                                     (_%E177880177900%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e177878177892%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r177877%_))
                                             (gx#stx-source _%stx177848%_))
                                            (_%E177890177896%_))))
                                     (_%E177879177936%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e177878177892%_)
                                            (let ((_%e177881177904%_
                                                   (gx#syntax-e
                                                    _%e177878177892%_)))
                                              (let ((_%hd177882177907%_
                                                     (##car _%e177881177904%_))
                                                    (_%tl177883177909%_
                                                     (##cdr _%e177881177904%_)))
                                                (if (gx#stx-pair?
                                                     _%hd177882177907%_)
                                                    (let ((_%e177884177912%_
                                                           (gx#syntax-e
                                                            _%hd177882177907%_)))
                                                      (let ((_%hd177885177915%_
                                                             (##car _%e177884177912%_))
                                                            (_%tl177886177917%_
                                                             (##cdr _%e177884177912%_)))
                                                        (let ((_%id177920%_
                                                               _%hd177885177915%_))
                                                          (if (gx#stx-pair?
                                                               _%tl177886177917%_)
                                                              (let ((_%e177887177922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl177886177917%_)))
                        (let ((_%hd177888177925%_ (##car _%e177887177922%_))
                              (_%tl177889177927%_ (##cdr _%e177887177922%_)))
                          (let ((_%eid177930%_ _%hd177888177925%_))
                            (if (gx#stx-null? _%tl177889177927%_)
                                (let ((_%rest177932%_ _%tl177883177909%_))
                                  (if (and (gx#identifier? _%id177920%_)
                                           (gx#identifier? _%eid177930%_))
                                      (let ((_%eid177934%_
                                             (gx#stx-e _%eid177930%_)))
                                        (gx#core-bind-extern!__0
                                         _%id177920%_
                                         _%eid177934%_)
                                        (_%lp177874%_
                                         _%rest177932%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id177920%_)
                                                     (cons _%eid177934%_ '()))
                                               _%r177877%_)))
                                      (_%E177880177900%_)))
                                (_%E177880177900%_)))))
                      (_%E177880177900%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E177880177900%_))))
                                            (_%E177880177900%_)))))
                                (_%E177879177936%_))))))
                      (_%E177851177860%_)))))
          (_%E177850177940%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx177737%_)
        (let* ((_%e177738177764%_ _%stx177737%_)
               (_%E177753177768%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177738177764%_)))
               (_%E177740177800%_
                (lambda ()
                  (if (gx#stx-pair? _%e177738177764%_)
                      (let ((_%e177754177772%_
                             (gx#syntax-e _%e177738177764%_)))
                        (let ((_%hd177755177775%_ (##car _%e177754177772%_))
                              (_%tl177756177777%_ (##cdr _%e177754177772%_)))
                          (if (gx#stx-pair? _%tl177756177777%_)
                              (let ((_%e177757177780%_
                                     (gx#syntax-e _%tl177756177777%_)))
                                (let ((_%hd177758177783%_
                                       (##car _%e177757177780%_))
                                      (_%tl177759177785%_
                                       (##cdr _%e177757177780%_)))
                                  (let ((_%hd177788%_ _%hd177758177783%_))
                                    (if (gx#stx-pair? _%tl177759177785%_)
                                        (let ((_%e177760177790%_
                                               (gx#syntax-e
                                                _%tl177759177785%_)))
                                          (let ((_%hd177761177793%_
                                                 (##car _%e177760177790%_))
                                                (_%tl177762177795%_
                                                 (##cdr _%e177760177790%_)))
                                            (let ((_%expr177798%_
                                                   _%hd177761177793%_))
                                              (if (gx#stx-null?
                                                   _%tl177762177795%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd177788%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd177788%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd177788%_)
                             (cons (gx#core-expand-expression _%expr177798%_)
                                   '())))
                 (gx#stx-source _%stx177737%_)))
              (_%E177753177768%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E177753177768%_)))))
                                        (_%E177753177768%_)))))
                              (_%E177753177768%_))))
                      (_%E177753177768%_))))
               (_%E177739177844%_
                (lambda ()
                  (if (gx#stx-pair? _%e177738177764%_)
                      (let ((_%e177741177804%_
                             (gx#syntax-e _%e177738177764%_)))
                        (let ((_%hd177742177807%_ (##car _%e177741177804%_))
                              (_%tl177743177809%_ (##cdr _%e177741177804%_)))
                          (if (gx#stx-pair? _%tl177743177809%_)
                              (let ((_%e177744177812%_
                                     (gx#syntax-e _%tl177743177809%_)))
                                (let ((_%hd177745177815%_
                                       (##car _%e177744177812%_))
                                      (_%tl177746177817%_
                                       (##cdr _%e177744177812%_)))
                                  (if (gx#stx-pair? _%hd177745177815%_)
                                      (let ((_%e177750177820%_
                                             (gx#syntax-e _%hd177745177815%_)))
                                        (let ((_%hd177751177823%_
                                               (##car _%e177750177820%_))
                                              (_%tl177752177825%_
                                               (##cdr _%e177750177820%_)))
                                          (let ((_%id177828%_
                                                 _%hd177751177823%_))
                                            (if (gx#stx-null?
                                                 _%tl177752177825%_)
                                                (if (gx#stx-pair?
                                                     _%tl177746177817%_)
                                                    (let ((_%e177747177830%_
                                                           (gx#syntax-e
                                                            _%tl177746177817%_)))
                                                      (let ((_%hd177748177833%_
                                                             (##car _%e177747177830%_))
                                                            (_%tl177749177835%_
                                                             (##cdr _%e177747177830%_)))
                                                        (let* ((_%expr177838%_
                                                                _%hd177748177833%_)
                                                               (_%props177840%_
                                                                _%tl177749177835%_))
                                                          (if (gx#identifier?
                                                               _%id177828%_)
                                                              (let ((_%bind177842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#core-bind-runtime!__0 _%id177828%_)))
                        (gx#core-bind-runtime-properties!
                         _%bind177842%_
                         _%props177840%_)
                        (gx#core-quote-syntax__1
                         (cons (gx#core-quote-syntax__0 '%#define-values)
                               (cons (gx#core-quote-bind-values
                                      (cons _%id177828%_ '()))
                                     (cons (gx#core-expand-expression
                                            _%expr177838%_)
                                           '())))
                         (gx#stx-source _%stx177737%_)))
                      (_%E177740177800%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E177740177800%_))
                                                (_%E177740177800%_)))))
                                      (_%E177740177800%_))))
                              (_%E177740177800%_))))
                      (_%E177740177800%_)))))
          (_%E177739177844%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx177676%_)
        (let* ((_%e177677177690%_ _%stx177676%_)
               (_%E177679177694%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177677177690%_)))
               (_%E177678177733%_
                (lambda ()
                  (if (gx#stx-pair? _%e177677177690%_)
                      (let ((_%e177680177698%_
                             (gx#syntax-e _%e177677177690%_)))
                        (let ((_%hd177681177701%_ (##car _%e177680177698%_))
                              (_%tl177682177703%_ (##cdr _%e177680177698%_)))
                          (if (gx#stx-pair? _%tl177682177703%_)
                              (let ((_%e177683177706%_
                                     (gx#syntax-e _%tl177682177703%_)))
                                (let ((_%hd177684177709%_
                                       (##car _%e177683177706%_))
                                      (_%tl177685177711%_
                                       (##cdr _%e177683177706%_)))
                                  (let ((_%id177714%_ _%hd177684177709%_))
                                    (if (gx#stx-pair? _%tl177685177711%_)
                                        (let ((_%e177686177716%_
                                               (gx#syntax-e
                                                _%tl177685177711%_)))
                                          (let ((_%hd177687177719%_
                                                 (##car _%e177686177716%_))
                                                (_%tl177688177721%_
                                                 (##cdr _%e177686177716%_)))
                                            (let* ((_%binding-id177724%_
                                                    _%hd177687177719%_)
                                                   (_%props177726%_
                                                    _%tl177688177721%_))
                                              (if (and (gx#identifier?
                                                        _%id177714%_)
                                                       (gx#identifier?
                                                        _%binding-id177724%_)
                                                       (gx#stx-list?
                                                        _%props177726%_))
                                                  (let* ((_%eid177728%_
                                                          (gx#stx-e
                                                           _%binding-id177724%_))
                                                         (_%bind177730%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id177714%_
                                                           _%eid177728%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind177730%_
                                                     _%props177726%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id177714%_)
                         (cons _%eid177728%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E177679177694%_)))))
                                        (_%E177679177694%_)))))
                              (_%E177679177694%_))))
                      (_%E177679177694%_)))))
          (_%E177678177733%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind177611%_ _%props177612%_)
        (letrec ((_%eval-prop177614%_
                  (lambda (_%prop177674%_)
                    (gx#eval-expression+1 _%prop177674%_))))
          (let _%loop177616%_ ((_%rest177618%_ _%props177612%_)
                               (_%props177619%_ '()))
            (let* ((_%e177620177631%_ _%rest177618%_)
                   (_%E177629177635%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e177620177631%_)))
                   (_%E177622177639%_
                    (lambda ()
                      (if (gx#stx-null? _%e177620177631%_)
                          (if (null? _%props177619%_)
                              '#!void
                              (##structure-set!
                               _%bind177611%_
                               (reverse! _%props177619%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%E177629177635%_))))
                   (_%E177621177670%_
                    (lambda ()
                      (if (gx#stx-pair? _%e177620177631%_)
                          (let ((_%e177623177643%_
                                 (gx#syntax-e _%e177620177631%_)))
                            (let ((_%hd177624177646%_
                                   (##car _%e177623177643%_))
                                  (_%tl177625177648%_
                                   (##cdr _%e177623177643%_)))
                              (let ((_%key177651%_ _%hd177624177646%_))
                                (if (gx#stx-pair? _%tl177625177648%_)
                                    (let ((_%e177626177653%_
                                           (gx#syntax-e _%tl177625177648%_)))
                                      (let ((_%hd177627177656%_
                                             (##car _%e177626177653%_))
                                            (_%tl177628177658%_
                                             (##cdr _%e177626177653%_)))
                                        (let* ((_%prop177661%_
                                                _%hd177627177656%_)
                                               (_%rest177663%_
                                                _%tl177628177658%_))
                                          (if (gx#stx-keyword? _%key177651%_)
                                              (let* ((_%key177665%_
                                                      (gx#stx-e _%key177651%_))
                                                     (_%$e177667%_
                                                      _%key177665%_))
                                                (if (eq? 'macro: _%$e177667%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind177611%_
                                                       (if (gx#identifier?
                                                            _%prop177661%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop177661%_)
                                                           (gx#eval-expression+1
                                                            _%prop177661%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop177616%_
                                                       _%rest177663%_
                                                       _%props177619%_))
                                                    (if (eq? 'type:
                                                             _%$e177667%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind177611%_
                                                           (gx#eval-expression+1
                                                            _%prop177661%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop177616%_
                                                           _%rest177663%_
                                                           _%props177619%_))
                                                        (_%loop177616%_
                                                         _%rest177663%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop177661%_)
                                                               (cons _%key177665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props177619%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E177622177639%_)))))
                                    (_%E177622177639%_)))))
                          (_%E177622177639%_)))))
              (_%E177621177670%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx177554%_)
        (let* ((_%e177555177568%_ _%stx177554%_)
               (_%E177557177572%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177555177568%_)))
               (_%E177556177607%_
                (lambda ()
                  (if (gx#stx-pair? _%e177555177568%_)
                      (let ((_%e177558177576%_
                             (gx#syntax-e _%e177555177568%_)))
                        (let ((_%hd177559177579%_ (##car _%e177558177576%_))
                              (_%tl177560177581%_ (##cdr _%e177558177576%_)))
                          (if (gx#stx-pair? _%tl177560177581%_)
                              (let ((_%e177561177584%_
                                     (gx#syntax-e _%tl177560177581%_)))
                                (let ((_%hd177562177587%_
                                       (##car _%e177561177584%_))
                                      (_%tl177563177589%_
                                       (##cdr _%e177561177584%_)))
                                  (let ((_%id177592%_ _%hd177562177587%_))
                                    (if (gx#stx-pair? _%tl177563177589%_)
                                        (let ((_%e177564177594%_
                                               (gx#syntax-e
                                                _%tl177563177589%_)))
                                          (let ((_%hd177565177597%_
                                                 (##car _%e177564177594%_))
                                                (_%tl177566177599%_
                                                 (##cdr _%e177564177594%_)))
                                            (let ((_%expr177602%_
                                                   _%hd177565177597%_))
                                              (if (gx#stx-null?
                                                   _%tl177566177599%_)
                                                  (if (gx#identifier?
                                                       _%id177592%_)
                                                      (let ((_g178768_
                                                             (gx#core-expand-expression+1
                                                              _%expr177602%_)))
                                                        (begin
                                                          (let ((_g178769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g178768_)
                             (##values-length _g178768_)
                             1)))
                    (if (not (##fx= _g178769_ 2))
                        (error "Context expects 2 values" _g178769_)))
                  (let ((_%e-stx177604%_ (##values-ref _g178768_ 0))
                        (_%e177605%_ (##values-ref _g178768_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id177592%_ _%e177605%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id177592%_)
                                   (cons _%e-stx177604%_ '())))
                       (gx#stx-source _%stx177554%_))))))
              (_%E177557177572%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E177557177572%_)))))
                                        (_%E177557177572%_)))))
                              (_%E177557177572%_))))
                      (_%E177557177572%_)))))
          (_%E177556177607%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx177498%_)
        (let* ((_%e177499177512%_ _%stx177498%_)
               (_%E177501177516%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177499177512%_)))
               (_%E177500177550%_
                (lambda ()
                  (if (gx#stx-pair? _%e177499177512%_)
                      (let ((_%e177502177520%_
                             (gx#syntax-e _%e177499177512%_)))
                        (let ((_%hd177503177523%_ (##car _%e177502177520%_))
                              (_%tl177504177525%_ (##cdr _%e177502177520%_)))
                          (if (gx#stx-pair? _%tl177504177525%_)
                              (let ((_%e177505177528%_
                                     (gx#syntax-e _%tl177504177525%_)))
                                (let ((_%hd177506177531%_
                                       (##car _%e177505177528%_))
                                      (_%tl177507177533%_
                                       (##cdr _%e177505177528%_)))
                                  (let ((_%id177536%_ _%hd177506177531%_))
                                    (if (gx#stx-pair? _%tl177507177533%_)
                                        (let ((_%e177508177538%_
                                               (gx#syntax-e
                                                _%tl177507177533%_)))
                                          (let ((_%hd177509177541%_
                                                 (##car _%e177508177538%_))
                                                (_%tl177510177543%_
                                                 (##cdr _%e177508177538%_)))
                                            (let ((_%alias-id177546%_
                                                   _%hd177509177541%_))
                                              (if (gx#stx-null?
                                                   _%tl177510177543%_)
                                                  (if (and (gx#identifier?
                                                            _%id177536%_)
                                                           (gx#identifier?
                                                            _%alias-id177546%_))
                                                      (let ((_%alias-id177548%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id177546%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id177536%_
                                                         _%alias-id177548%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id177536%_)
                             (cons _%alias-id177548%_ '())))))
              (_%E177501177516%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E177501177516%_)))))
                                        (_%E177501177516%_)))))
                              (_%E177501177516%_))))
                      (_%E177501177516%_)))))
          (_%E177500177550%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx177441%_ _%wrap?177442%_)
        (let* ((_%e177443177453%_ _%stx177441%_)
               (_%E177445177457%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177443177453%_)))
               (_%E177444177484%_
                (lambda ()
                  (if (gx#stx-pair? _%e177443177453%_)
                      (let ((_%e177446177461%_
                             (gx#syntax-e _%e177443177453%_)))
                        (let ((_%hd177447177464%_ (##car _%e177446177461%_))
                              (_%tl177448177466%_ (##cdr _%e177446177461%_)))
                          (if (gx#stx-pair? _%tl177448177466%_)
                              (let ((_%e177449177469%_
                                     (gx#syntax-e _%tl177448177466%_)))
                                (let ((_%hd177450177472%_
                                       (##car _%e177449177469%_))
                                      (_%tl177451177474%_
                                       (##cdr _%e177449177469%_)))
                                  (let* ((_%hd177477%_ _%hd177450177472%_)
                                         (_%body177479%_ _%tl177451177474%_))
                                    (if (gx#core-bind-values? _%hd177477%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd177477%_)
                                           (let ((_%body177482%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd177477%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx177441%_
                                                               _%body177479%_)
                                                              '()))))
                                             (if _%wrap?177442%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body177482%_)
                                                  (gx#stx-source
                                                   _%stx177441%_))
                                                 _%body177482%_)))
                                         gx#current-expander-context
                                         (let ((__obj178751
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj178751)
                                           __obj178751))
                                        (_%E177445177457%_)))))
                              (_%E177445177457%_))))
                      (_%E177445177457%_)))))
          (_%E177444177484%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx177491%_)
        (let ((_%wrap?177493%_ '#t))
          (gx#core-expand-lambda%__% _%stx177491%_ _%wrap?177493%_))))
    (define gx#core-expand-lambda%
      (lambda _g178770_
        (let ((_g178771_ (##length _g178770_)))
          (cond ((##fx= _g178771_ 1)
                 (apply gx#core-expand-lambda%__0 _g178770_))
                ((##fx= _g178771_ 2)
                 (apply gx#core-expand-lambda%__% _g178770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g178770_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx177405%_)
        (let* ((_%e177406177413%_ _%stx177405%_)
               (_%E177408177417%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177406177413%_)))
               (_%E177407177436%_
                (lambda ()
                  (if (gx#stx-pair? _%e177406177413%_)
                      (let ((_%e177409177421%_
                             (gx#syntax-e _%e177406177413%_)))
                        (let ((_%hd177410177424%_ (##car _%e177409177421%_))
                              (_%tl177411177426%_ (##cdr _%e177409177421%_)))
                          (let ((_%clauses177429%_ _%tl177411177426%_))
                            (if (gx#stx-list? _%clauses177429%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause177431%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause177431%_)
                                       (let ((_%$e177433%_
                                              (gx#stx-source
                                               _%clause177431%_)))
                                         (if _%$e177433%_
                                             _%$e177433%_
                                             (gx#stx-source _%stx177405%_))))
                                      '#f))
                                   _%clauses177429%_))
                                 (gx#stx-source _%stx177405%_))
                                (_%E177408177417%_)))))
                      (_%E177408177417%_)))))
          (_%E177407177436%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx177359%_)
        (let* ((_%e177360177370%_ _%stx177359%_)
               (_%E177362177374%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177360177370%_)))
               (_%E177361177401%_
                (lambda ()
                  (if (gx#stx-pair? _%e177360177370%_)
                      (let ((_%e177363177378%_
                             (gx#syntax-e _%e177360177370%_)))
                        (let ((_%hd177364177381%_ (##car _%e177363177378%_))
                              (_%tl177365177383%_ (##cdr _%e177363177378%_)))
                          (if (gx#stx-pair? _%tl177365177383%_)
                              (let ((_%e177366177386%_
                                     (gx#syntax-e _%tl177365177383%_)))
                                (let ((_%hd177367177389%_
                                       (##car _%e177366177386%_))
                                      (_%tl177368177391%_
                                       (##cdr _%e177366177386%_)))
                                  (let* ((_%hd177394%_ _%hd177367177389%_)
                                         (_%body177396%_ _%tl177368177391%_))
                                    (if (gx#core-expand-let-bind? _%hd177394%_)
                                        (let ((_%expressions177398%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd177394%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd177394%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd177394%_
                                                           _%expressions177398%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx177359%_
                         _%body177396%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx177359%_)))
                                           gx#current-expander-context
                                           (let ((__obj178752
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj178752)
                                             __obj178752)))
                                        (_%E177362177374%_)))))
                              (_%E177362177374%_))))
                      (_%E177362177374%_)))))
          (_%E177361177401%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx177304%_ _%form177305%_)
        (let* ((_%e177306177316%_ _%stx177304%_)
               (_%E177308177320%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177306177316%_)))
               (_%E177307177345%_
                (lambda ()
                  (if (gx#stx-pair? _%e177306177316%_)
                      (let ((_%e177309177324%_
                             (gx#syntax-e _%e177306177316%_)))
                        (let ((_%hd177310177327%_ (##car _%e177309177324%_))
                              (_%tl177311177329%_ (##cdr _%e177309177324%_)))
                          (if (gx#stx-pair? _%tl177311177329%_)
                              (let ((_%e177312177332%_
                                     (gx#syntax-e _%tl177311177329%_)))
                                (let ((_%hd177313177335%_
                                       (##car _%e177312177332%_))
                                      (_%tl177314177337%_
                                       (##cdr _%e177312177332%_)))
                                  (let* ((_%hd177340%_ _%hd177313177335%_)
                                         (_%body177342%_ _%tl177314177337%_))
                                    (if (gx#core-expand-let-bind? _%hd177340%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd177340%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form177305%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd177340%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd177340%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx177304%_
                                                               _%body177342%_)
                                                              '())))
                                            (gx#stx-source _%stx177304%_)))
                                         gx#current-expander-context
                                         (let ((__obj178753
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj178753)
                                           __obj178753))
                                        (_%E177308177320%_)))))
                              (_%E177308177320%_))))
                      (_%E177308177320%_)))))
          (_%E177307177345%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx177352%_)
        (let ((_%form177354%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx177352%_ _%form177354%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g178772_
        (let ((_g178773_ (##length _g178772_)))
          (cond ((##fx= _g178773_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g178772_))
                ((##fx= _g178773_ 2)
                 (apply gx#core-expand-letrec-values%__% _g178772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g178772_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx177301%_)
        (gx#core-expand-letrec-values%__% _%stx177301%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx177258%_)
        (if (gx#stx-list? _%stx177258%_)
            (gx#stx-andmap
             (lambda (_%bind177260%_)
               (let* ((_%e177261177271%_ _%bind177260%_)
                      (_%E177263177275%_ (lambda () '#f))
                      (_%E177262177297%_
                       (lambda ()
                         (if (gx#stx-pair? _%e177261177271%_)
                             (let ((_%e177264177279%_
                                    (gx#syntax-e _%e177261177271%_)))
                               (let ((_%hd177265177282%_
                                      (##car _%e177264177279%_))
                                     (_%tl177266177284%_
                                      (##cdr _%e177264177279%_)))
                                 (let ((_%hd177287%_ _%hd177265177282%_))
                                   (if (gx#stx-pair? _%tl177266177284%_)
                                       (let ((_%e177267177289%_
                                              (gx#syntax-e
                                               _%tl177266177284%_)))
                                         (let ((_%hd177268177292%_
                                                (##car _%e177267177289%_))
                                               (_%tl177269177294%_
                                                (##cdr _%e177267177289%_)))
                                           (if (gx#stx-null?
                                                _%tl177269177294%_)
                                               (gx#core-bind-values?
                                                _%hd177287%_)
                                               (_%E177263177275%_))))
                                       (_%E177263177275%_)))))
                             (_%E177263177275%_)))))
                 (_%E177262177297%_)))
             _%stx177258%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind177217%_)
        (let* ((_%e177218177228%_ _%bind177217%_)
               (_%E177220177232%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177218177228%_)))
               (_%E177219177254%_
                (lambda ()
                  (if (gx#stx-pair? _%e177218177228%_)
                      (let ((_%e177221177236%_
                             (gx#syntax-e _%e177218177228%_)))
                        (let ((_%hd177222177239%_ (##car _%e177221177236%_))
                              (_%tl177223177241%_ (##cdr _%e177221177236%_)))
                          (if (gx#stx-pair? _%tl177223177241%_)
                              (let ((_%e177224177244%_
                                     (gx#syntax-e _%tl177223177241%_)))
                                (let ((_%hd177225177247%_
                                       (##car _%e177224177244%_))
                                      (_%tl177226177249%_
                                       (##cdr _%e177224177244%_)))
                                  (let ((_%expr177252%_ _%hd177225177247%_))
                                    (if (gx#stx-null? _%tl177226177249%_)
                                        (gx#core-expand-expression
                                         _%expr177252%_)
                                        (_%E177220177232%_)))))
                              (_%E177220177232%_))))
                      (_%E177220177232%_)))))
          (_%E177219177254%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind177176%_)
        (let* ((_%e177177177187%_ _%bind177176%_)
               (_%E177179177191%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177177177187%_)))
               (_%E177178177213%_
                (lambda ()
                  (if (gx#stx-pair? _%e177177177187%_)
                      (let ((_%e177180177195%_
                             (gx#syntax-e _%e177177177187%_)))
                        (let ((_%hd177181177198%_ (##car _%e177180177195%_))
                              (_%tl177182177200%_ (##cdr _%e177180177195%_)))
                          (let ((_%hd177203%_ _%hd177181177198%_))
                            (if (gx#stx-pair? _%tl177182177200%_)
                                (let ((_%e177183177205%_
                                       (gx#syntax-e _%tl177182177200%_)))
                                  (let ((_%hd177184177208%_
                                         (##car _%e177183177205%_))
                                        (_%tl177185177210%_
                                         (##cdr _%e177183177205%_)))
                                    (if (gx#stx-null? _%tl177185177210%_)
                                        (gx#core-bind-values!__0 _%hd177203%_)
                                        (_%E177179177191%_))))
                                (_%E177179177191%_)))))
                      (_%E177179177191%_)))))
          (_%E177178177213%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind177134%_ _%expr177135%_)
        (let* ((_%e177136177146%_ _%bind177134%_)
               (_%E177138177150%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177136177146%_)))
               (_%E177137177172%_
                (lambda ()
                  (if (gx#stx-pair? _%e177136177146%_)
                      (let ((_%e177139177154%_
                             (gx#syntax-e _%e177136177146%_)))
                        (let ((_%hd177140177157%_ (##car _%e177139177154%_))
                              (_%tl177141177159%_ (##cdr _%e177139177154%_)))
                          (let ((_%hd177162%_ _%hd177140177157%_))
                            (if (gx#stx-pair? _%tl177141177159%_)
                                (let ((_%e177142177164%_
                                       (gx#syntax-e _%tl177141177159%_)))
                                  (let ((_%hd177143177167%_
                                         (##car _%e177142177164%_))
                                        (_%tl177144177169%_
                                         (##cdr _%e177142177164%_)))
                                    (if (gx#stx-null? _%tl177144177169%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd177162%_)
                                              (cons _%expr177135%_ '()))
                                        (_%E177138177150%_))))
                                (_%E177138177150%_)))))
                      (_%E177138177150%_)))))
          (_%E177137177172%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx177088%_)
        (let* ((_%e177089177099%_ _%stx177088%_)
               (_%E177091177103%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177089177099%_)))
               (_%E177090177130%_
                (lambda ()
                  (if (gx#stx-pair? _%e177089177099%_)
                      (let ((_%e177092177107%_
                             (gx#syntax-e _%e177089177099%_)))
                        (let ((_%hd177093177110%_ (##car _%e177092177107%_))
                              (_%tl177094177112%_ (##cdr _%e177092177107%_)))
                          (if (gx#stx-pair? _%tl177094177112%_)
                              (let ((_%e177095177115%_
                                     (gx#syntax-e _%tl177094177112%_)))
                                (let ((_%hd177096177118%_
                                       (##car _%e177095177115%_))
                                      (_%tl177097177120%_
                                       (##cdr _%e177095177115%_)))
                                  (let* ((_%hd177123%_ _%hd177096177118%_)
                                         (_%body177125%_ _%tl177097177120%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd177123%_)
                                        (let ((_%expanders177127%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd177123%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd177123%_
                                              _%expanders177127%_)
                                             (gx#core-expand-local-block
                                              _%stx177088%_
                                              _%body177125%_))
                                           gx#current-expander-context
                                           (let ((__obj178754
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj178754)
                                             __obj178754)))
                                        (_%E177091177103%_)))))
                              (_%E177091177103%_))))
                      (_%E177091177103%_)))))
          (_%E177090177130%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx177037%_)
        (let* ((_%e177038177048%_ _%stx177037%_)
               (_%E177040177052%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e177038177048%_)))
               (_%E177039177084%_
                (lambda ()
                  (if (gx#stx-pair? _%e177038177048%_)
                      (let ((_%e177041177056%_
                             (gx#syntax-e _%e177038177048%_)))
                        (let ((_%hd177042177059%_ (##car _%e177041177056%_))
                              (_%tl177043177061%_ (##cdr _%e177041177056%_)))
                          (if (gx#stx-pair? _%tl177043177061%_)
                              (let ((_%e177044177064%_
                                     (gx#syntax-e _%tl177043177061%_)))
                                (let ((_%hd177045177067%_
                                       (##car _%e177044177064%_))
                                      (_%tl177046177069%_
                                       (##cdr _%e177044177064%_)))
                                  (let* ((_%hd177072%_ _%hd177045177067%_)
                                         (_%body177074%_ _%tl177046177069%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd177072%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd177072%_
                                            (make-list
                                             (gx#stx-length _%hd177072%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g177076177079%_
                                                     _%g177077177081%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g177076177079%_
                                               _%g177077177081%_
                                               '#t))
                                            _%hd177072%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd177072%_))
                                           (gx#core-expand-local-block
                                            _%stx177037%_
                                            _%body177074%_))
                                         gx#current-expander-context
                                         (let ((__obj178755
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj178755)
                                           __obj178755))
                                        (_%E177040177052%_)))))
                              (_%E177040177052%_))))
                      (_%E177040177052%_)))))
          (_%E177039177084%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx176994%_)
        (if (gx#stx-list? _%stx176994%_)
            (gx#stx-andmap
             (lambda (_%bind176996%_)
               (let* ((_%e176997177007%_ _%bind176996%_)
                      (_%E176999177011%_ (lambda () '#f))
                      (_%E176998177033%_
                       (lambda ()
                         (if (gx#stx-pair? _%e176997177007%_)
                             (let ((_%e177000177015%_
                                    (gx#syntax-e _%e176997177007%_)))
                               (let ((_%hd177001177018%_
                                      (##car _%e177000177015%_))
                                     (_%tl177002177020%_
                                      (##cdr _%e177000177015%_)))
                                 (let ((_%hd177023%_ _%hd177001177018%_))
                                   (if (gx#stx-pair? _%tl177002177020%_)
                                       (let ((_%e177003177025%_
                                              (gx#syntax-e
                                               _%tl177002177020%_)))
                                         (let ((_%hd177004177028%_
                                                (##car _%e177003177025%_))
                                               (_%tl177005177030%_
                                                (##cdr _%e177003177025%_)))
                                           (if (gx#stx-null?
                                                _%tl177005177030%_)
                                               (gx#identifier? _%hd177023%_)
                                               (_%E176999177011%_))))
                                       (_%E176999177011%_)))))
                             (_%E176999177011%_)))))
                 (_%E176998177033%_)))
             _%stx176994%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind176950%_)
        (let* ((_%e176951176961%_ _%bind176950%_)
               (_%E176953176965%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176951176961%_)))
               (_%E176952176990%_
                (lambda ()
                  (if (gx#stx-pair? _%e176951176961%_)
                      (let ((_%e176954176969%_
                             (gx#syntax-e _%e176951176961%_)))
                        (let ((_%hd176955176972%_ (##car _%e176954176969%_))
                              (_%tl176956176974%_ (##cdr _%e176954176969%_)))
                          (if (gx#stx-pair? _%tl176956176974%_)
                              (let ((_%e176957176977%_
                                     (gx#syntax-e _%tl176956176974%_)))
                                (let ((_%hd176958176980%_
                                       (##car _%e176957176977%_))
                                      (_%tl176959176982%_
                                       (##cdr _%e176957176977%_)))
                                  (let ((_%expr176985%_ _%hd176958176980%_))
                                    (if (gx#stx-null? _%tl176959176982%_)
                                        (let ((_g178774_
                                               (gx#core-expand-expression+1
                                                _%expr176985%_)))
                                          (begin
                                            (let ((_g178775_
                                                   (if (##values? _g178774_)
                                                       (##values-length
                                                        _g178774_)
                                                       1)))
                                              (if (not (##fx= _g178775_ 2))
                                                  (error "Context expects 2 values"
                                                         _g178775_)))
                                            (let ((_%_176987%_
                                                   (##values-ref _g178774_ 0))
                                                  (_%e176988%_
                                                   (##values-ref _g178774_ 1)))
                                              _%e176988%_)))
                                        (_%E176953176965%_)))))
                              (_%E176953176965%_))))
                      (_%E176953176965%_)))))
          (_%E176952176990%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind176895%_ _%e176896%_ _%rebind?176897%_)
        (let* ((_%e176898176908%_ _%bind176895%_)
               (_%E176900176912%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176898176908%_)))
               (_%E176899176934%_
                (lambda ()
                  (if (gx#stx-pair? _%e176898176908%_)
                      (let ((_%e176901176916%_
                             (gx#syntax-e _%e176898176908%_)))
                        (let ((_%hd176902176919%_ (##car _%e176901176916%_))
                              (_%tl176903176921%_ (##cdr _%e176901176916%_)))
                          (let ((_%id176924%_ _%hd176902176919%_))
                            (if (gx#stx-pair? _%tl176903176921%_)
                                (let ((_%e176904176926%_
                                       (gx#syntax-e _%tl176903176921%_)))
                                  (let ((_%hd176905176929%_
                                         (##car _%e176904176926%_))
                                        (_%tl176906176931%_
                                         (##cdr _%e176904176926%_)))
                                    (if (gx#stx-null? _%tl176906176931%_)
                                        (gx#core-bind-syntax!__1
                                         _%id176924%_
                                         _%e176896%_
                                         _%rebind?176897%_)
                                        (_%E176900176912%_))))
                                (_%E176900176912%_)))))
                      (_%E176900176912%_)))))
          (_%E176899176934%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind176941%_ _%e176942%_)
        (let ((_%rebind?176944%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind176941%_
           _%e176942%_
           _%rebind?176944%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g178776_
        (let ((_g178777_ (##length _g178776_)))
          (cond ((##fx= _g178777_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g178776_))
                ((##fx= _g178777_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g178776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g178776_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx176853%_)
        (let* ((_%e176854176864%_ _%stx176853%_)
               (_%E176856176868%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176854176864%_)))
               (_%E176855176890%_
                (lambda ()
                  (if (gx#stx-pair? _%e176854176864%_)
                      (let ((_%e176857176872%_
                             (gx#syntax-e _%e176854176864%_)))
                        (let ((_%hd176858176875%_ (##car _%e176857176872%_))
                              (_%tl176859176877%_ (##cdr _%e176857176872%_)))
                          (if (gx#stx-pair? _%tl176859176877%_)
                              (let ((_%e176860176880%_
                                     (gx#syntax-e _%tl176859176877%_)))
                                (let ((_%hd176861176883%_
                                       (##car _%e176860176880%_))
                                      (_%tl176862176885%_
                                       (##cdr _%e176860176880%_)))
                                  (let ((_%expr176888%_ _%hd176861176883%_))
                                    (if (gx#stx-null? _%tl176862176885%_)
                                        (gx#core-expand-expression
                                         _%expr176888%_)
                                        (_%E176856176868%_)))))
                              (_%E176856176868%_))))
                      (_%E176856176868%_)))))
          (_%E176855176890%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx176812%_)
        (let* ((_%e176813176823%_ _%stx176812%_)
               (_%E176815176827%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176813176823%_)))
               (_%E176814176849%_
                (lambda ()
                  (if (gx#stx-pair? _%e176813176823%_)
                      (let ((_%e176816176831%_
                             (gx#syntax-e _%e176813176823%_)))
                        (let ((_%hd176817176834%_ (##car _%e176816176831%_))
                              (_%tl176818176836%_ (##cdr _%e176816176831%_)))
                          (if (gx#stx-pair? _%tl176818176836%_)
                              (let ((_%e176819176839%_
                                     (gx#syntax-e _%tl176818176836%_)))
                                (let ((_%hd176820176842%_
                                       (##car _%e176819176839%_))
                                      (_%tl176821176844%_
                                       (##cdr _%e176819176839%_)))
                                  (let ((_%e176847%_ _%hd176820176842%_))
                                    (if (gx#stx-null? _%tl176821176844%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e176847%_)
                                                     '()))
                                         (gx#stx-source _%stx176812%_))
                                        (_%E176815176827%_)))))
                              (_%E176815176827%_))))
                      (_%E176815176827%_)))))
          (_%E176814176849%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx176771%_)
        (let* ((_%e176772176782%_ _%stx176771%_)
               (_%E176774176786%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176772176782%_)))
               (_%E176773176808%_
                (lambda ()
                  (if (gx#stx-pair? _%e176772176782%_)
                      (let ((_%e176775176790%_
                             (gx#syntax-e _%e176772176782%_)))
                        (let ((_%hd176776176793%_ (##car _%e176775176790%_))
                              (_%tl176777176795%_ (##cdr _%e176775176790%_)))
                          (if (gx#stx-pair? _%tl176777176795%_)
                              (let ((_%e176778176798%_
                                     (gx#syntax-e _%tl176777176795%_)))
                                (let ((_%hd176779176801%_
                                       (##car _%e176778176798%_))
                                      (_%tl176780176803%_
                                       (##cdr _%e176778176798%_)))
                                  (let ((_%e176806%_ _%hd176779176801%_))
                                    (if (gx#stx-null? _%tl176780176803%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e176806%_)
                                                     '()))
                                         (gx#stx-source _%stx176771%_))
                                        (_%E176774176786%_)))))
                              (_%E176774176786%_))))
                      (_%E176774176786%_)))))
          (_%E176773176808%_))))
    (define gx#core-expand-call%
      (lambda (_%stx176665%_)
        (letrec ((_%expand-runtime-call176667%_
                  (lambda (_%rator-expr176768%_ _%args176769%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr176768%_
                      (gx#stx-map1 gx#core-expand-expression _%args176769%_))
                     (gx#stx-source _%stx176665%_)))))
          (let* ((_%e176668176678%_ _%stx176665%_)
                 (_%E176670176682%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176668176678%_)))
                 (_%E176669176764%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176668176678%_)
                        (let ((_%e176671176686%_
                               (gx#syntax-e _%e176668176678%_)))
                          (let ((_%hd176672176689%_ (##car _%e176671176686%_))
                                (_%tl176673176691%_ (##cdr _%e176671176686%_)))
                            (if (gx#stx-pair? _%tl176673176691%_)
                                (let ((_%e176674176694%_
                                       (gx#syntax-e _%tl176673176691%_)))
                                  (let ((_%hd176675176697%_
                                         (##car _%e176674176694%_))
                                        (_%tl176676176699%_
                                         (##cdr _%e176674176694%_)))
                                    (let* ((_%rator176702%_ _%hd176675176697%_)
                                           (_%args176704%_ _%tl176676176699%_))
                                      (if (gx#stx-list? _%args176704%_)
                                          (let* ((_%rator-expr176706%_
                                                  (gx#core-expand-expression
                                                   _%rator176702%_))
                                                 (_%e176707176717%_
                                                  _%rator-expr176706%_)
                                                 (_%E176709176721%_
                                                  (lambda ()
                                                    (_%expand-runtime-call176667%_
                                                     _%rator-expr176706%_
                                                     _%args176704%_)))
                                                 (_%E176708176760%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%e176707176717%_)
                                                        (let ((_%e176710176725%_
                                                               (gx#syntax-e
                                                                _%e176707176717%_)))
                                                          (let ((_%hd176711176728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e176710176725%_))
                        (_%tl176712176730%_ (##cdr _%e176710176725%_)))
                    (if (and (gx#identifier? _%hd176711176728%_)
                             (gx#core-identifier=? _%hd176711176728%_ '%#ref))
                        (if (gx#stx-pair? _%tl176712176730%_)
                            (let ((_%e176713176733%_
                                   (gx#syntax-e _%tl176712176730%_)))
                              (let ((_%hd176714176736%_
                                     (##car _%e176713176733%_))
                                    (_%tl176715176738%_
                                     (##cdr _%e176713176733%_)))
                                (let ((_%id176741%_ _%hd176714176736%_))
                                  (if (gx#stx-null? _%tl176715176738%_)
                                      (let ((_%$e176743%_
                                             (gx#resolve-identifier__0
                                              _%id176741%_)))
                                        (if _%$e176743%_
                                            ((lambda (_%bind176746%_)
                                               (let _%again176748%_ ((_%bind176750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%bind176746%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e176752%_
                                                        (if (##structure-instance-of?
                                                             _%bind176750%_
                                                             'gx#runtime-binding::t)
                                                            (##unchecked-structure-ref
                                                             _%bind176750%_
                                                             '6
                                                             '#f
                                                             '#f)
                                                            '#f)))
                                                   (if _%$e176752%_
                                                       ((lambda (_%macro176755%_)
                                                          (gx#core-expand-expression
                                                           (gx#stx-wrap-source
                                                            (cons _%macro176755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%args176704%_)
                    (gx#stx-source _%stx176665%_))))
                _%$e176752%_)
               (if (##structure-direct-instance-of?
                    _%bind176750%_
                    'gx#import-binding::t)
                   (_%again176748%_
                    (##unchecked-structure-ref _%bind176750%_ '5 '#f '#f))
                   (_%expand-runtime-call176667%_
                    _%rator-expr176706%_
                    _%args176704%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$e176743%_)
                                            (_%expand-runtime-call176667%_
                                             _%rator-expr176706%_
                                             _%args176704%_)))
                                      (_%E176709176721%_)))))
                            (_%E176709176721%_))
                        (_%E176709176721%_))))
                (_%E176709176721%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E176708176760%_))
                                          (_%E176670176682%_)))))
                                (_%E176670176682%_))))
                        (_%E176670176682%_)))))
            (_%E176669176764%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx176598%_)
        (let* ((_%e176599176615%_ _%stx176598%_)
               (_%E176601176619%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176599176615%_)))
               (_%E176600176661%_
                (lambda ()
                  (if (gx#stx-pair? _%e176599176615%_)
                      (let ((_%e176602176623%_
                             (gx#syntax-e _%e176599176615%_)))
                        (let ((_%hd176603176626%_ (##car _%e176602176623%_))
                              (_%tl176604176628%_ (##cdr _%e176602176623%_)))
                          (if (gx#stx-pair? _%tl176604176628%_)
                              (let ((_%e176605176631%_
                                     (gx#syntax-e _%tl176604176628%_)))
                                (let ((_%hd176606176634%_
                                       (##car _%e176605176631%_))
                                      (_%tl176607176636%_
                                       (##cdr _%e176605176631%_)))
                                  (let ((_%test176639%_ _%hd176606176634%_))
                                    (if (gx#stx-pair? _%tl176607176636%_)
                                        (let ((_%e176608176641%_
                                               (gx#syntax-e
                                                _%tl176607176636%_)))
                                          (let ((_%hd176609176644%_
                                                 (##car _%e176608176641%_))
                                                (_%tl176610176646%_
                                                 (##cdr _%e176608176641%_)))
                                            (let ((_%K176649%_
                                                   _%hd176609176644%_))
                                              (if (gx#stx-pair?
                                                   _%tl176610176646%_)
                                                  (let ((_%e176611176651%_
                                                         (gx#syntax-e
                                                          _%tl176610176646%_)))
                                                    (let ((_%hd176612176654%_
                                                           (##car _%e176611176651%_))
                                                          (_%tl176613176656%_
                                                           (##cdr _%e176611176651%_)))
                                                      (let ((_%E176659%_
                                                             _%hd176612176654%_))
                                                        (if (gx#stx-null?
                                                             _%tl176613176656%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test176639%_)
                                 (cons (gx#core-expand-expression _%K176649%_)
                                       (cons (gx#core-expand-expression
                                              _%E176659%_)
                                             '()))))
                     (gx#stx-source _%stx176598%_))
                    (_%E176601176619%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E176601176619%_)))))
                                        (_%E176601176619%_)))))
                              (_%E176601176619%_))))
                      (_%E176601176619%_)))))
          (_%E176600176661%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx176557%_)
        (let* ((_%e176558176568%_ _%stx176557%_)
               (_%E176560176572%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176558176568%_)))
               (_%E176559176594%_
                (lambda ()
                  (if (gx#stx-pair? _%e176558176568%_)
                      (let ((_%e176561176576%_
                             (gx#syntax-e _%e176558176568%_)))
                        (let ((_%hd176562176579%_ (##car _%e176561176576%_))
                              (_%tl176563176581%_ (##cdr _%e176561176576%_)))
                          (if (gx#stx-pair? _%tl176563176581%_)
                              (let ((_%e176564176584%_
                                     (gx#syntax-e _%tl176563176581%_)))
                                (let ((_%hd176565176587%_
                                       (##car _%e176564176584%_))
                                      (_%tl176566176589%_
                                       (##cdr _%e176564176584%_)))
                                  (let ((_%id176592%_ _%hd176565176587%_))
                                    (if (gx#stx-null? _%tl176566176589%_)
                                        (if (gx#identifier? _%id176592%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id176592%_
                                                          _%stx176557%_)
                                                         '()))
                                             (gx#stx-source _%stx176557%_))
                                            (_%E176560176572%_))
                                        (_%E176560176572%_)))))
                              (_%E176560176572%_))))
                      (_%E176560176572%_)))))
          (_%E176559176594%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx176503%_)
        (let* ((_%e176504176517%_ _%stx176503%_)
               (_%E176506176521%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176504176517%_)))
               (_%E176505176553%_
                (lambda ()
                  (if (gx#stx-pair? _%e176504176517%_)
                      (let ((_%e176507176525%_
                             (gx#syntax-e _%e176504176517%_)))
                        (let ((_%hd176508176528%_ (##car _%e176507176525%_))
                              (_%tl176509176530%_ (##cdr _%e176507176525%_)))
                          (if (gx#stx-pair? _%tl176509176530%_)
                              (let ((_%e176510176533%_
                                     (gx#syntax-e _%tl176509176530%_)))
                                (let ((_%hd176511176536%_
                                       (##car _%e176510176533%_))
                                      (_%tl176512176538%_
                                       (##cdr _%e176510176533%_)))
                                  (let ((_%id176541%_ _%hd176511176536%_))
                                    (if (gx#stx-pair? _%tl176512176538%_)
                                        (let ((_%e176513176543%_
                                               (gx#syntax-e
                                                _%tl176512176538%_)))
                                          (let ((_%hd176514176546%_
                                                 (##car _%e176513176543%_))
                                                (_%tl176515176548%_
                                                 (##cdr _%e176513176543%_)))
                                            (let ((_%expr176551%_
                                                   _%hd176514176546%_))
                                              (if (gx#stx-null?
                                                   _%tl176515176548%_)
                                                  (if (gx#identifier?
                                                       _%id176541%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id176541%_
                            _%stx176503%_)
                           (cons (gx#core-expand-expression _%expr176551%_)
                                 '())))
               (gx#stx-source _%stx176503%_))
              (_%E176506176521%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E176506176521%_)))))
                                        (_%E176506176521%_)))))
                              (_%E176506176521%_))))
                      (_%E176506176521%_)))))
          (_%E176505176553%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx176348%_)
        (letrec ((_%generate176350%_
                  (lambda (_%body176380%_)
                    (let _%lp176382%_ ((_%rest176384%_ _%body176380%_)
                                       (_%ns176385%_
                                        (gx#core-context-namespace__0))
                                       (_%r176386%_ '()))
                      (let* ((_%e176387176402%_ _%rest176384%_)
                             (_%E176400176406%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e176387176402%_)))
                             (_%E176396176410%_
                              (lambda ()
                                (if (gx#stx-null? _%e176387176402%_)
                                    (reverse _%r176386%_)
                                    (_%E176400176406%_))))
                             (_%E176389176467%_
                              (lambda ()
                                (if (gx#stx-pair? _%e176387176402%_)
                                    (let ((_%e176397176414%_
                                           (gx#syntax-e _%e176387176402%_)))
                                      (let ((_%hd176398176417%_
                                             (##car _%e176397176414%_))
                                            (_%tl176399176419%_
                                             (##cdr _%e176397176414%_)))
                                        (let* ((_%hd176422%_
                                                _%hd176398176417%_)
                                               (_%rest176424%_
                                                _%tl176399176419%_))
                                          (if (gx#identifier? _%hd176422%_)
                                              (_%lp176382%_
                                               _%rest176424%_
                                               _%ns176385%_
                                               (cons (cons _%hd176422%_
                                                           (cons (if _%ns176385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd176422%_
                              _%ns176385%_
                              '"#"
                              _%hd176422%_)
                             _%hd176422%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r176386%_))
                                              (let* ((_%e176425176435%_
                                                      _%hd176422%_)
                                                     (_%E176427176439%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e176425176435%_)))
                                                     (_%E176426176463%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e176425176435%_)
                                                            (let ((_%e176428176443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e176425176435%_)))
                      (let ((_%hd176429176446%_ (##car _%e176428176443%_))
                            (_%tl176430176448%_ (##cdr _%e176428176443%_)))
                        (let ((_%id176451%_ _%hd176429176446%_))
                          (if (gx#stx-pair? _%tl176430176448%_)
                              (let ((_%e176431176453%_
                                     (gx#syntax-e _%tl176430176448%_)))
                                (let ((_%hd176432176456%_
                                       (##car _%e176431176453%_))
                                      (_%tl176433176458%_
                                       (##cdr _%e176431176453%_)))
                                  (let ((_%eid176461%_ _%hd176432176456%_))
                                    (if (gx#stx-null? _%tl176433176458%_)
                                        (if (and (gx#identifier? _%id176451%_)
                                                 (gx#identifier?
                                                  _%eid176461%_))
                                            (_%lp176382%_
                                             _%rest176424%_
                                             _%ns176385%_
                                             (cons (cons _%id176451%_
                                                         (cons _%eid176461%_
                                                               '()))
                                                   _%r176386%_))
                                            (_%E176427176439%_))
                                        (_%E176427176439%_)))))
                              (_%E176427176439%_)))))
                    (_%E176427176439%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E176426176463%_))))))
                                    (_%E176396176410%_))))
                             (_%E176388176499%_
                              (lambda ()
                                (if (gx#stx-pair? _%e176387176402%_)
                                    (let ((_%e176390176471%_
                                           (gx#syntax-e _%e176387176402%_)))
                                      (let ((_%hd176391176474%_
                                             (##car _%e176390176471%_))
                                            (_%tl176392176476%_
                                             (##cdr _%e176390176471%_)))
                                        (if (eq? (gx#stx-e _%hd176391176474%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl176392176476%_)
                                                (let ((_%e176393176479%_
                                                       (gx#syntax-e
                                                        _%tl176392176476%_)))
                                                  (let ((_%hd176394176482%_
                                                         (##car _%e176393176479%_))
                                                        (_%tl176395176484%_
                                                         (##cdr _%e176393176479%_)))
                                                    (let* ((_%ns176487%_
                                                            _%hd176394176482%_)
                                                           (_%rest176489%_
                                                            _%tl176395176484%_)
                                                           (_%ns176497%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns176487%_)
                        (symbol->string (gx#stx-e _%ns176487%_))
                        (if (or (gx#stx-string? _%ns176487%_)
                                (gx#stx-false? _%ns176487%_))
                            (gx#stx-e _%ns176487%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx176348%_
                             _%ns176487%_)))))
              (_%lp176382%_ _%rest176489%_ _%ns176497%_ _%r176386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E176389176467%_))
                                            (_%E176389176467%_))))
                                    (_%E176389176467%_)))))
                        (_%E176388176499%_))))))
          (let* ((_%e176351176358%_ _%stx176348%_)
                 (_%E176353176362%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176351176358%_)))
                 (_%E176352176376%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176351176358%_)
                        (let ((_%e176354176366%_
                               (gx#syntax-e _%e176351176358%_)))
                          (let ((_%hd176355176369%_ (##car _%e176354176366%_))
                                (_%tl176356176371%_ (##cdr _%e176354176366%_)))
                            (let ((_%body176374%_ _%tl176356176371%_))
                              (if (gx#stx-list? _%body176374%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate176350%_ _%body176374%_))
                                  (_%E176353176362%_)))))
                        (_%E176353176362%_)))))
            (_%E176352176376%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx176305%_)
        (let* ((_%e176306176316%_ _%stx176305%_)
               (_%E176308176320%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176306176316%_)))
               (_%E176307176344%_
                (lambda ()
                  (if (gx#stx-pair? _%e176306176316%_)
                      (let ((_%e176309176324%_
                             (gx#syntax-e _%e176306176316%_)))
                        (let ((_%hd176310176327%_ (##car _%e176309176324%_))
                              (_%tl176311176329%_ (##cdr _%e176309176324%_)))
                          (if (gx#stx-pair? _%tl176311176329%_)
                              (let ((_%e176312176332%_
                                     (gx#syntax-e _%tl176311176329%_)))
                                (let ((_%hd176313176335%_
                                       (##car _%e176312176332%_))
                                      (_%tl176314176337%_
                                       (##cdr _%e176312176332%_)))
                                  (let* ((_%hd176340%_ _%hd176313176335%_)
                                         (_%body176342%_ _%tl176314176337%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd176340%_)
                                             (gx#stx-list? _%body176342%_)
                                             (not (gx#stx-null?
                                                   _%body176342%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd176340%_)
                                         _%body176342%_)
                                        (_%E176308176320%_)))))
                              (_%E176308176320%_))))
                      (_%E176308176320%_)))))
          (_%E176307176344%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx176241%_)
        (letrec ((_%generate176243%_
                  (lambda (_%clause176273%_)
                    (let* ((_%e176274176281%_ _%clause176273%_)
                           (_%E176276176285%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx176241%_
                               _%clause176273%_)))
                           (_%E176275176301%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176274176281%_)
                                  (let ((_%e176277176289%_
                                         (gx#syntax-e _%e176274176281%_)))
                                    (let ((_%hd176278176292%_
                                           (##car _%e176277176289%_))
                                          (_%tl176279176294%_
                                           (##cdr _%e176277176289%_)))
                                      (let* ((_%hd176297%_ _%hd176278176292%_)
                                             (_%body176299%_
                                              _%tl176279176294%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd176297%_)
                                                 (gx#stx-list? _%body176299%_)
                                                 (not (gx#stx-null?
                                                       _%body176299%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd176297%_)
                                                   _%body176299%_)
                                             (gx#stx-source _%clause176273%_))
                                            (_%E176276176285%_)))))
                                  (_%E176276176285%_)))))
                      (_%E176275176301%_)))))
          (let* ((_%e176244176251%_ _%stx176241%_)
                 (_%E176246176255%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176244176251%_)))
                 (_%E176245176269%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176244176251%_)
                        (let ((_%e176247176259%_
                               (gx#syntax-e _%e176244176251%_)))
                          (let ((_%hd176248176262%_ (##car _%e176247176259%_))
                                (_%tl176249176264%_ (##cdr _%e176247176259%_)))
                            (let ((_%clauses176267%_ _%tl176249176264%_))
                              (if (gx#stx-list? _%clauses176267%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate176243%_
                                    _%clauses176267%_))
                                  (_%E176246176255%_)))))
                        (_%E176246176255%_)))))
            (_%E176245176269%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx176142%_ _%form176143%_)
        (letrec ((_%generate176145%_
                  (lambda (_%bind176188%_)
                    (let* ((_%e176189176199%_ _%bind176188%_)
                           (_%E176191176203%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx176142%_
                               _%bind176188%_)))
                           (_%E176190176227%_
                            (lambda ()
                              (if (gx#stx-pair? _%e176189176199%_)
                                  (let ((_%e176192176207%_
                                         (gx#syntax-e _%e176189176199%_)))
                                    (let ((_%hd176193176210%_
                                           (##car _%e176192176207%_))
                                          (_%tl176194176212%_
                                           (##cdr _%e176192176207%_)))
                                      (let ((_%ids176215%_ _%hd176193176210%_))
                                        (if (gx#stx-pair? _%tl176194176212%_)
                                            (let ((_%e176195176217%_
                                                   (gx#syntax-e
                                                    _%tl176194176212%_)))
                                              (let ((_%hd176196176220%_
                                                     (##car _%e176195176217%_))
                                                    (_%tl176197176222%_
                                                     (##cdr _%e176195176217%_)))
                                                (let ((_%expr176225%_
                                                       _%hd176196176220%_))
                                                  (if (gx#stx-null?
                                                       _%tl176197176222%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids176215%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids176215%_)
                        (cons _%expr176225%_ '()))
                  (_%E176191176203%_))
              (_%E176191176203%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E176191176203%_)))))
                                  (_%E176191176203%_)))))
                      (_%E176190176227%_)))))
          (let* ((_%e176146176156%_ _%stx176142%_)
                 (_%E176148176160%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e176146176156%_)))
                 (_%E176147176184%_
                  (lambda ()
                    (if (gx#stx-pair? _%e176146176156%_)
                        (let ((_%e176149176164%_
                               (gx#syntax-e _%e176146176156%_)))
                          (let ((_%hd176150176167%_ (##car _%e176149176164%_))
                                (_%tl176151176169%_ (##cdr _%e176149176164%_)))
                            (if (gx#stx-pair? _%tl176151176169%_)
                                (let ((_%e176152176172%_
                                       (gx#syntax-e _%tl176151176169%_)))
                                  (let ((_%hd176153176175%_
                                         (##car _%e176152176172%_))
                                        (_%tl176154176177%_
                                         (##cdr _%e176152176172%_)))
                                    (let* ((_%hd176180%_ _%hd176153176175%_)
                                           (_%body176182%_ _%tl176154176177%_))
                                      (if (and (gx#stx-list? _%hd176180%_)
                                               (gx#stx-list? _%body176182%_)
                                               (not (gx#stx-null?
                                                     _%body176182%_)))
                                          (gx#core-cons*
                                           _%form176143%_
                                           (gx#stx-map1
                                            _%generate176145%_
                                            _%hd176180%_)
                                           _%body176182%_)
                                          (_%E176148176160%_)))))
                                (_%E176148176160%_))))
                        (_%E176148176160%_)))))
            (_%E176147176184%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx176234%_)
        (let ((_%form176236%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx176234%_ _%form176236%_))))
    (define gx#macro-expand-let-values
      (lambda _g178778_
        (let ((_g178779_ (##length _g178778_)))
          (cond ((##fx= _g178779_ 1)
                 (apply gx#macro-expand-let-values__0 _g178778_))
                ((##fx= _g178779_ 2)
                 (apply gx#macro-expand-let-values__% _g178778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g178778_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx176139%_)
        (gx#macro-expand-let-values__% _%stx176139%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx176137%_)
        (gx#macro-expand-let-values__% _%stx176137%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx176028%_)
        (let* ((_%e176029176055%_ _%stx176028%_)
               (_%E176041176059%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e176029176055%_)))
               (_%E176031176101%_
                (lambda ()
                  (if (gx#stx-pair? _%e176029176055%_)
                      (let ((_%e176042176063%_
                             (gx#syntax-e _%e176029176055%_)))
                        (let ((_%hd176043176066%_ (##car _%e176042176063%_))
                              (_%tl176044176068%_ (##cdr _%e176042176063%_)))
                          (if (gx#stx-pair? _%tl176044176068%_)
                              (let ((_%e176045176071%_
                                     (gx#syntax-e _%tl176044176068%_)))
                                (let ((_%hd176046176074%_
                                       (##car _%e176045176071%_))
                                      (_%tl176047176076%_
                                       (##cdr _%e176045176071%_)))
                                  (let ((_%test176079%_ _%hd176046176074%_))
                                    (if (gx#stx-pair? _%tl176047176076%_)
                                        (let ((_%e176048176081%_
                                               (gx#syntax-e
                                                _%tl176047176076%_)))
                                          (let ((_%hd176049176084%_
                                                 (##car _%e176048176081%_))
                                                (_%tl176050176086%_
                                                 (##cdr _%e176048176081%_)))
                                            (let ((_%K176089%_
                                                   _%hd176049176084%_))
                                              (if (gx#stx-pair?
                                                   _%tl176050176086%_)
                                                  (let ((_%e176051176091%_
                                                         (gx#syntax-e
                                                          _%tl176050176086%_)))
                                                    (let ((_%hd176052176094%_
                                                           (##car _%e176051176091%_))
                                                          (_%tl176053176096%_
                                                           (##cdr _%e176051176091%_)))
                                                      (let ((_%E176099%_
                                                             _%hd176052176094%_))
                                                        (if (gx#stx-null?
                                                             _%tl176053176096%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test176079%_
                                                             _%K176089%_
                                                             _%E176099%_)
                                                            (_%E176041176059%_)))))
                                                  (_%E176041176059%_)))))
                                        (_%E176041176059%_)))))
                              (_%E176041176059%_))))
                      (_%E176041176059%_))))
               (_%E176030176133%_
                (lambda ()
                  (if (gx#stx-pair? _%e176029176055%_)
                      (let ((_%e176032176105%_
                             (gx#syntax-e _%e176029176055%_)))
                        (let ((_%hd176033176108%_ (##car _%e176032176105%_))
                              (_%tl176034176110%_ (##cdr _%e176032176105%_)))
                          (if (gx#stx-pair? _%tl176034176110%_)
                              (let ((_%e176035176113%_
                                     (gx#syntax-e _%tl176034176110%_)))
                                (let ((_%hd176036176116%_
                                       (##car _%e176035176113%_))
                                      (_%tl176037176118%_
                                       (##cdr _%e176035176113%_)))
                                  (let ((_%test176121%_ _%hd176036176116%_))
                                    (if (gx#stx-pair? _%tl176037176118%_)
                                        (let ((_%e176038176123%_
                                               (gx#syntax-e
                                                _%tl176037176118%_)))
                                          (let ((_%hd176039176126%_
                                                 (##car _%e176038176123%_))
                                                (_%tl176040176128%_
                                                 (##cdr _%e176038176123%_)))
                                            (let ((_%K176131%_
                                                   _%hd176039176126%_))
                                              (if (gx#stx-null?
                                                   _%tl176040176128%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test176121%_
                                                   _%K176131%_
                                                   '#!void)
                                                  (_%E176031176101%_)))))
                                        (_%E176031176101%_)))))
                              (_%E176031176101%_))))
                      (_%E176031176101%_)))))
          (_%E176030176133%_))))
    (define gx#free-identifier=?
      (lambda (_%xid176013%_ _%yid176014%_)
        (let ((_%xe176016%_ (gx#resolve-identifier__0 _%xid176013%_))
              (_%ye176017%_ (gx#resolve-identifier__0 _%yid176014%_)))
          (if (and _%xe176016%_ _%ye176017%_)
              (let ((_%$e176020%_ (eq? _%xe176016%_ _%ye176017%_)))
                (if _%$e176020%_
                    _%$e176020%_
                    (if (##structure-instance-of? _%xe176016%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye176017%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe176016%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye176017%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe176016%_ _%ye176017%_)
                  '#f
                  (gx#stx-eq? _%xid176013%_ _%yid176014%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid175994%_ _%yid175995%_)
        (letrec ((_%context175997%_
                  (lambda (_%e176011%_)
                    (if (##structure-direct-instance-of?
                         _%e176011%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e176011%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks175998%_
                  (lambda (_%e176006%_)
                    (if (symbol? _%e176006%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e176006%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e176006%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e176006%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap175999%_
                  (lambda (_%e176004%_)
                    (if (symbol? _%e176004%_)
                        _%e176004%_
                        (gx#syntax-local-unwrap _%e176004%_)))))
          (let ((_%x176001%_ (_%unwrap175999%_ _%xid175994%_))
                (_%y176002%_ (_%unwrap175999%_ _%yid175995%_)))
            (if (gx#stx-eq? _%x176001%_ _%y176002%_)
                (if (eq? (_%context175997%_ _%x176001%_)
                         (_%context175997%_ _%y176002%_))
                    (equal? (_%marks175998%_ _%x176001%_)
                            (_%marks175998%_ _%y176002%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx175992%_)
        (if (gx#identifier? _%stx175992%_)
            (gx#core-identifier=? _%stx175992%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx175990%_)
        (if (gx#identifier? _%stx175990%_)
            (gx#core-identifier=? _%stx175990%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx175933%_ _%where175934%_)
        (let _%lp175936%_ ((_%rest175938%_ (gx#syntax->list _%stx175933%_)))
          (let* ((_%rest175939175947%_ _%rest175938%_)
                 (_%else175941175955%_ (lambda () '#t))
                 (_%K175943175968%_
                  (lambda (_%rest175958%_ _%hd175959%_)
                    (if (gx#identifier? _%hd175959%_)
                        (if (__find (lambda (_%g175961175963%_)
                                      (gx#bound-identifier=?
                                       _%g175961175963%_
                                       _%hd175959%_))
                                    _%rest175958%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where175934%_
                             _%hd175959%_)
                            (_%lp175936%_ _%rest175958%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where175934%_
                         _%hd175959%_)))))
            (if (pair? _%rest175939175947%_)
                (let ((_%hd175944175971%_ (##car _%rest175939175947%_))
                      (_%tl175945175973%_ (##cdr _%rest175939175947%_)))
                  (let* ((_%hd175976%_ _%hd175944175971%_)
                         (_%rest175978%_ _%tl175945175973%_))
                    (_%K175943175968%_ _%rest175978%_ _%hd175976%_)))
                (_%else175941175955%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx175983%_)
        (let ((_%where175985%_ _%stx175983%_))
          (gx#check-duplicate-identifiers__% _%stx175983%_ _%where175985%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g178780_
        (let ((_g178781_ (##length _g178780_)))
          (cond ((##fx= _g178781_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g178780_))
                ((##fx= _g178781_ 2)
                 (apply gx#check-duplicate-identifiers__% _g178780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g178780_))))))
    (define gx#core-bind-values?
      (lambda (_%stx175925%_)
        (gx#stx-andmap
         (lambda (_%x175927%_)
           (let ((_%$e175929%_ (gx#identifier? _%x175927%_)))
             (if _%$e175929%_ _%$e175929%_ (gx#stx-false? _%x175927%_))))
         _%stx175925%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx175889%_ _%rebind?175890%_ _%phi175891%_ _%ctx175892%_)
        (gx#stx-for-each1
         (lambda (_%id175894%_)
           (if (gx#identifier? _%id175894%_)
               (gx#core-bind-runtime!__%
                _%id175894%_
                _%rebind?175890%_
                _%phi175891%_
                _%ctx175892%_)
               '#!void))
         _%stx175889%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx175899%_)
        (let* ((_%rebind?175901%_ '#f)
               (_%phi175903%_ (gx#current-expander-phi))
               (_%ctx175905%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx175899%_
           _%rebind?175901%_
           _%phi175903%_
           _%ctx175905%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx175907%_ _%rebind?175908%_)
        (let* ((_%phi175910%_ (gx#current-expander-phi))
               (_%ctx175912%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx175907%_
           _%rebind?175908%_
           _%phi175910%_
           _%ctx175912%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx175914%_ _%rebind?175915%_ _%phi175916%_)
        (let ((_%ctx175918%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx175914%_
           _%rebind?175915%_
           _%phi175916%_
           _%ctx175918%_))))
    (define gx#core-bind-values!
      (lambda _g178782_
        (let ((_g178783_ (##length _g178782_)))
          (cond ((##fx= _g178783_ 1) (apply gx#core-bind-values!__0 _g178782_))
                ((##fx= _g178783_ 2) (apply gx#core-bind-values!__1 _g178782_))
                ((##fx= _g178783_ 3) (apply gx#core-bind-values!__2 _g178782_))
                ((##fx= _g178783_ 4) (apply gx#core-bind-values!__% _g178782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g178782_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx175884%_)
        (gx#stx-map1
         (lambda (_%x175886%_)
           (if (gx#identifier? _%x175886%_)
               (gx#core-quote-syntax__0 _%x175886%_)
               '#f))
         _%stx175884%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx175877%_)
        (if (gx#identifier? _%stx175877%_)
            (let* ((_%bind175879%_ (gx#resolve-identifier__0 _%stx175877%_))
                   (_%$e175881%_ (not _%bind175879%_)))
              (if _%$e175881%_
                  _%$e175881%_
                  (##structure-instance-of?
                   _%bind175879%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id175866%_ _%form175867%_)
        (let ((_%bind175869%_ (gx#resolve-identifier__0 _%id175866%_)))
          (if (##structure-instance-of? _%bind175869%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id175866%_)
              (if (not _%bind175869%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id175866%_)))
                      (gx#core-quote-syntax__0 _%id175866%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form175867%_
                       _%id175866%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form175867%_
                   _%id175866%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id175821%_ _%rebind?175822%_ _%phi175823%_ _%ctx175824%_)
        (let* ((_%key175826%_ (gx#core-identifier-key _%id175821%_))
               (_%eid175828%_
                (gx#make-binding-id__%
                 _%key175826%_
                 '#f
                 _%phi175823%_
                 _%ctx175824%_))
               (_%bind175834%_
                (if (##structure-instance-of?
                     _%ctx175824%_
                     'gx#module-context::t)
                    (let ((__obj178759
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
                       __obj178759
                       _%eid175828%_
                       _%key175826%_
                       _%phi175823%_
                       _%ctx175824%_)
                      __obj178759)
                    (if (##structure-instance-of?
                         _%ctx175824%_
                         'gx#top-context::t)
                        (let ((__obj178758
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj178758
                           _%eid175828%_
                           _%key175826%_
                           _%phi175823%_)
                          __obj178758)
                        (if (##structure-instance-of?
                             _%ctx175824%_
                             'gx#local-context::t)
                            (let ((__obj178757
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj178757
                               _%eid175828%_
                               _%key175826%_
                               _%phi175823%_)
                              __obj178757)
                            (let ((__obj178756
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj178756
                               _%eid175828%_
                               _%key175826%_
                               _%phi175823%_)
                              __obj178756))))))
          (gx#bind-identifier!__%
           _%id175821%_
           _%bind175834%_
           _%rebind?175822%_
           _%phi175823%_
           _%ctx175824%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id175840%_)
        (let* ((_%rebind?175842%_ '#f)
               (_%phi175844%_ (gx#current-expander-phi))
               (_%ctx175846%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id175840%_
           _%rebind?175842%_
           _%phi175844%_
           _%ctx175846%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id175848%_ _%rebind?175849%_)
        (let* ((_%phi175851%_ (gx#current-expander-phi))
               (_%ctx175853%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id175848%_
           _%rebind?175849%_
           _%phi175851%_
           _%ctx175853%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id175855%_ _%rebind?175856%_ _%phi175857%_)
        (let ((_%ctx175859%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id175855%_
           _%rebind?175856%_
           _%phi175857%_
           _%ctx175859%_))))
    (define gx#core-bind-runtime!
      (lambda _g178784_
        (let ((_g178785_ (##length _g178784_)))
          (cond ((##fx= _g178785_ 1)
                 (apply gx#core-bind-runtime!__0 _g178784_))
                ((##fx= _g178785_ 2)
                 (apply gx#core-bind-runtime!__1 _g178784_))
                ((##fx= _g178785_ 3)
                 (apply gx#core-bind-runtime!__2 _g178784_))
                ((##fx= _g178785_ 4)
                 (apply gx#core-bind-runtime!__% _g178784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g178784_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id175773%_
               _%eid175774%_
               _%rebind?175775%_
               _%phi175776%_
               _%ctx175777%_)
        (let* ((_%key175779%_ (gx#core-identifier-key _%id175773%_))
               (_%bind175784%_
                (if (##structure-instance-of?
                     _%ctx175777%_
                     'gx#module-context::t)
                    (let ((__obj178762
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
                       __obj178762
                       _%eid175774%_
                       _%key175779%_
                       _%phi175776%_
                       _%ctx175777%_)
                      __obj178762)
                    (if (##structure-instance-of?
                         _%ctx175777%_
                         'gx#top-context::t)
                        (let ((__obj178761
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj178761
                           _%eid175774%_
                           _%key175779%_
                           _%phi175776%_)
                          __obj178761)
                        (let ((__obj178760
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj178760
                           _%eid175774%_
                           _%key175779%_
                           _%phi175776%_)
                          __obj178760)))))
          (gx#bind-identifier!__%
           _%id175773%_
           _%bind175784%_
           _%rebind?175775%_
           _%phi175776%_
           _%ctx175777%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id175790%_ _%eid175791%_)
        (let* ((_%rebind?175793%_ '#f)
               (_%phi175795%_ (gx#current-expander-phi))
               (_%ctx175797%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id175790%_
           _%eid175791%_
           _%rebind?175793%_
           _%phi175795%_
           _%ctx175797%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id175799%_ _%eid175800%_ _%rebind?175801%_)
        (let* ((_%phi175803%_ (gx#current-expander-phi))
               (_%ctx175805%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id175799%_
           _%eid175800%_
           _%rebind?175801%_
           _%phi175803%_
           _%ctx175805%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id175807%_ _%eid175808%_ _%rebind?175809%_ _%phi175810%_)
        (let ((_%ctx175812%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id175807%_
           _%eid175808%_
           _%rebind?175809%_
           _%phi175810%_
           _%ctx175812%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g178786_
        (let ((_g178787_ (##length _g178786_)))
          (cond ((##fx= _g178787_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g178786_))
                ((##fx= _g178787_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g178786_))
                ((##fx= _g178787_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g178786_))
                ((##fx= _g178787_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g178786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g178786_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id175733%_
               _%eid175734%_
               _%rebind?175735%_
               _%phi175736%_
               _%ctx175737%_)
        (gx#bind-identifier!__%
         _%id175733%_
         (let ((__obj178763
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj178763
            _%eid175734%_
            (gx#core-identifier-key _%id175733%_)
            _%phi175736%_)
           __obj178763)
         _%rebind?175735%_
         _%phi175736%_
         _%ctx175737%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id175742%_ _%eid175743%_)
        (let* ((_%rebind?175745%_ '#f)
               (_%phi175747%_ (gx#current-expander-phi))
               (_%ctx175749%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id175742%_
           _%eid175743%_
           _%rebind?175745%_
           _%phi175747%_
           _%ctx175749%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id175751%_ _%eid175752%_ _%rebind?175753%_)
        (let* ((_%phi175755%_ (gx#current-expander-phi))
               (_%ctx175757%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id175751%_
           _%eid175752%_
           _%rebind?175753%_
           _%phi175755%_
           _%ctx175757%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id175759%_ _%eid175760%_ _%rebind?175761%_ _%phi175762%_)
        (let ((_%ctx175764%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id175759%_
           _%eid175760%_
           _%rebind?175761%_
           _%phi175762%_
           _%ctx175764%_))))
    (define gx#core-bind-extern!
      (lambda _g178788_
        (let ((_g178789_ (##length _g178788_)))
          (cond ((##fx= _g178789_ 2) (apply gx#core-bind-extern!__0 _g178788_))
                ((##fx= _g178789_ 3) (apply gx#core-bind-extern!__1 _g178788_))
                ((##fx= _g178789_ 4) (apply gx#core-bind-extern!__2 _g178788_))
                ((##fx= _g178789_ 5) (apply gx#core-bind-extern!__% _g178788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g178788_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id175687%_
               _%e175688%_
               _%rebind?175689%_
               _%phi175690%_
               _%ctx175691%_)
        (gx#bind-identifier!__%
         _%id175687%_
         (let ((_%key175696%_ (gx#core-identifier-key _%id175687%_))
               (_%e175697%_
                (if (or (##structure-instance-of? _%e175688%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e175688%_
                         'gx#expander-context::t))
                    _%e175688%_
                    (##structure
                     gx#user-expander::t
                     _%e175688%_
                     _%ctx175691%_
                     _%phi175690%_))))
           (let ((__obj178764
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj178764
              (gx#make-binding-id__%
               _%key175696%_
               '#t
               _%phi175690%_
               _%ctx175691%_)
              _%key175696%_
              _%phi175690%_
              _%e175697%_)
             __obj178764))
         _%rebind?175689%_
         _%phi175690%_
         _%ctx175691%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id175702%_ _%e175703%_)
        (let* ((_%rebind?175705%_ '#f)
               (_%phi175707%_ (gx#current-expander-phi))
               (_%ctx175709%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id175702%_
           _%e175703%_
           _%rebind?175705%_
           _%phi175707%_
           _%ctx175709%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id175711%_ _%e175712%_ _%rebind?175713%_)
        (let* ((_%phi175715%_ (gx#current-expander-phi))
               (_%ctx175717%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id175711%_
           _%e175712%_
           _%rebind?175713%_
           _%phi175715%_
           _%ctx175717%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id175719%_ _%e175720%_ _%rebind?175721%_ _%phi175722%_)
        (let ((_%ctx175724%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id175719%_
           _%e175720%_
           _%rebind?175721%_
           _%phi175722%_
           _%ctx175724%_))))
    (define gx#core-bind-syntax!
      (lambda _g178790_
        (let ((_g178791_ (##length _g178790_)))
          (cond ((##fx= _g178791_ 2) (apply gx#core-bind-syntax!__0 _g178790_))
                ((##fx= _g178791_ 3) (apply gx#core-bind-syntax!__1 _g178790_))
                ((##fx= _g178791_ 4) (apply gx#core-bind-syntax!__2 _g178790_))
                ((##fx= _g178791_ 5) (apply gx#core-bind-syntax!__% _g178790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g178790_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id175670%_ _%e175671%_ _%rebind?175672%_)
        (gx#core-bind-syntax!__%
         _%id175670%_
         _%e175671%_
         _%rebind?175672%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id175677%_ _%e175678%_)
        (let ((_%rebind?175680%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id175677%_
           _%e175678%_
           _%rebind?175680%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g178792_
        (let ((_g178793_ (##length _g178792_)))
          (cond ((##fx= _g178793_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g178792_))
                ((##fx= _g178793_ 3)
                 (apply gx#core-bind-root-syntax!__% _g178792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g178792_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id175628%_
               _%alias-id175629%_
               _%rebind?175630%_
               _%phi175631%_
               _%ctx175632%_)
        (gx#bind-identifier!__%
         _%id175628%_
         (let* ((_%key175634%_ (gx#core-identifier-key _%id175628%_))
                (__obj178765
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj178765
            (gx#make-binding-id__%
             _%key175634%_
             '#t
             _%phi175631%_
             _%ctx175632%_)
            _%key175634%_
            _%phi175631%_
            _%alias-id175629%_)
           __obj178765)
         _%rebind?175630%_
         _%phi175631%_
         _%ctx175632%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id175639%_ _%alias-id175640%_)
        (let* ((_%rebind?175642%_ '#f)
               (_%phi175644%_ (gx#current-expander-phi))
               (_%ctx175646%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id175639%_
           _%alias-id175640%_
           _%rebind?175642%_
           _%phi175644%_
           _%ctx175646%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id175648%_ _%alias-id175649%_ _%rebind?175650%_)
        (let* ((_%phi175652%_ (gx#current-expander-phi))
               (_%ctx175654%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id175648%_
           _%alias-id175649%_
           _%rebind?175650%_
           _%phi175652%_
           _%ctx175654%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id175656%_ _%alias-id175657%_ _%rebind?175658%_ _%phi175659%_)
        (let ((_%ctx175661%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id175656%_
           _%alias-id175657%_
           _%rebind?175658%_
           _%phi175659%_
           _%ctx175661%_))))
    (define gx#core-bind-alias!
      (lambda _g178794_
        (let ((_g178795_ (##length _g178794_)))
          (cond ((##fx= _g178795_ 2) (apply gx#core-bind-alias!__0 _g178794_))
                ((##fx= _g178795_ 3) (apply gx#core-bind-alias!__1 _g178794_))
                ((##fx= _g178795_ 4) (apply gx#core-bind-alias!__2 _g178794_))
                ((##fx= _g178795_ 5) (apply gx#core-bind-alias!__% _g178794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g178794_))))))
    (define gx#make-binding-id__%
      (lambda (_%key175578%_ _%syntax?175579%_ _%phi175580%_ _%ctx175581%_)
        (if (uninterned-symbol? _%key175578%_)
            (##gensym 'L)
            (if (pair? _%key175578%_)
                (gensym (##car _%key175578%_))
                (if (##structure-instance-of? _%ctx175581%_ 'gx#top-context::t)
                    (let ((_%ns175586%_
                           (gx#core-context-namespace__% _%ctx175581%_)))
                      (if (and (fxzero? _%phi175580%_) (not _%syntax?175579%_))
                          (if _%ns175586%_
                              (make-symbol__1 _%ns175586%_ '"#" _%key175578%_)
                              _%key175578%_)
                          (if _%syntax?175579%_
                              (make-symbol__1
                               (let ((_%$e175590%_ _%ns175586%_))
                                 (if _%$e175590%_ _%$e175590%_ '""))
                               '"[:"
                               (number->string _%phi175580%_)
                               '":]#"
                               _%key175578%_)
                              (make-symbol__1
                               (let ((_%$e175594%_ _%ns175586%_))
                                 (if _%$e175594%_ _%$e175594%_ '""))
                               '"["
                               (number->string _%phi175580%_)
                               '"]#"
                               _%key175578%_))))
                    (gensym _%key175578%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key175601%_)
        (let* ((_%syntax?175603%_ '#f)
               (_%phi175605%_ (gx#current-expander-phi))
               (_%ctx175607%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key175601%_
           _%syntax?175603%_
           _%phi175605%_
           _%ctx175607%_))))
    (define gx#make-binding-id__1
      (lambda (_%key175609%_ _%syntax?175610%_)
        (let* ((_%phi175612%_ (gx#current-expander-phi))
               (_%ctx175614%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key175609%_
           _%syntax?175610%_
           _%phi175612%_
           _%ctx175614%_))))
    (define gx#make-binding-id__2
      (lambda (_%key175616%_ _%syntax?175617%_ _%phi175618%_)
        (let ((_%ctx175620%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key175616%_
           _%syntax?175617%_
           _%phi175618%_
           _%ctx175620%_))))
    (define gx#make-binding-id
      (lambda _g178796_
        (let ((_g178797_ (##length _g178796_)))
          (cond ((##fx= _g178797_ 1) (apply gx#make-binding-id__0 _g178796_))
                ((##fx= _g178797_ 2) (apply gx#make-binding-id__1 _g178796_))
                ((##fx= _g178797_ 3) (apply gx#make-binding-id__2 _g178796_))
                ((##fx= _g178797_ 4) (apply gx#make-binding-id__% _g178796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g178796_))))))))
