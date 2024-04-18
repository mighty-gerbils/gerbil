(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1713454411)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx124007%_)
        (letrec ((_%expand-special124009%_
                  (lambda (_%hd124011%_ _%K124012%_ _%rest124013%_ _%r124014%_)
                    (_%K124012%_
                     _%rest124013%_
                     (cons (gx#core-expand-top _%hd124011%_) _%r124014%_)))))
          (gx#core-expand-block__0 _%stx124007%_ _%expand-special124009%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx123760%_)
        (letrec ((_%expand-special123762%_
                  (lambda (_%hd123882%_ _%K123883%_ _%rest123884%_ _%r123885%_)
                    (let* ((_%K123889%_
                            (lambda (_%e123887%_)
                              (_%K123883%_
                               _%rest123884%_
                               (cons _%e123887%_ _%r123885%_))))
                           (_%e123890123919%_ _%hd123882%_)
                           (_%E123914123923%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123890123919%_)))
                           (_%E123910123935%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123890123919%_)
                                  (let ((_%e123915123927%_
                                         (gx#syntax-e _%e123890123919%_)))
                                    (let ((_%hd123916123930%_
                                           (##car _%e123915123927%_))
                                          (_%tl123917123932%_
                                           (##cdr _%e123915123927%_)))
                                      (if (and (gx#identifier?
                                                _%hd123916123930%_)
                                               (gx#core-identifier=?
                                                _%hd123916123930%_
                                                '%#define-runtime))
                                          (_%K123889%_
                                           (gx#core-expand-define-runtime%
                                            _%hd123882%_))
                                          (_%E123914123923%_))))
                                  (_%E123914123923%_))))
                           (_%E123906123947%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123890123919%_)
                                  (let ((_%e123911123939%_
                                         (gx#syntax-e _%e123890123919%_)))
                                    (let ((_%hd123912123942%_
                                           (##car _%e123911123939%_))
                                          (_%tl123913123944%_
                                           (##cdr _%e123911123939%_)))
                                      (if (and (gx#identifier?
                                                _%hd123912123942%_)
                                               (gx#core-identifier=?
                                                _%hd123912123942%_
                                                '%#define-alias))
                                          (_%K123889%_
                                           (gx#core-expand-define-alias%
                                            _%hd123882%_))
                                          (_%E123910123935%_))))
                                  (_%E123910123935%_))))
                           (_%E123896123959%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123890123919%_)
                                  (let ((_%e123907123951%_
                                         (gx#syntax-e _%e123890123919%_)))
                                    (let ((_%hd123908123954%_
                                           (##car _%e123907123951%_))
                                          (_%tl123909123956%_
                                           (##cdr _%e123907123951%_)))
                                      (if (and (gx#identifier?
                                                _%hd123908123954%_)
                                               (gx#core-identifier=?
                                                _%hd123908123954%_
                                                '%#define-syntax))
                                          (_%K123889%_
                                           (gx#core-expand-define-syntax%
                                            _%hd123882%_))
                                          (_%E123906123947%_))))
                                  (_%E123906123947%_))))
                           (_%E123892123991%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123890123919%_)
                                  (let ((_%e123897123963%_
                                         (gx#syntax-e _%e123890123919%_)))
                                    (let ((_%hd123898123966%_
                                           (##car _%e123897123963%_))
                                          (_%tl123899123968%_
                                           (##cdr _%e123897123963%_)))
                                      (if (and (gx#identifier?
                                                _%hd123898123966%_)
                                               (gx#core-identifier=?
                                                _%hd123898123966%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123899123968%_)
                                              (let ((_%e123900123971%_
                                                     (gx#syntax-e
                                                      _%tl123899123968%_)))
                                                (let ((_%hd123901123974%_
                                                       (##car _%e123900123971%_))
                                                      (_%tl123902123976%_
                                                       (##cdr _%e123900123971%_)))
                                                  (let ((_%hd-bind123979%_
                                                         _%hd123901123974%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123902123976%_)
                                                        (let ((_%e123903123981%_
                                                               (gx#syntax-e
                                                                _%tl123902123976%_)))
                                                          (let ((_%hd123904123984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123903123981%_))
                        (_%tl123905123986%_ (##cdr _%e123903123981%_)))
                    (let ((_%expr123989%_ _%hd123904123984%_))
                      (if (gx#stx-null? _%tl123905123986%_)
                          (if (gx#core-bind-values? _%hd-bind123979%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123979%_)
                                (_%K123889%_ _%hd123882%_))
                              (_%E123896123959%_))
                          (_%E123896123959%_)))))
                (_%E123896123959%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123896123959%_))
                                          (_%E123896123959%_))))
                                  (_%E123896123959%_))))
                           (_%E123891124003%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123890123919%_)
                                  (let ((_%e123893123995%_
                                         (gx#syntax-e _%e123890123919%_)))
                                    (let ((_%hd123894123998%_
                                           (##car _%e123893123995%_))
                                          (_%tl123895124000%_
                                           (##cdr _%e123893123995%_)))
                                      (if (and (gx#identifier?
                                                _%hd123894123998%_)
                                               (gx#core-identifier=?
                                                _%hd123894123998%_
                                                '%#begin-syntax))
                                          (_%K123889%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd123882%_))
                                          (_%E123892123991%_))))
                                  (_%E123892123991%_)))))
                      (_%E123891124003%_))))
                 (_%eval-body123763%_
                  (lambda (_%rbody123771%_)
                    (let _%lp123773%_ ((_%rest123775%_ _%rbody123771%_)
                                       (_%body123776%_ '())
                                       (_%ebody123777%_ '()))
                      (let* ((_%rest123778123786%_ _%rest123775%_)
                             (_%else123780123794%_
                              (lambda ()
                                (values _%body123776%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody123777%_)
                                          (gx#stx-source _%stx123760%_))))))
                             (_%K123782123870%_
                              (lambda (_%rest123797%_ _%hd123798%_)
                                (let* ((_%e123799123816%_ _%hd123798%_)
                                       (_%E123811123820%_
                                        (lambda ()
                                          (_%lp123773%_
                                           _%rest123797%_
                                           (cons _%hd123798%_ _%body123776%_)
                                           (cons _%hd123798%_
                                                 _%ebody123777%_))))
                                       (_%E123801123832%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123799123816%_)
                                              (let ((_%e123812123824%_
                                                     (gx#syntax-e
                                                      _%e123799123816%_)))
                                                (let ((_%hd123813123827%_
                                                       (##car _%e123812123824%_))
                                                      (_%tl123814123829%_
                                                       (##cdr _%e123812123824%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123813123827%_)
                                                           (gx#core-identifier=?
                                                            _%hd123813123827%_
                                                            '%#begin-syntax))
                                                      (_%lp123773%_
                                                       _%rest123797%_
                                                       (cons _%hd123798%_
                                                             _%body123776%_)
                                                       _%ebody123777%_)
                                                      (_%E123811123820%_))))
                                              (_%E123811123820%_))))
                                       (_%E123800123866%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e123799123816%_)
                                              (let ((_%e123802123836%_
                                                     (gx#syntax-e
                                                      _%e123799123816%_)))
                                                (let ((_%hd123803123839%_
                                                       (##car _%e123802123836%_))
                                                      (_%tl123804123841%_
                                                       (##cdr _%e123802123836%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd123803123839%_)
                                                           (gx#core-identifier=?
                                                            _%hd123803123839%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl123804123841%_)
                                                          (let ((_%e123805123844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl123804123841%_)))
                    (let ((_%hd123806123847%_ (##car _%e123805123844%_))
                          (_%tl123807123849%_ (##cdr _%e123805123844%_)))
                      (let ((_%hd-bind123852%_ _%hd123806123847%_))
                        (if (gx#stx-pair? _%tl123807123849%_)
                            (let ((_%e123808123854%_
                                   (gx#syntax-e _%tl123807123849%_)))
                              (let ((_%hd123809123857%_
                                     (##car _%e123808123854%_))
                                    (_%tl123810123859%_
                                     (##cdr _%e123808123854%_)))
                                (let ((_%expr123862%_ _%hd123809123857%_))
                                  (if (gx#stx-null? _%tl123810123859%_)
                                      (let ((_%ehd123864%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind123852%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr123862%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd123798%_))))
                                        (_%lp123773%_
                                         _%rest123797%_
                                         (cons _%ehd123864%_ _%body123776%_)
                                         (cons _%ehd123864%_ _%ebody123777%_)))
                                      (_%E123801123832%_)))))
                            (_%E123801123832%_)))))
                  (_%E123801123832%_))
              (_%E123801123832%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123801123832%_)))))
                                  (_%E123800123866%_)))))
                        (if (##pair? _%rest123778123786%_)
                            (let ((_%hd123783123873%_
                                   (##car _%rest123778123786%_))
                                  (_%tl123784123875%_
                                   (##cdr _%rest123778123786%_)))
                              (let* ((_%hd123878%_ _%hd123783123873%_)
                                     (_%rest123880%_ _%tl123784123875%_))
                                (_%K123782123870%_
                                 _%rest123880%_
                                 _%hd123878%_)))
                            (_%else123780123794%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody123766%_
                     (gx#core-expand-block__1
                      _%stx123760%_
                      _%expand-special123762%_
                      '#f))
                    (_g124030_ (_%eval-body123763%_ _%rbody123766%_)))
               (begin
                 (let ((_g124031_
                        (if (##values? _g124030_)
                            (##vector-length _g124030_)
                            1)))
                   (if (not (##fx= _g124031_ 2))
                       (error "Context expects 2 values" _g124031_)))
                 (let ((_%expanded-body123768%_ (##vector-ref _g124030_ 0))
                       (_%value123769%_ (##vector-ref _g124030_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body123768%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value123769%_ '())))
                    (gx#stx-source _%stx123760%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx123730%_)
        (let* ((_%e123731123738%_ _%stx123730%_)
               (_%E123733123742%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123731123738%_)))
               (_%E123732123756%_
                (lambda ()
                  (if (gx#stx-pair? _%e123731123738%_)
                      (let ((_%e123734123746%_
                             (gx#syntax-e _%e123731123738%_)))
                        (let ((_%hd123735123749%_ (##car _%e123734123746%_))
                              (_%tl123736123751%_ (##cdr _%e123734123746%_)))
                          (let ((_%body123754%_ _%tl123736123751%_))
                            (if (gx#stx-list? _%body123754%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body123754%_)
                                 (gx#stx-source _%stx123730%_))
                                (_%E123733123742%_)))))
                      (_%E123733123742%_)))))
          (_%E123732123756%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx123728%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx123728%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx123674%_)
        (let* ((_%e123675123688%_ _%stx123674%_)
               (_%E123677123692%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123675123688%_)))
               (_%E123676123724%_
                (lambda ()
                  (if (gx#stx-pair? _%e123675123688%_)
                      (let ((_%e123678123696%_
                             (gx#syntax-e _%e123675123688%_)))
                        (let ((_%hd123679123699%_ (##car _%e123678123696%_))
                              (_%tl123680123701%_ (##cdr _%e123678123696%_)))
                          (if (gx#stx-pair? _%tl123680123701%_)
                              (let ((_%e123681123704%_
                                     (gx#syntax-e _%tl123680123701%_)))
                                (let ((_%hd123682123707%_
                                       (##car _%e123681123704%_))
                                      (_%tl123683123709%_
                                       (##cdr _%e123681123704%_)))
                                  (let ((_%ann123712%_ _%hd123682123707%_))
                                    (if (gx#stx-pair? _%tl123683123709%_)
                                        (let ((_%e123684123714%_
                                               (gx#syntax-e
                                                _%tl123683123709%_)))
                                          (let ((_%hd123685123717%_
                                                 (##car _%e123684123714%_))
                                                (_%tl123686123719%_
                                                 (##cdr _%e123684123714%_)))
                                            (let ((_%expr123722%_
                                                   _%hd123685123717%_))
                                              (if (gx#stx-null?
                                                   _%tl123686123719%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann123712%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr123722%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx123674%_))
                                                  (_%E123677123692%_)))))
                                        (_%E123677123692%_)))))
                              (_%E123677123692%_))))
                      (_%E123677123692%_)))))
          (_%E123676123724%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx123398%_ _%body123399%_)
        (letrec ((_%expand-special123401%_
                  (lambda (_%hd123669%_ _%K123670%_ _%rest123671%_ _%r123672%_)
                    (_%K123670%_
                     '()
                     (cons (_%expand-internal123402%_
                            _%hd123669%_
                            _%rest123671%_)
                           _%r123672%_))))
                 (_%expand-internal123402%_
                  (lambda (_%hd123665%_ _%rest123666%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal123404%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd123665%_ _%rest123666%_))
                          (gx#stx-source _%stx123398%_))
                         _%expand-internal-special123403%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj124024
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj124024)
                       __obj124024))))
                 (_%expand-internal-special123403%_
                  (lambda (_%hd123560%_ _%K123561%_ _%rest123562%_ _%r123563%_)
                    (let* ((_%e123564123589%_ _%hd123560%_)
                           (_%E123584123593%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e123564123589%_)))
                           (_%E123580123605%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123564123589%_)
                                  (let ((_%e123585123597%_
                                         (gx#syntax-e _%e123564123589%_)))
                                    (let ((_%hd123586123600%_
                                           (##car _%e123585123597%_))
                                          (_%tl123587123602%_
                                           (##cdr _%e123585123597%_)))
                                      (if (and (gx#identifier?
                                                _%hd123586123600%_)
                                               (gx#core-identifier=?
                                                _%hd123586123600%_
                                                '%#declare))
                                          (_%K123561%_
                                           _%rest123562%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd123560%_)
                                                 _%r123563%_))
                                          (_%E123584123593%_))))
                                  (_%E123584123593%_))))
                           (_%E123576123617%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123564123589%_)
                                  (let ((_%e123581123609%_
                                         (gx#syntax-e _%e123564123589%_)))
                                    (let ((_%hd123582123612%_
                                           (##car _%e123581123609%_))
                                          (_%tl123583123614%_
                                           (##cdr _%e123581123609%_)))
                                      (if (and (gx#identifier?
                                                _%hd123582123612%_)
                                               (gx#core-identifier=?
                                                _%hd123582123612%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd123560%_)
                                            (_%K123561%_
                                             _%rest123562%_
                                             _%r123563%_))
                                          (_%E123580123605%_))))
                                  (_%E123580123605%_))))
                           (_%E123566123629%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123564123589%_)
                                  (let ((_%e123577123621%_
                                         (gx#syntax-e _%e123564123589%_)))
                                    (let ((_%hd123578123624%_
                                           (##car _%e123577123621%_))
                                          (_%tl123579123626%_
                                           (##cdr _%e123577123621%_)))
                                      (if (and (gx#identifier?
                                                _%hd123578123624%_)
                                               (gx#core-identifier=?
                                                _%hd123578123624%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd123560%_)
                                            (_%K123561%_
                                             _%rest123562%_
                                             _%r123563%_))
                                          (_%E123576123617%_))))
                                  (_%E123576123617%_))))
                           (_%E123565123661%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123564123589%_)
                                  (let ((_%e123567123633%_
                                         (gx#syntax-e _%e123564123589%_)))
                                    (let ((_%hd123568123636%_
                                           (##car _%e123567123633%_))
                                          (_%tl123569123638%_
                                           (##cdr _%e123567123633%_)))
                                      (if (and (gx#identifier?
                                                _%hd123568123636%_)
                                               (gx#core-identifier=?
                                                _%hd123568123636%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl123569123638%_)
                                              (let ((_%e123570123641%_
                                                     (gx#syntax-e
                                                      _%tl123569123638%_)))
                                                (let ((_%hd123571123644%_
                                                       (##car _%e123570123641%_))
                                                      (_%tl123572123646%_
                                                       (##cdr _%e123570123641%_)))
                                                  (let ((_%hd-bind123649%_
                                                         _%hd123571123644%_))
                                                    (if (gx#stx-pair?
                                                         _%tl123572123646%_)
                                                        (let ((_%e123573123651%_
                                                               (gx#syntax-e
                                                                _%tl123572123646%_)))
                                                          (let ((_%hd123574123654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e123573123651%_))
                        (_%tl123575123656%_ (##cdr _%e123573123651%_)))
                    (let ((_%expr123659%_ _%hd123574123654%_))
                      (if (gx#stx-null? _%tl123575123656%_)
                          (if (gx#core-bind-values? _%hd-bind123649%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind123649%_)
                                (_%K123561%_
                                 _%rest123562%_
                                 (cons _%hd123560%_ _%r123563%_)))
                              (_%E123566123629%_))
                          (_%E123566123629%_)))))
                (_%E123566123629%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E123566123629%_))
                                          (_%E123566123629%_))))
                                  (_%E123566123629%_)))))
                      (_%E123565123661%_))))
                 (_%wrap-internal123404%_
                  (lambda (_%rbody123406%_)
                    (let _%lp123408%_ ((_%rest123410%_ _%rbody123406%_)
                                       (_%decls123411%_ '())
                                       (_%bind123412%_ '())
                                       (_%body123413%_ '()))
                      (let* ((_%e123414123421%_ _%rest123410%_)
                             (_%E123416123470%_
                              (lambda ()
                                (let* ((_%body123465%_
                                        (let* ((_%body123424123434%_
                                                _%body123413%_)
                                               (_%else123427123442%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body123413%_)
                                                   (gx#stx-source
                                                    _%stx123398%_)))))
                                          (let ((_%K123432123462%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx123398%_)))
                                                (_%K123429123448%_
                                                 (lambda (_%expr123446%_)
                                                   _%expr123446%_)))
                                            (let ((_%try-match123426123458%_
                                                   (lambda ()
                                                     (if (##pair? _%body123424123434%_)
                                                         (let ((_%tl123431123453%_
                                                                (##cdr _%body123424123434%_))
                                                               (_%hd123430123451%_
                                                                (##car _%body123424123434%_)))
                                                           (if (##null? _%tl123431123453%_)
                                                               (let ((_%expr123456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd123430123451%_))
                         (_%K123429123448%_ _%expr123456%_))
                       (_%else123427123442%_)))
                 (_%else123427123442%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _%body123424123434%_)
                                                  (_%K123432123462%_)
                                                  (_%try-match123426123458%_))))))
                                       (_%body123467%_
                                        (if (null? _%bind123412%_)
                                            _%body123465%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind123412%_
                                                         (cons _%body123465%_
                                                               '())))
                                             (gx#stx-source _%stx123398%_)))))
                                  (if (null? _%decls123411%_)
                                      _%body123467%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls123411%_
                                                   (cons _%body123467%_ '())))
                                       (gx#stx-source _%stx123398%_))))))
                             (_%E123415123556%_
                              (lambda ()
                                (if (gx#stx-pair? _%e123414123421%_)
                                    (let ((_%e123417123474%_
                                           (gx#syntax-e _%e123414123421%_)))
                                      (let ((_%hd123418123477%_
                                             (##car _%e123417123474%_))
                                            (_%tl123419123479%_
                                             (##cdr _%e123417123474%_)))
                                        (let* ((_%hd123482%_
                                                _%hd123418123477%_)
                                               (_%rest123484%_
                                                _%tl123419123479%_)
                                               (_%e123485123502%_ _%hd123482%_)
                                               (_%E123497123506%_
                                                (lambda ()
                                                  (if (null? _%bind123412%_)
                                                      (_%lp123408%_
                                                       _%rest123484%_
                                                       _%decls123411%_
                                                       _%bind123412%_
                                                       (cons _%hd123482%_
                                                             _%body123413%_))
                                                      (_%lp123408%_
                                                       _%rest123484%_
                                                       _%decls123411%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd123482%_ '()))
                     _%bind123412%_)
               _%body123413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E123487123520%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e123485123502%_)
                                                      (let ((_%e123498123510%_
                                                             (gx#syntax-e
                                                              _%e123485123502%_)))
                                                        (let ((_%hd123499123513%_
                                                               (##car _%e123498123510%_))
                                                              (_%tl123500123515%_
                                                               (##cdr _%e123498123510%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd123499123513%_)
                           (gx#core-identifier=?
                            _%hd123499123513%_
                            '%#declare))
                      (let ((_%xdecls123518%_ _%tl123500123515%_))
                        (_%lp123408%_
                         _%rest123484%_
                         (gx#stx-foldr cons _%decls123411%_ _%xdecls123518%_)
                         _%bind123412%_
                         _%body123413%_))
                      (_%E123497123506%_))))
              (_%E123497123506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E123486123552%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e123485123502%_)
                                                      (let ((_%e123488123524%_
                                                             (gx#syntax-e
                                                              _%e123485123502%_)))
                                                        (let ((_%hd123489123527%_
                                                               (##car _%e123488123524%_))
                                                              (_%tl123490123529%_
                                                               (##cdr _%e123488123524%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd123489123527%_)
                           (gx#core-identifier=?
                            _%hd123489123527%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl123490123529%_)
                          (let ((_%e123491123532%_
                                 (gx#syntax-e _%tl123490123529%_)))
                            (let ((_%hd123492123535%_
                                   (##car _%e123491123532%_))
                                  (_%tl123493123537%_
                                   (##cdr _%e123491123532%_)))
                              (let ((_%hd-bind123540%_ _%hd123492123535%_))
                                (if (gx#stx-pair? _%tl123493123537%_)
                                    (let ((_%e123494123542%_
                                           (gx#syntax-e _%tl123493123537%_)))
                                      (let ((_%hd123495123545%_
                                             (##car _%e123494123542%_))
                                            (_%tl123496123547%_
                                             (##cdr _%e123494123542%_)))
                                        (let ((_%expr123550%_
                                               _%hd123495123545%_))
                                          (if (gx#stx-null? _%tl123496123547%_)
                                              (_%lp123408%_
                                               _%rest123484%_
                                               _%decls123411%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind123540%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr123550%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind123412%_)
                                               _%body123413%_)
                                              (_%E123487123520%_)))))
                                    (_%E123487123520%_)))))
                          (_%E123487123520%_))
                      (_%E123487123520%_))))
              (_%E123487123520%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E123486123552%_))))
                                    (_%E123416123470%_)))))
                        (_%E123415123556%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body123399%_)
            (gx#stx-source _%stx123398%_))
           _%expand-special123401%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx123336%_)
        (let* ((_%e123337123344%_ _%stx123336%_)
               (_%E123339123348%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123337123344%_)))
               (_%E123338123394%_
                (lambda ()
                  (if (gx#stx-pair? _%e123337123344%_)
                      (let ((_%e123340123352%_
                             (gx#syntax-e _%e123337123344%_)))
                        (let ((_%hd123341123355%_ (##car _%e123340123352%_))
                              (_%tl123342123357%_ (##cdr _%e123340123352%_)))
                          (let ((_%body123360%_ _%tl123342123357%_))
                            (if (gx#stx-list? _%body123360%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl123362%_)
                                     (let* ((_%e123363123370%_ _%decl123362%_)
                                            (_%E123365123374%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e123363123370%_)))
                                            (_%E123364123390%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e123363123370%_)
                                                   (let ((_%e123366123378%_
                                                          (gx#syntax-e
                                                           _%e123363123370%_)))
                                                     (let ((_%hd123367123381%_
                                                            (##car _%e123366123378%_))
                                                           (_%tl123368123383%_
                                                            (##cdr _%e123366123378%_)))
                                                       (let* ((_%head123386%_
                                                               _%hd123367123381%_)
                                                              (_%args123388%_
                                                               _%tl123368123383%_))
                                                         (if (gx#stx-list?
                                                              _%args123388%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl123362%_)
                                                             (_%E123365123374%_)))))
                                                   (_%E123365123374%_)))))
                                       (_%E123364123390%_)))
                                   _%body123360%_))
                                 (gx#stx-source _%stx123336%_))
                                (_%E123339123348%_)))))
                      (_%E123339123348%_)))))
          (_%E123338123394%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx123240%_)
        (let* ((_%e123241123248%_ _%stx123240%_)
               (_%E123243123252%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123241123248%_)))
               (_%E123242123332%_
                (lambda ()
                  (if (gx#stx-pair? _%e123241123248%_)
                      (let ((_%e123244123256%_
                             (gx#syntax-e _%e123241123248%_)))
                        (let ((_%hd123245123259%_ (##car _%e123244123256%_))
                              (_%tl123246123261%_ (##cdr _%e123244123256%_)))
                          (let ((_%body123264%_ _%tl123246123261%_))
                            (let _%lp123266%_ ((_%rest123268%_ _%body123264%_)
                                               (_%r123269%_ '()))
                              (let* ((_%e123270123284%_ _%rest123268%_)
                                     (_%E123282123288%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx123240%_)))
                                     (_%E123272123292%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e123270123284%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r123269%_))
                                             (gx#stx-source _%stx123240%_))
                                            (_%E123282123288%_))))
                                     (_%E123271123328%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e123270123284%_)
                                            (let ((_%e123273123296%_
                                                   (gx#syntax-e
                                                    _%e123270123284%_)))
                                              (let ((_%hd123274123299%_
                                                     (##car _%e123273123296%_))
                                                    (_%tl123275123301%_
                                                     (##cdr _%e123273123296%_)))
                                                (if (gx#stx-pair?
                                                     _%hd123274123299%_)
                                                    (let ((_%e123276123304%_
                                                           (gx#syntax-e
                                                            _%hd123274123299%_)))
                                                      (let ((_%hd123277123307%_
                                                             (##car _%e123276123304%_))
                                                            (_%tl123278123309%_
                                                             (##cdr _%e123276123304%_)))
                                                        (let ((_%id123312%_
                                                               _%hd123277123307%_))
                                                          (if (gx#stx-pair?
                                                               _%tl123278123309%_)
                                                              (let ((_%e123279123314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl123278123309%_)))
                        (let ((_%hd123280123317%_ (##car _%e123279123314%_))
                              (_%tl123281123319%_ (##cdr _%e123279123314%_)))
                          (let ((_%eid123322%_ _%hd123280123317%_))
                            (if (gx#stx-null? _%tl123281123319%_)
                                (let ((_%rest123324%_ _%tl123275123301%_))
                                  (if (and (gx#identifier? _%id123312%_)
                                           (gx#identifier? _%eid123322%_))
                                      (let ((_%eid123326%_
                                             (gx#stx-e _%eid123322%_)))
                                        (gx#core-bind-extern!__0
                                         _%id123312%_
                                         _%eid123326%_)
                                        (_%lp123266%_
                                         _%rest123324%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id123312%_)
                                                     (cons _%eid123326%_ '()))
                                               _%r123269%_)))
                                      (_%E123272123292%_)))
                                (_%E123272123292%_)))))
                      (_%E123272123292%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E123272123292%_))))
                                            (_%E123272123292%_)))))
                                (_%E123271123328%_))))))
                      (_%E123243123252%_)))))
          (_%E123242123332%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx123186%_)
        (let* ((_%e123187123200%_ _%stx123186%_)
               (_%E123189123204%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123187123200%_)))
               (_%E123188123236%_
                (lambda ()
                  (if (gx#stx-pair? _%e123187123200%_)
                      (let ((_%e123190123208%_
                             (gx#syntax-e _%e123187123200%_)))
                        (let ((_%hd123191123211%_ (##car _%e123190123208%_))
                              (_%tl123192123213%_ (##cdr _%e123190123208%_)))
                          (if (gx#stx-pair? _%tl123192123213%_)
                              (let ((_%e123193123216%_
                                     (gx#syntax-e _%tl123192123213%_)))
                                (let ((_%hd123194123219%_
                                       (##car _%e123193123216%_))
                                      (_%tl123195123221%_
                                       (##cdr _%e123193123216%_)))
                                  (let ((_%hd123224%_ _%hd123194123219%_))
                                    (if (gx#stx-pair? _%tl123195123221%_)
                                        (let ((_%e123196123226%_
                                               (gx#syntax-e
                                                _%tl123195123221%_)))
                                          (let ((_%hd123197123229%_
                                                 (##car _%e123196123226%_))
                                                (_%tl123198123231%_
                                                 (##cdr _%e123196123226%_)))
                                            (let ((_%expr123234%_
                                                   _%hd123197123229%_))
                                              (if (gx#stx-null?
                                                   _%tl123198123231%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd123224%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd123224%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd123224%_)
                             (cons (gx#core-expand-expression _%expr123234%_)
                                   '())))
                 (gx#stx-source _%stx123186%_)))
              (_%E123189123204%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123189123204%_)))))
                                        (_%E123189123204%_)))))
                              (_%E123189123204%_))))
                      (_%E123189123204%_)))))
          (_%E123188123236%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx123130%_)
        (let* ((_%e123131123144%_ _%stx123130%_)
               (_%E123133123148%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123131123144%_)))
               (_%E123132123182%_
                (lambda ()
                  (if (gx#stx-pair? _%e123131123144%_)
                      (let ((_%e123134123152%_
                             (gx#syntax-e _%e123131123144%_)))
                        (let ((_%hd123135123155%_ (##car _%e123134123152%_))
                              (_%tl123136123157%_ (##cdr _%e123134123152%_)))
                          (if (gx#stx-pair? _%tl123136123157%_)
                              (let ((_%e123137123160%_
                                     (gx#syntax-e _%tl123136123157%_)))
                                (let ((_%hd123138123163%_
                                       (##car _%e123137123160%_))
                                      (_%tl123139123165%_
                                       (##cdr _%e123137123160%_)))
                                  (let ((_%id123168%_ _%hd123138123163%_))
                                    (if (gx#stx-pair? _%tl123139123165%_)
                                        (let ((_%e123140123170%_
                                               (gx#syntax-e
                                                _%tl123139123165%_)))
                                          (let ((_%hd123141123173%_
                                                 (##car _%e123140123170%_))
                                                (_%tl123142123175%_
                                                 (##cdr _%e123140123170%_)))
                                            (let ((_%binding-id123178%_
                                                   _%hd123141123173%_))
                                              (if (gx#stx-null?
                                                   _%tl123142123175%_)
                                                  (if (and (gx#identifier?
                                                            _%id123168%_)
                                                           (gx#identifier?
                                                            _%binding-id123178%_))
                                                      (let ((_%eid123180%_
                                                             (gx#stx-e
                                                              _%binding-id123178%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id123168%_
                                                         _%eid123180%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id123168%_)
                             (cons _%eid123180%_ '())))))
              (_%E123133123148%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123133123148%_)))))
                                        (_%E123133123148%_)))))
                              (_%E123133123148%_))))
                      (_%E123133123148%_)))))
          (_%E123132123182%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx123073%_)
        (let* ((_%e123074123087%_ _%stx123073%_)
               (_%E123076123091%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123074123087%_)))
               (_%E123075123126%_
                (lambda ()
                  (if (gx#stx-pair? _%e123074123087%_)
                      (let ((_%e123077123095%_
                             (gx#syntax-e _%e123074123087%_)))
                        (let ((_%hd123078123098%_ (##car _%e123077123095%_))
                              (_%tl123079123100%_ (##cdr _%e123077123095%_)))
                          (if (gx#stx-pair? _%tl123079123100%_)
                              (let ((_%e123080123103%_
                                     (gx#syntax-e _%tl123079123100%_)))
                                (let ((_%hd123081123106%_
                                       (##car _%e123080123103%_))
                                      (_%tl123082123108%_
                                       (##cdr _%e123080123103%_)))
                                  (let ((_%id123111%_ _%hd123081123106%_))
                                    (if (gx#stx-pair? _%tl123082123108%_)
                                        (let ((_%e123083123113%_
                                               (gx#syntax-e
                                                _%tl123082123108%_)))
                                          (let ((_%hd123084123116%_
                                                 (##car _%e123083123113%_))
                                                (_%tl123085123118%_
                                                 (##cdr _%e123083123113%_)))
                                            (let ((_%expr123121%_
                                                   _%hd123084123116%_))
                                              (if (gx#stx-null?
                                                   _%tl123085123118%_)
                                                  (if (gx#identifier?
                                                       _%id123111%_)
                                                      (let ((_g124032_
                                                             (gx#core-expand-expression+1
                                                              _%expr123121%_)))
                                                        (begin
                                                          (let ((_g124033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g124032_)
                             (##vector-length _g124032_)
                             1)))
                    (if (not (##fx= _g124033_ 2))
                        (error "Context expects 2 values" _g124033_)))
                  (let ((_%e-stx123123%_ (##vector-ref _g124032_ 0))
                        (_%e123124%_ (##vector-ref _g124032_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id123111%_ _%e123124%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id123111%_)
                                   (cons _%e-stx123123%_ '())))
                       (gx#stx-source _%stx123073%_))))))
              (_%E123076123091%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123076123091%_)))))
                                        (_%E123076123091%_)))))
                              (_%E123076123091%_))))
                      (_%E123076123091%_)))))
          (_%E123075123126%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx123017%_)
        (let* ((_%e123018123031%_ _%stx123017%_)
               (_%E123020123035%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123018123031%_)))
               (_%E123019123069%_
                (lambda ()
                  (if (gx#stx-pair? _%e123018123031%_)
                      (let ((_%e123021123039%_
                             (gx#syntax-e _%e123018123031%_)))
                        (let ((_%hd123022123042%_ (##car _%e123021123039%_))
                              (_%tl123023123044%_ (##cdr _%e123021123039%_)))
                          (if (gx#stx-pair? _%tl123023123044%_)
                              (let ((_%e123024123047%_
                                     (gx#syntax-e _%tl123023123044%_)))
                                (let ((_%hd123025123050%_
                                       (##car _%e123024123047%_))
                                      (_%tl123026123052%_
                                       (##cdr _%e123024123047%_)))
                                  (let ((_%id123055%_ _%hd123025123050%_))
                                    (if (gx#stx-pair? _%tl123026123052%_)
                                        (let ((_%e123027123057%_
                                               (gx#syntax-e
                                                _%tl123026123052%_)))
                                          (let ((_%hd123028123060%_
                                                 (##car _%e123027123057%_))
                                                (_%tl123029123062%_
                                                 (##cdr _%e123027123057%_)))
                                            (let ((_%alias-id123065%_
                                                   _%hd123028123060%_))
                                              (if (gx#stx-null?
                                                   _%tl123029123062%_)
                                                  (if (and (gx#identifier?
                                                            _%id123055%_)
                                                           (gx#identifier?
                                                            _%alias-id123065%_))
                                                      (let ((_%alias-id123067%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id123065%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id123055%_
                                                         _%alias-id123067%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id123055%_)
                             (cons _%alias-id123067%_ '())))))
              (_%E123020123035%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123020123035%_)))))
                                        (_%E123020123035%_)))))
                              (_%E123020123035%_))))
                      (_%E123020123035%_)))))
          (_%E123019123069%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx122960%_ _%wrap?122961%_)
        (let* ((_%e122962122972%_ _%stx122960%_)
               (_%E122964122976%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122962122972%_)))
               (_%E122963123003%_
                (lambda ()
                  (if (gx#stx-pair? _%e122962122972%_)
                      (let ((_%e122965122980%_
                             (gx#syntax-e _%e122962122972%_)))
                        (let ((_%hd122966122983%_ (##car _%e122965122980%_))
                              (_%tl122967122985%_ (##cdr _%e122965122980%_)))
                          (if (gx#stx-pair? _%tl122967122985%_)
                              (let ((_%e122968122988%_
                                     (gx#syntax-e _%tl122967122985%_)))
                                (let ((_%hd122969122991%_
                                       (##car _%e122968122988%_))
                                      (_%tl122970122993%_
                                       (##cdr _%e122968122988%_)))
                                  (let* ((_%hd122996%_ _%hd122969122991%_)
                                         (_%body122998%_ _%tl122970122993%_))
                                    (if (gx#core-bind-values? _%hd122996%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd122996%_)
                                           (let ((_%body123001%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd122996%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx122960%_
                                                               _%body122998%_)
                                                              '()))))
                                             (if _%wrap?122961%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body123001%_)
                                                  (gx#stx-source
                                                   _%stx122960%_))
                                                 _%body123001%_)))
                                         gx#current-expander-context
                                         (let ((__obj124025
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj124025)
                                           __obj124025))
                                        (_%E122964122976%_)))))
                              (_%E122964122976%_))))
                      (_%E122964122976%_)))))
          (_%E122963123003%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx123010%_)
        (let ((_%wrap?123012%_ '#t))
          (gx#core-expand-lambda%__% _%stx123010%_ _%wrap?123012%_))))
    (define gx#core-expand-lambda%
      (lambda _g124035_
        (let ((_g124034_ (##length _g124035_)))
          (cond ((##fx= _g124034_ 1)
                 (apply gx#core-expand-lambda%__0 _g124035_))
                ((##fx= _g124034_ 2)
                 (apply gx#core-expand-lambda%__% _g124035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g124035_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx122924%_)
        (let* ((_%e122925122932%_ _%stx122924%_)
               (_%E122927122936%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122925122932%_)))
               (_%E122926122955%_
                (lambda ()
                  (if (gx#stx-pair? _%e122925122932%_)
                      (let ((_%e122928122940%_
                             (gx#syntax-e _%e122925122932%_)))
                        (let ((_%hd122929122943%_ (##car _%e122928122940%_))
                              (_%tl122930122945%_ (##cdr _%e122928122940%_)))
                          (let ((_%clauses122948%_ _%tl122930122945%_))
                            (if (gx#stx-list? _%clauses122948%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause122950%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause122950%_)
                                       (let ((_%$e122952%_
                                              (gx#stx-source
                                               _%clause122950%_)))
                                         (if _%$e122952%_
                                             _%$e122952%_
                                             (gx#stx-source _%stx122924%_))))
                                      '#f))
                                   _%clauses122948%_))
                                 (gx#stx-source _%stx122924%_))
                                (_%E122927122936%_)))))
                      (_%E122927122936%_)))))
          (_%E122926122955%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx122878%_)
        (let* ((_%e122879122889%_ _%stx122878%_)
               (_%E122881122893%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122879122889%_)))
               (_%E122880122920%_
                (lambda ()
                  (if (gx#stx-pair? _%e122879122889%_)
                      (let ((_%e122882122897%_
                             (gx#syntax-e _%e122879122889%_)))
                        (let ((_%hd122883122900%_ (##car _%e122882122897%_))
                              (_%tl122884122902%_ (##cdr _%e122882122897%_)))
                          (if (gx#stx-pair? _%tl122884122902%_)
                              (let ((_%e122885122905%_
                                     (gx#syntax-e _%tl122884122902%_)))
                                (let ((_%hd122886122908%_
                                       (##car _%e122885122905%_))
                                      (_%tl122887122910%_
                                       (##cdr _%e122885122905%_)))
                                  (let* ((_%hd122913%_ _%hd122886122908%_)
                                         (_%body122915%_ _%tl122887122910%_))
                                    (if (gx#core-expand-let-bind? _%hd122913%_)
                                        (let ((_%expressions122917%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd122913%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd122913%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd122913%_
                                                           _%expressions122917%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx122878%_
                         _%body122915%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx122878%_)))
                                           gx#current-expander-context
                                           (let ((__obj124026
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj124026)
                                             __obj124026)))
                                        (_%E122881122893%_)))))
                              (_%E122881122893%_))))
                      (_%E122881122893%_)))))
          (_%E122880122920%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx122823%_ _%form122824%_)
        (let* ((_%e122825122835%_ _%stx122823%_)
               (_%E122827122839%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122825122835%_)))
               (_%E122826122864%_
                (lambda ()
                  (if (gx#stx-pair? _%e122825122835%_)
                      (let ((_%e122828122843%_
                             (gx#syntax-e _%e122825122835%_)))
                        (let ((_%hd122829122846%_ (##car _%e122828122843%_))
                              (_%tl122830122848%_ (##cdr _%e122828122843%_)))
                          (if (gx#stx-pair? _%tl122830122848%_)
                              (let ((_%e122831122851%_
                                     (gx#syntax-e _%tl122830122848%_)))
                                (let ((_%hd122832122854%_
                                       (##car _%e122831122851%_))
                                      (_%tl122833122856%_
                                       (##cdr _%e122831122851%_)))
                                  (let* ((_%hd122859%_ _%hd122832122854%_)
                                         (_%body122861%_ _%tl122833122856%_))
                                    (if (gx#core-expand-let-bind? _%hd122859%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd122859%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form122824%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd122859%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd122859%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx122823%_
                                                               _%body122861%_)
                                                              '())))
                                            (gx#stx-source _%stx122823%_)))
                                         gx#current-expander-context
                                         (let ((__obj124027
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj124027)
                                           __obj124027))
                                        (_%E122827122839%_)))))
                              (_%E122827122839%_))))
                      (_%E122827122839%_)))))
          (_%E122826122864%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx122871%_)
        (let ((_%form122873%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx122871%_ _%form122873%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g124037_
        (let ((_g124036_ (##length _g124037_)))
          (cond ((##fx= _g124036_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g124037_))
                ((##fx= _g124036_ 2)
                 (apply gx#core-expand-letrec-values%__% _g124037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g124037_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx122820%_)
        (gx#core-expand-letrec-values%__% _%stx122820%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx122777%_)
        (if (gx#stx-list? _%stx122777%_)
            (gx#stx-andmap
             (lambda (_%bind122779%_)
               (let* ((_%e122780122790%_ _%bind122779%_)
                      (_%E122782122794%_ (lambda () '#f))
                      (_%E122781122816%_
                       (lambda ()
                         (if (gx#stx-pair? _%e122780122790%_)
                             (let ((_%e122783122798%_
                                    (gx#syntax-e _%e122780122790%_)))
                               (let ((_%hd122784122801%_
                                      (##car _%e122783122798%_))
                                     (_%tl122785122803%_
                                      (##cdr _%e122783122798%_)))
                                 (let ((_%hd122806%_ _%hd122784122801%_))
                                   (if (gx#stx-pair? _%tl122785122803%_)
                                       (let ((_%e122786122808%_
                                              (gx#syntax-e
                                               _%tl122785122803%_)))
                                         (let ((_%hd122787122811%_
                                                (##car _%e122786122808%_))
                                               (_%tl122788122813%_
                                                (##cdr _%e122786122808%_)))
                                           (if (gx#stx-null?
                                                _%tl122788122813%_)
                                               (gx#core-bind-values?
                                                _%hd122806%_)
                                               (_%E122782122794%_))))
                                       (_%E122782122794%_)))))
                             (_%E122782122794%_)))))
                 (_%E122781122816%_)))
             _%stx122777%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind122736%_)
        (let* ((_%e122737122747%_ _%bind122736%_)
               (_%E122739122751%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122737122747%_)))
               (_%E122738122773%_
                (lambda ()
                  (if (gx#stx-pair? _%e122737122747%_)
                      (let ((_%e122740122755%_
                             (gx#syntax-e _%e122737122747%_)))
                        (let ((_%hd122741122758%_ (##car _%e122740122755%_))
                              (_%tl122742122760%_ (##cdr _%e122740122755%_)))
                          (if (gx#stx-pair? _%tl122742122760%_)
                              (let ((_%e122743122763%_
                                     (gx#syntax-e _%tl122742122760%_)))
                                (let ((_%hd122744122766%_
                                       (##car _%e122743122763%_))
                                      (_%tl122745122768%_
                                       (##cdr _%e122743122763%_)))
                                  (let ((_%expr122771%_ _%hd122744122766%_))
                                    (if (gx#stx-null? _%tl122745122768%_)
                                        (gx#core-expand-expression
                                         _%expr122771%_)
                                        (_%E122739122751%_)))))
                              (_%E122739122751%_))))
                      (_%E122739122751%_)))))
          (_%E122738122773%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind122695%_)
        (let* ((_%e122696122706%_ _%bind122695%_)
               (_%E122698122710%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122696122706%_)))
               (_%E122697122732%_
                (lambda ()
                  (if (gx#stx-pair? _%e122696122706%_)
                      (let ((_%e122699122714%_
                             (gx#syntax-e _%e122696122706%_)))
                        (let ((_%hd122700122717%_ (##car _%e122699122714%_))
                              (_%tl122701122719%_ (##cdr _%e122699122714%_)))
                          (let ((_%hd122722%_ _%hd122700122717%_))
                            (if (gx#stx-pair? _%tl122701122719%_)
                                (let ((_%e122702122724%_
                                       (gx#syntax-e _%tl122701122719%_)))
                                  (let ((_%hd122703122727%_
                                         (##car _%e122702122724%_))
                                        (_%tl122704122729%_
                                         (##cdr _%e122702122724%_)))
                                    (if (gx#stx-null? _%tl122704122729%_)
                                        (gx#core-bind-values!__0 _%hd122722%_)
                                        (_%E122698122710%_))))
                                (_%E122698122710%_)))))
                      (_%E122698122710%_)))))
          (_%E122697122732%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind122653%_ _%expr122654%_)
        (let* ((_%e122655122665%_ _%bind122653%_)
               (_%E122657122669%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122655122665%_)))
               (_%E122656122691%_
                (lambda ()
                  (if (gx#stx-pair? _%e122655122665%_)
                      (let ((_%e122658122673%_
                             (gx#syntax-e _%e122655122665%_)))
                        (let ((_%hd122659122676%_ (##car _%e122658122673%_))
                              (_%tl122660122678%_ (##cdr _%e122658122673%_)))
                          (let ((_%hd122681%_ _%hd122659122676%_))
                            (if (gx#stx-pair? _%tl122660122678%_)
                                (let ((_%e122661122683%_
                                       (gx#syntax-e _%tl122660122678%_)))
                                  (let ((_%hd122662122686%_
                                         (##car _%e122661122683%_))
                                        (_%tl122663122688%_
                                         (##cdr _%e122661122683%_)))
                                    (if (gx#stx-null? _%tl122663122688%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd122681%_)
                                              (cons _%expr122654%_ '()))
                                        (_%E122657122669%_))))
                                (_%E122657122669%_)))))
                      (_%E122657122669%_)))))
          (_%E122656122691%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx122607%_)
        (let* ((_%e122608122618%_ _%stx122607%_)
               (_%E122610122622%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122608122618%_)))
               (_%E122609122649%_
                (lambda ()
                  (if (gx#stx-pair? _%e122608122618%_)
                      (let ((_%e122611122626%_
                             (gx#syntax-e _%e122608122618%_)))
                        (let ((_%hd122612122629%_ (##car _%e122611122626%_))
                              (_%tl122613122631%_ (##cdr _%e122611122626%_)))
                          (if (gx#stx-pair? _%tl122613122631%_)
                              (let ((_%e122614122634%_
                                     (gx#syntax-e _%tl122613122631%_)))
                                (let ((_%hd122615122637%_
                                       (##car _%e122614122634%_))
                                      (_%tl122616122639%_
                                       (##cdr _%e122614122634%_)))
                                  (let* ((_%hd122642%_ _%hd122615122637%_)
                                         (_%body122644%_ _%tl122616122639%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd122642%_)
                                        (let ((_%expanders122646%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd122642%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd122642%_
                                              _%expanders122646%_)
                                             (gx#core-expand-local-block
                                              _%stx122607%_
                                              _%body122644%_))
                                           gx#current-expander-context
                                           (let ((__obj124028
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj124028)
                                             __obj124028)))
                                        (_%E122610122622%_)))))
                              (_%E122610122622%_))))
                      (_%E122610122622%_)))))
          (_%E122609122649%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx122556%_)
        (let* ((_%e122557122567%_ _%stx122556%_)
               (_%E122559122571%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122557122567%_)))
               (_%E122558122603%_
                (lambda ()
                  (if (gx#stx-pair? _%e122557122567%_)
                      (let ((_%e122560122575%_
                             (gx#syntax-e _%e122557122567%_)))
                        (let ((_%hd122561122578%_ (##car _%e122560122575%_))
                              (_%tl122562122580%_ (##cdr _%e122560122575%_)))
                          (if (gx#stx-pair? _%tl122562122580%_)
                              (let ((_%e122563122583%_
                                     (gx#syntax-e _%tl122562122580%_)))
                                (let ((_%hd122564122586%_
                                       (##car _%e122563122583%_))
                                      (_%tl122565122588%_
                                       (##cdr _%e122563122583%_)))
                                  (let* ((_%hd122591%_ _%hd122564122586%_)
                                         (_%body122593%_ _%tl122565122588%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd122591%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd122591%_
                                            (make-list
                                             (gx#stx-length _%hd122591%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g122595122598%_
                                                     _%g122596122600%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g122595122598%_
                                               _%g122596122600%_
                                               '#t))
                                            _%hd122591%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd122591%_))
                                           (gx#core-expand-local-block
                                            _%stx122556%_
                                            _%body122593%_))
                                         gx#current-expander-context
                                         (let ((__obj124029
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj124029)
                                           __obj124029))
                                        (_%E122559122571%_)))))
                              (_%E122559122571%_))))
                      (_%E122559122571%_)))))
          (_%E122558122603%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx122513%_)
        (if (gx#stx-list? _%stx122513%_)
            (gx#stx-andmap
             (lambda (_%bind122515%_)
               (let* ((_%e122516122526%_ _%bind122515%_)
                      (_%E122518122530%_ (lambda () '#f))
                      (_%E122517122552%_
                       (lambda ()
                         (if (gx#stx-pair? _%e122516122526%_)
                             (let ((_%e122519122534%_
                                    (gx#syntax-e _%e122516122526%_)))
                               (let ((_%hd122520122537%_
                                      (##car _%e122519122534%_))
                                     (_%tl122521122539%_
                                      (##cdr _%e122519122534%_)))
                                 (let ((_%hd122542%_ _%hd122520122537%_))
                                   (if (gx#stx-pair? _%tl122521122539%_)
                                       (let ((_%e122522122544%_
                                              (gx#syntax-e
                                               _%tl122521122539%_)))
                                         (let ((_%hd122523122547%_
                                                (##car _%e122522122544%_))
                                               (_%tl122524122549%_
                                                (##cdr _%e122522122544%_)))
                                           (if (gx#stx-null?
                                                _%tl122524122549%_)
                                               (gx#identifier? _%hd122542%_)
                                               (_%E122518122530%_))))
                                       (_%E122518122530%_)))))
                             (_%E122518122530%_)))))
                 (_%E122517122552%_)))
             _%stx122513%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind122469%_)
        (let* ((_%e122470122480%_ _%bind122469%_)
               (_%E122472122484%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122470122480%_)))
               (_%E122471122509%_
                (lambda ()
                  (if (gx#stx-pair? _%e122470122480%_)
                      (let ((_%e122473122488%_
                             (gx#syntax-e _%e122470122480%_)))
                        (let ((_%hd122474122491%_ (##car _%e122473122488%_))
                              (_%tl122475122493%_ (##cdr _%e122473122488%_)))
                          (if (gx#stx-pair? _%tl122475122493%_)
                              (let ((_%e122476122496%_
                                     (gx#syntax-e _%tl122475122493%_)))
                                (let ((_%hd122477122499%_
                                       (##car _%e122476122496%_))
                                      (_%tl122478122501%_
                                       (##cdr _%e122476122496%_)))
                                  (let ((_%expr122504%_ _%hd122477122499%_))
                                    (if (gx#stx-null? _%tl122478122501%_)
                                        (let ((_g124038_
                                               (gx#core-expand-expression+1
                                                _%expr122504%_)))
                                          (begin
                                            (let ((_g124039_
                                                   (if (##values? _g124038_)
                                                       (##vector-length
                                                        _g124038_)
                                                       1)))
                                              (if (not (##fx= _g124039_ 2))
                                                  (error "Context expects 2 values"
                                                         _g124039_)))
                                            (let ((_%_122506%_
                                                   (##vector-ref _g124038_ 0))
                                                  (_%e122507%_
                                                   (##vector-ref _g124038_ 1)))
                                              _%e122507%_)))
                                        (_%E122472122484%_)))))
                              (_%E122472122484%_))))
                      (_%E122472122484%_)))))
          (_%E122471122509%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind122414%_ _%e122415%_ _%rebind?122416%_)
        (let* ((_%e122417122427%_ _%bind122414%_)
               (_%E122419122431%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122417122427%_)))
               (_%E122418122453%_
                (lambda ()
                  (if (gx#stx-pair? _%e122417122427%_)
                      (let ((_%e122420122435%_
                             (gx#syntax-e _%e122417122427%_)))
                        (let ((_%hd122421122438%_ (##car _%e122420122435%_))
                              (_%tl122422122440%_ (##cdr _%e122420122435%_)))
                          (let ((_%id122443%_ _%hd122421122438%_))
                            (if (gx#stx-pair? _%tl122422122440%_)
                                (let ((_%e122423122445%_
                                       (gx#syntax-e _%tl122422122440%_)))
                                  (let ((_%hd122424122448%_
                                         (##car _%e122423122445%_))
                                        (_%tl122425122450%_
                                         (##cdr _%e122423122445%_)))
                                    (if (gx#stx-null? _%tl122425122450%_)
                                        (gx#core-bind-syntax!__1
                                         _%id122443%_
                                         _%e122415%_
                                         _%rebind?122416%_)
                                        (_%E122419122431%_))))
                                (_%E122419122431%_)))))
                      (_%E122419122431%_)))))
          (_%E122418122453%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind122460%_ _%e122461%_)
        (let ((_%rebind?122463%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind122460%_
           _%e122461%_
           _%rebind?122463%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g124041_
        (let ((_g124040_ (##length _g124041_)))
          (cond ((##fx= _g124040_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g124041_))
                ((##fx= _g124040_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g124041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g124041_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx122372%_)
        (let* ((_%e122373122383%_ _%stx122372%_)
               (_%E122375122387%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122373122383%_)))
               (_%E122374122409%_
                (lambda ()
                  (if (gx#stx-pair? _%e122373122383%_)
                      (let ((_%e122376122391%_
                             (gx#syntax-e _%e122373122383%_)))
                        (let ((_%hd122377122394%_ (##car _%e122376122391%_))
                              (_%tl122378122396%_ (##cdr _%e122376122391%_)))
                          (if (gx#stx-pair? _%tl122378122396%_)
                              (let ((_%e122379122399%_
                                     (gx#syntax-e _%tl122378122396%_)))
                                (let ((_%hd122380122402%_
                                       (##car _%e122379122399%_))
                                      (_%tl122381122404%_
                                       (##cdr _%e122379122399%_)))
                                  (let ((_%expr122407%_ _%hd122380122402%_))
                                    (if (gx#stx-null? _%tl122381122404%_)
                                        (gx#core-expand-expression
                                         _%expr122407%_)
                                        (_%E122375122387%_)))))
                              (_%E122375122387%_))))
                      (_%E122375122387%_)))))
          (_%E122374122409%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx122331%_)
        (let* ((_%e122332122342%_ _%stx122331%_)
               (_%E122334122346%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122332122342%_)))
               (_%E122333122368%_
                (lambda ()
                  (if (gx#stx-pair? _%e122332122342%_)
                      (let ((_%e122335122350%_
                             (gx#syntax-e _%e122332122342%_)))
                        (let ((_%hd122336122353%_ (##car _%e122335122350%_))
                              (_%tl122337122355%_ (##cdr _%e122335122350%_)))
                          (if (gx#stx-pair? _%tl122337122355%_)
                              (let ((_%e122338122358%_
                                     (gx#syntax-e _%tl122337122355%_)))
                                (let ((_%hd122339122361%_
                                       (##car _%e122338122358%_))
                                      (_%tl122340122363%_
                                       (##cdr _%e122338122358%_)))
                                  (let ((_%e122366%_ _%hd122339122361%_))
                                    (if (gx#stx-null? _%tl122340122363%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e122366%_)
                                                     '()))
                                         (gx#stx-source _%stx122331%_))
                                        (_%E122334122346%_)))))
                              (_%E122334122346%_))))
                      (_%E122334122346%_)))))
          (_%E122333122368%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx122290%_)
        (let* ((_%e122291122301%_ _%stx122290%_)
               (_%E122293122305%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122291122301%_)))
               (_%E122292122327%_
                (lambda ()
                  (if (gx#stx-pair? _%e122291122301%_)
                      (let ((_%e122294122309%_
                             (gx#syntax-e _%e122291122301%_)))
                        (let ((_%hd122295122312%_ (##car _%e122294122309%_))
                              (_%tl122296122314%_ (##cdr _%e122294122309%_)))
                          (if (gx#stx-pair? _%tl122296122314%_)
                              (let ((_%e122297122317%_
                                     (gx#syntax-e _%tl122296122314%_)))
                                (let ((_%hd122298122320%_
                                       (##car _%e122297122317%_))
                                      (_%tl122299122322%_
                                       (##cdr _%e122297122317%_)))
                                  (let ((_%e122325%_ _%hd122298122320%_))
                                    (if (gx#stx-null? _%tl122299122322%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e122325%_)
                                                     '()))
                                         (gx#stx-source _%stx122290%_))
                                        (_%E122293122305%_)))))
                              (_%E122293122305%_))))
                      (_%E122293122305%_)))))
          (_%E122292122327%_))))
    (define gx#core-expand-call%
      (lambda (_%stx122247%_)
        (let* ((_%e122248122258%_ _%stx122247%_)
               (_%E122250122262%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122248122258%_)))
               (_%E122249122286%_
                (lambda ()
                  (if (gx#stx-pair? _%e122248122258%_)
                      (let ((_%e122251122266%_
                             (gx#syntax-e _%e122248122258%_)))
                        (let ((_%hd122252122269%_ (##car _%e122251122266%_))
                              (_%tl122253122271%_ (##cdr _%e122251122266%_)))
                          (if (gx#stx-pair? _%tl122253122271%_)
                              (let ((_%e122254122274%_
                                     (gx#syntax-e _%tl122253122271%_)))
                                (let ((_%hd122255122277%_
                                       (##car _%e122254122274%_))
                                      (_%tl122256122279%_
                                       (##cdr _%e122254122274%_)))
                                  (let* ((_%rator122282%_ _%hd122255122277%_)
                                         (_%args122284%_ _%tl122256122279%_))
                                    (if (gx#stx-list? _%args122284%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator122282%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args122284%_))
                                         (gx#stx-source _%stx122247%_))
                                        (_%E122250122262%_)))))
                              (_%E122250122262%_))))
                      (_%E122250122262%_)))))
          (_%E122249122286%_))))
    (define gx#core-expand-if%
      (lambda (_%stx122180%_)
        (let* ((_%e122181122197%_ _%stx122180%_)
               (_%E122183122201%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122181122197%_)))
               (_%E122182122243%_
                (lambda ()
                  (if (gx#stx-pair? _%e122181122197%_)
                      (let ((_%e122184122205%_
                             (gx#syntax-e _%e122181122197%_)))
                        (let ((_%hd122185122208%_ (##car _%e122184122205%_))
                              (_%tl122186122210%_ (##cdr _%e122184122205%_)))
                          (if (gx#stx-pair? _%tl122186122210%_)
                              (let ((_%e122187122213%_
                                     (gx#syntax-e _%tl122186122210%_)))
                                (let ((_%hd122188122216%_
                                       (##car _%e122187122213%_))
                                      (_%tl122189122218%_
                                       (##cdr _%e122187122213%_)))
                                  (let ((_%test122221%_ _%hd122188122216%_))
                                    (if (gx#stx-pair? _%tl122189122218%_)
                                        (let ((_%e122190122223%_
                                               (gx#syntax-e
                                                _%tl122189122218%_)))
                                          (let ((_%hd122191122226%_
                                                 (##car _%e122190122223%_))
                                                (_%tl122192122228%_
                                                 (##cdr _%e122190122223%_)))
                                            (let ((_%K122231%_
                                                   _%hd122191122226%_))
                                              (if (gx#stx-pair?
                                                   _%tl122192122228%_)
                                                  (let ((_%e122193122233%_
                                                         (gx#syntax-e
                                                          _%tl122192122228%_)))
                                                    (let ((_%hd122194122236%_
                                                           (##car _%e122193122233%_))
                                                          (_%tl122195122238%_
                                                           (##cdr _%e122193122233%_)))
                                                      (let ((_%E122241%_
                                                             _%hd122194122236%_))
                                                        (if (gx#stx-null?
                                                             _%tl122195122238%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test122221%_)
                                 (cons (gx#core-expand-expression _%K122231%_)
                                       (cons (gx#core-expand-expression
                                              _%E122241%_)
                                             '()))))
                     (gx#stx-source _%stx122180%_))
                    (_%E122183122201%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122183122201%_)))))
                                        (_%E122183122201%_)))))
                              (_%E122183122201%_))))
                      (_%E122183122201%_)))))
          (_%E122182122243%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx122139%_)
        (let* ((_%e122140122150%_ _%stx122139%_)
               (_%E122142122154%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122140122150%_)))
               (_%E122141122176%_
                (lambda ()
                  (if (gx#stx-pair? _%e122140122150%_)
                      (let ((_%e122143122158%_
                             (gx#syntax-e _%e122140122150%_)))
                        (let ((_%hd122144122161%_ (##car _%e122143122158%_))
                              (_%tl122145122163%_ (##cdr _%e122143122158%_)))
                          (if (gx#stx-pair? _%tl122145122163%_)
                              (let ((_%e122146122166%_
                                     (gx#syntax-e _%tl122145122163%_)))
                                (let ((_%hd122147122169%_
                                       (##car _%e122146122166%_))
                                      (_%tl122148122171%_
                                       (##cdr _%e122146122166%_)))
                                  (let ((_%id122174%_ _%hd122147122169%_))
                                    (if (gx#stx-null? _%tl122148122171%_)
                                        (if (gx#identifier? _%id122174%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id122174%_
                                                          _%stx122139%_)
                                                         '()))
                                             (gx#stx-source _%stx122139%_))
                                            (_%E122142122154%_))
                                        (_%E122142122154%_)))))
                              (_%E122142122154%_))))
                      (_%E122142122154%_)))))
          (_%E122141122176%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx122085%_)
        (let* ((_%e122086122099%_ _%stx122085%_)
               (_%E122088122103%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122086122099%_)))
               (_%E122087122135%_
                (lambda ()
                  (if (gx#stx-pair? _%e122086122099%_)
                      (let ((_%e122089122107%_
                             (gx#syntax-e _%e122086122099%_)))
                        (let ((_%hd122090122110%_ (##car _%e122089122107%_))
                              (_%tl122091122112%_ (##cdr _%e122089122107%_)))
                          (if (gx#stx-pair? _%tl122091122112%_)
                              (let ((_%e122092122115%_
                                     (gx#syntax-e _%tl122091122112%_)))
                                (let ((_%hd122093122118%_
                                       (##car _%e122092122115%_))
                                      (_%tl122094122120%_
                                       (##cdr _%e122092122115%_)))
                                  (let ((_%id122123%_ _%hd122093122118%_))
                                    (if (gx#stx-pair? _%tl122094122120%_)
                                        (let ((_%e122095122125%_
                                               (gx#syntax-e
                                                _%tl122094122120%_)))
                                          (let ((_%hd122096122128%_
                                                 (##car _%e122095122125%_))
                                                (_%tl122097122130%_
                                                 (##cdr _%e122095122125%_)))
                                            (let ((_%expr122133%_
                                                   _%hd122096122128%_))
                                              (if (gx#stx-null?
                                                   _%tl122097122130%_)
                                                  (if (gx#identifier?
                                                       _%id122123%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id122123%_
                            _%stx122085%_)
                           (cons (gx#core-expand-expression _%expr122133%_)
                                 '())))
               (gx#stx-source _%stx122085%_))
              (_%E122088122103%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122088122103%_)))))
                                        (_%E122088122103%_)))))
                              (_%E122088122103%_))))
                      (_%E122088122103%_)))))
          (_%E122087122135%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx121930%_)
        (letrec ((_%generate121932%_
                  (lambda (_%body121962%_)
                    (let _%lp121964%_ ((_%rest121966%_ _%body121962%_)
                                       (_%ns121967%_
                                        (gx#core-context-namespace__0))
                                       (_%r121968%_ '()))
                      (let* ((_%e121969121984%_ _%rest121966%_)
                             (_%E121982121988%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e121969121984%_)))
                             (_%E121978121992%_
                              (lambda ()
                                (if (gx#stx-null? _%e121969121984%_)
                                    (reverse _%r121968%_)
                                    (_%E121982121988%_))))
                             (_%E121971122049%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121969121984%_)
                                    (let ((_%e121979121996%_
                                           (gx#syntax-e _%e121969121984%_)))
                                      (let ((_%hd121980121999%_
                                             (##car _%e121979121996%_))
                                            (_%tl121981122001%_
                                             (##cdr _%e121979121996%_)))
                                        (let* ((_%hd122004%_
                                                _%hd121980121999%_)
                                               (_%rest122006%_
                                                _%tl121981122001%_))
                                          (if (gx#identifier? _%hd122004%_)
                                              (_%lp121964%_
                                               _%rest122006%_
                                               _%ns121967%_
                                               (cons (cons _%hd122004%_
                                                           (cons (if _%ns121967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd122004%_
                              _%ns121967%_
                              '"#"
                              _%hd122004%_)
                             _%hd122004%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r121968%_))
                                              (let* ((_%e122007122017%_
                                                      _%hd122004%_)
                                                     (_%E122009122021%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e122007122017%_)))
                                                     (_%E122008122045%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e122007122017%_)
                                                            (let ((_%e122010122025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e122007122017%_)))
                      (let ((_%hd122011122028%_ (##car _%e122010122025%_))
                            (_%tl122012122030%_ (##cdr _%e122010122025%_)))
                        (let ((_%id122033%_ _%hd122011122028%_))
                          (if (gx#stx-pair? _%tl122012122030%_)
                              (let ((_%e122013122035%_
                                     (gx#syntax-e _%tl122012122030%_)))
                                (let ((_%hd122014122038%_
                                       (##car _%e122013122035%_))
                                      (_%tl122015122040%_
                                       (##cdr _%e122013122035%_)))
                                  (let ((_%eid122043%_ _%hd122014122038%_))
                                    (if (gx#stx-null? _%tl122015122040%_)
                                        (if (and (gx#identifier? _%id122033%_)
                                                 (gx#identifier?
                                                  _%eid122043%_))
                                            (_%lp121964%_
                                             _%rest122006%_
                                             _%ns121967%_
                                             (cons (cons _%id122033%_
                                                         (cons _%eid122043%_
                                                               '()))
                                                   _%r121968%_))
                                            (_%E122009122021%_))
                                        (_%E122009122021%_)))))
                              (_%E122009122021%_)))))
                    (_%E122009122021%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E122008122045%_))))))
                                    (_%E121978121992%_))))
                             (_%E121970122081%_
                              (lambda ()
                                (if (gx#stx-pair? _%e121969121984%_)
                                    (let ((_%e121972122053%_
                                           (gx#syntax-e _%e121969121984%_)))
                                      (let ((_%hd121973122056%_
                                             (##car _%e121972122053%_))
                                            (_%tl121974122058%_
                                             (##cdr _%e121972122053%_)))
                                        (if (eq? (gx#stx-e _%hd121973122056%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl121974122058%_)
                                                (let ((_%e121975122061%_
                                                       (gx#syntax-e
                                                        _%tl121974122058%_)))
                                                  (let ((_%hd121976122064%_
                                                         (##car _%e121975122061%_))
                                                        (_%tl121977122066%_
                                                         (##cdr _%e121975122061%_)))
                                                    (let* ((_%ns122069%_
                                                            _%hd121976122064%_)
                                                           (_%rest122071%_
                                                            _%tl121977122066%_)
                                                           (_%ns122079%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns122069%_)
                        (symbol->string (gx#stx-e _%ns122069%_))
                        (if (or (gx#stx-string? _%ns122069%_)
                                (gx#stx-false? _%ns122069%_))
                            (gx#stx-e _%ns122069%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx121930%_
                             _%ns122069%_)))))
              (_%lp121964%_ _%rest122071%_ _%ns122079%_ _%r121968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E121971122049%_))
                                            (_%E121971122049%_))))
                                    (_%E121971122049%_)))))
                        (_%E121970122081%_))))))
          (let* ((_%e121933121940%_ _%stx121930%_)
                 (_%E121935121944%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121933121940%_)))
                 (_%E121934121958%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121933121940%_)
                        (let ((_%e121936121948%_
                               (gx#syntax-e _%e121933121940%_)))
                          (let ((_%hd121937121951%_ (##car _%e121936121948%_))
                                (_%tl121938121953%_ (##cdr _%e121936121948%_)))
                            (let ((_%body121956%_ _%tl121938121953%_))
                              (if (gx#stx-list? _%body121956%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate121932%_ _%body121956%_))
                                  (_%E121935121944%_)))))
                        (_%E121935121944%_)))))
            (_%E121934121958%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx121876%_)
        (let* ((_%e121877121890%_ _%stx121876%_)
               (_%E121879121894%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121877121890%_)))
               (_%E121878121926%_
                (lambda ()
                  (if (gx#stx-pair? _%e121877121890%_)
                      (let ((_%e121880121898%_
                             (gx#syntax-e _%e121877121890%_)))
                        (let ((_%hd121881121901%_ (##car _%e121880121898%_))
                              (_%tl121882121903%_ (##cdr _%e121880121898%_)))
                          (if (gx#stx-pair? _%tl121882121903%_)
                              (let ((_%e121883121906%_
                                     (gx#syntax-e _%tl121882121903%_)))
                                (let ((_%hd121884121909%_
                                       (##car _%e121883121906%_))
                                      (_%tl121885121911%_
                                       (##cdr _%e121883121906%_)))
                                  (let ((_%hd121914%_ _%hd121884121909%_))
                                    (if (gx#stx-pair? _%tl121885121911%_)
                                        (let ((_%e121886121916%_
                                               (gx#syntax-e
                                                _%tl121885121911%_)))
                                          (let ((_%hd121887121919%_
                                                 (##car _%e121886121916%_))
                                                (_%tl121888121921%_
                                                 (##cdr _%e121886121916%_)))
                                            (let ((_%expr121924%_
                                                   _%hd121887121919%_))
                                              (if (gx#stx-null?
                                                   _%tl121888121921%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd121914%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd121914%_)
                          (cons _%expr121924%_ '())))
              (_%E121879121894%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121879121894%_)))))
                                        (_%E121879121894%_)))))
                              (_%E121879121894%_))))
                      (_%E121879121894%_)))))
          (_%E121878121926%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx121822%_)
        (let* ((_%e121823121836%_ _%stx121822%_)
               (_%E121825121840%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121823121836%_)))
               (_%E121824121872%_
                (lambda ()
                  (if (gx#stx-pair? _%e121823121836%_)
                      (let ((_%e121826121844%_
                             (gx#syntax-e _%e121823121836%_)))
                        (let ((_%hd121827121847%_ (##car _%e121826121844%_))
                              (_%tl121828121849%_ (##cdr _%e121826121844%_)))
                          (if (gx#stx-pair? _%tl121828121849%_)
                              (let ((_%e121829121852%_
                                     (gx#syntax-e _%tl121828121849%_)))
                                (let ((_%hd121830121855%_
                                       (##car _%e121829121852%_))
                                      (_%tl121831121857%_
                                       (##cdr _%e121829121852%_)))
                                  (let ((_%hd121860%_ _%hd121830121855%_))
                                    (if (gx#stx-pair? _%tl121831121857%_)
                                        (let ((_%e121832121862%_
                                               (gx#syntax-e
                                                _%tl121831121857%_)))
                                          (let ((_%hd121833121865%_
                                                 (##car _%e121832121862%_))
                                                (_%tl121834121867%_
                                                 (##cdr _%e121832121862%_)))
                                            (let ((_%expr121870%_
                                                   _%hd121833121865%_))
                                              (if (gx#stx-null?
                                                   _%tl121834121867%_)
                                                  (if (gx#identifier?
                                                       _%hd121860%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd121860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr121870%_ '())))
              (_%E121825121840%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121825121840%_)))))
                                        (_%E121825121840%_)))))
                              (_%E121825121840%_))))
                      (_%E121825121840%_)))))
          (_%E121824121872%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx121768%_)
        (let* ((_%e121769121782%_ _%stx121768%_)
               (_%E121771121786%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121769121782%_)))
               (_%E121770121818%_
                (lambda ()
                  (if (gx#stx-pair? _%e121769121782%_)
                      (let ((_%e121772121790%_
                             (gx#syntax-e _%e121769121782%_)))
                        (let ((_%hd121773121793%_ (##car _%e121772121790%_))
                              (_%tl121774121795%_ (##cdr _%e121772121790%_)))
                          (if (gx#stx-pair? _%tl121774121795%_)
                              (let ((_%e121775121798%_
                                     (gx#syntax-e _%tl121774121795%_)))
                                (let ((_%hd121776121801%_
                                       (##car _%e121775121798%_))
                                      (_%tl121777121803%_
                                       (##cdr _%e121775121798%_)))
                                  (let ((_%id121806%_ _%hd121776121801%_))
                                    (if (gx#stx-pair? _%tl121777121803%_)
                                        (let ((_%e121778121808%_
                                               (gx#syntax-e
                                                _%tl121777121803%_)))
                                          (let ((_%hd121779121811%_
                                                 (##car _%e121778121808%_))
                                                (_%tl121780121813%_
                                                 (##cdr _%e121778121808%_)))
                                            (let ((_%alias-id121816%_
                                                   _%hd121779121811%_))
                                              (if (gx#stx-null?
                                                   _%tl121780121813%_)
                                                  (if (and (gx#identifier?
                                                            _%id121806%_)
                                                           (gx#identifier?
                                                            _%alias-id121816%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id121806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id121816%_ '())))
              (_%E121771121786%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E121771121786%_)))))
                                        (_%E121771121786%_)))))
                              (_%E121771121786%_))))
                      (_%E121771121786%_)))))
          (_%E121770121818%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx121725%_)
        (let* ((_%e121726121736%_ _%stx121725%_)
               (_%E121728121740%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121726121736%_)))
               (_%E121727121764%_
                (lambda ()
                  (if (gx#stx-pair? _%e121726121736%_)
                      (let ((_%e121729121744%_
                             (gx#syntax-e _%e121726121736%_)))
                        (let ((_%hd121730121747%_ (##car _%e121729121744%_))
                              (_%tl121731121749%_ (##cdr _%e121729121744%_)))
                          (if (gx#stx-pair? _%tl121731121749%_)
                              (let ((_%e121732121752%_
                                     (gx#syntax-e _%tl121731121749%_)))
                                (let ((_%hd121733121755%_
                                       (##car _%e121732121752%_))
                                      (_%tl121734121757%_
                                       (##cdr _%e121732121752%_)))
                                  (let* ((_%hd121760%_ _%hd121733121755%_)
                                         (_%body121762%_ _%tl121734121757%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd121760%_)
                                             (gx#stx-list? _%body121762%_)
                                             (not (gx#stx-null?
                                                   _%body121762%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd121760%_)
                                         _%body121762%_)
                                        (_%E121728121740%_)))))
                              (_%E121728121740%_))))
                      (_%E121728121740%_)))))
          (_%E121727121764%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx121661%_)
        (letrec ((_%generate121663%_
                  (lambda (_%clause121693%_)
                    (let* ((_%e121694121701%_ _%clause121693%_)
                           (_%E121696121705%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx121661%_
                               _%clause121693%_)))
                           (_%E121695121721%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121694121701%_)
                                  (let ((_%e121697121709%_
                                         (gx#syntax-e _%e121694121701%_)))
                                    (let ((_%hd121698121712%_
                                           (##car _%e121697121709%_))
                                          (_%tl121699121714%_
                                           (##cdr _%e121697121709%_)))
                                      (let* ((_%hd121717%_ _%hd121698121712%_)
                                             (_%body121719%_
                                              _%tl121699121714%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd121717%_)
                                                 (gx#stx-list? _%body121719%_)
                                                 (not (gx#stx-null?
                                                       _%body121719%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd121717%_)
                                                   _%body121719%_)
                                             (gx#stx-source _%clause121693%_))
                                            (_%E121696121705%_)))))
                                  (_%E121696121705%_)))))
                      (_%E121695121721%_)))))
          (let* ((_%e121664121671%_ _%stx121661%_)
                 (_%E121666121675%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121664121671%_)))
                 (_%E121665121689%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121664121671%_)
                        (let ((_%e121667121679%_
                               (gx#syntax-e _%e121664121671%_)))
                          (let ((_%hd121668121682%_ (##car _%e121667121679%_))
                                (_%tl121669121684%_ (##cdr _%e121667121679%_)))
                            (let ((_%clauses121687%_ _%tl121669121684%_))
                              (if (gx#stx-list? _%clauses121687%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate121663%_
                                    _%clauses121687%_))
                                  (_%E121666121675%_)))))
                        (_%E121666121675%_)))))
            (_%E121665121689%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx121562%_ _%form121563%_)
        (letrec ((_%generate121565%_
                  (lambda (_%bind121608%_)
                    (let* ((_%e121609121619%_ _%bind121608%_)
                           (_%E121611121623%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx121562%_
                               _%bind121608%_)))
                           (_%E121610121647%_
                            (lambda ()
                              (if (gx#stx-pair? _%e121609121619%_)
                                  (let ((_%e121612121627%_
                                         (gx#syntax-e _%e121609121619%_)))
                                    (let ((_%hd121613121630%_
                                           (##car _%e121612121627%_))
                                          (_%tl121614121632%_
                                           (##cdr _%e121612121627%_)))
                                      (let ((_%ids121635%_ _%hd121613121630%_))
                                        (if (gx#stx-pair? _%tl121614121632%_)
                                            (let ((_%e121615121637%_
                                                   (gx#syntax-e
                                                    _%tl121614121632%_)))
                                              (let ((_%hd121616121640%_
                                                     (##car _%e121615121637%_))
                                                    (_%tl121617121642%_
                                                     (##cdr _%e121615121637%_)))
                                                (let ((_%expr121645%_
                                                       _%hd121616121640%_))
                                                  (if (gx#stx-null?
                                                       _%tl121617121642%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids121635%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids121635%_)
                        (cons _%expr121645%_ '()))
                  (_%E121611121623%_))
              (_%E121611121623%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E121611121623%_)))))
                                  (_%E121611121623%_)))))
                      (_%E121610121647%_)))))
          (let* ((_%e121566121576%_ _%stx121562%_)
                 (_%E121568121580%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e121566121576%_)))
                 (_%E121567121604%_
                  (lambda ()
                    (if (gx#stx-pair? _%e121566121576%_)
                        (let ((_%e121569121584%_
                               (gx#syntax-e _%e121566121576%_)))
                          (let ((_%hd121570121587%_ (##car _%e121569121584%_))
                                (_%tl121571121589%_ (##cdr _%e121569121584%_)))
                            (if (gx#stx-pair? _%tl121571121589%_)
                                (let ((_%e121572121592%_
                                       (gx#syntax-e _%tl121571121589%_)))
                                  (let ((_%hd121573121595%_
                                         (##car _%e121572121592%_))
                                        (_%tl121574121597%_
                                         (##cdr _%e121572121592%_)))
                                    (let* ((_%hd121600%_ _%hd121573121595%_)
                                           (_%body121602%_ _%tl121574121597%_))
                                      (if (and (gx#stx-list? _%hd121600%_)
                                               (gx#stx-list? _%body121602%_)
                                               (not (gx#stx-null?
                                                     _%body121602%_)))
                                          (gx#core-cons*
                                           _%form121563%_
                                           (gx#stx-map1
                                            _%generate121565%_
                                            _%hd121600%_)
                                           _%body121602%_)
                                          (_%E121568121580%_)))))
                                (_%E121568121580%_))))
                        (_%E121568121580%_)))))
            (_%E121567121604%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx121654%_)
        (let ((_%form121656%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx121654%_ _%form121656%_))))
    (define gx#macro-expand-let-values
      (lambda _g124043_
        (let ((_g124042_ (##length _g124043_)))
          (cond ((##fx= _g124042_ 1)
                 (apply gx#macro-expand-let-values__0 _g124043_))
                ((##fx= _g124042_ 2)
                 (apply gx#macro-expand-let-values__% _g124043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g124043_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx121559%_)
        (gx#macro-expand-let-values__% _%stx121559%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx121557%_)
        (gx#macro-expand-let-values__% _%stx121557%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx121448%_)
        (let* ((_%e121449121475%_ _%stx121448%_)
               (_%E121461121479%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e121449121475%_)))
               (_%E121451121521%_
                (lambda ()
                  (if (gx#stx-pair? _%e121449121475%_)
                      (let ((_%e121462121483%_
                             (gx#syntax-e _%e121449121475%_)))
                        (let ((_%hd121463121486%_ (##car _%e121462121483%_))
                              (_%tl121464121488%_ (##cdr _%e121462121483%_)))
                          (if (gx#stx-pair? _%tl121464121488%_)
                              (let ((_%e121465121491%_
                                     (gx#syntax-e _%tl121464121488%_)))
                                (let ((_%hd121466121494%_
                                       (##car _%e121465121491%_))
                                      (_%tl121467121496%_
                                       (##cdr _%e121465121491%_)))
                                  (let ((_%test121499%_ _%hd121466121494%_))
                                    (if (gx#stx-pair? _%tl121467121496%_)
                                        (let ((_%e121468121501%_
                                               (gx#syntax-e
                                                _%tl121467121496%_)))
                                          (let ((_%hd121469121504%_
                                                 (##car _%e121468121501%_))
                                                (_%tl121470121506%_
                                                 (##cdr _%e121468121501%_)))
                                            (let ((_%K121509%_
                                                   _%hd121469121504%_))
                                              (if (gx#stx-pair?
                                                   _%tl121470121506%_)
                                                  (let ((_%e121471121511%_
                                                         (gx#syntax-e
                                                          _%tl121470121506%_)))
                                                    (let ((_%hd121472121514%_
                                                           (##car _%e121471121511%_))
                                                          (_%tl121473121516%_
                                                           (##cdr _%e121471121511%_)))
                                                      (let ((_%E121519%_
                                                             _%hd121472121514%_))
                                                        (if (gx#stx-null?
                                                             _%tl121473121516%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test121499%_
                                                             _%K121509%_
                                                             _%E121519%_)
                                                            (_%E121461121479%_)))))
                                                  (_%E121461121479%_)))))
                                        (_%E121461121479%_)))))
                              (_%E121461121479%_))))
                      (_%E121461121479%_))))
               (_%E121450121553%_
                (lambda ()
                  (if (gx#stx-pair? _%e121449121475%_)
                      (let ((_%e121452121525%_
                             (gx#syntax-e _%e121449121475%_)))
                        (let ((_%hd121453121528%_ (##car _%e121452121525%_))
                              (_%tl121454121530%_ (##cdr _%e121452121525%_)))
                          (if (gx#stx-pair? _%tl121454121530%_)
                              (let ((_%e121455121533%_
                                     (gx#syntax-e _%tl121454121530%_)))
                                (let ((_%hd121456121536%_
                                       (##car _%e121455121533%_))
                                      (_%tl121457121538%_
                                       (##cdr _%e121455121533%_)))
                                  (let ((_%test121541%_ _%hd121456121536%_))
                                    (if (gx#stx-pair? _%tl121457121538%_)
                                        (let ((_%e121458121543%_
                                               (gx#syntax-e
                                                _%tl121457121538%_)))
                                          (let ((_%hd121459121546%_
                                                 (##car _%e121458121543%_))
                                                (_%tl121460121548%_
                                                 (##cdr _%e121458121543%_)))
                                            (let ((_%K121551%_
                                                   _%hd121459121546%_))
                                              (if (gx#stx-null?
                                                   _%tl121460121548%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test121541%_
                                                   _%K121551%_
                                                   '#!void)
                                                  (_%E121451121521%_)))))
                                        (_%E121451121521%_)))))
                              (_%E121451121521%_))))
                      (_%E121451121521%_)))))
          (_%E121450121553%_))))
    (define gx#free-identifier=?
      (lambda (_%xid121433%_ _%yid121434%_)
        (let ((_%xe121436%_ (gx#resolve-identifier__0 _%xid121433%_))
              (_%ye121437%_ (gx#resolve-identifier__0 _%yid121434%_)))
          (if (and _%xe121436%_ _%ye121437%_)
              (let ((_%$e121440%_ (eq? _%xe121436%_ _%ye121437%_)))
                (if _%$e121440%_
                    _%$e121440%_
                    (if (##structure-instance-of? _%xe121436%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye121437%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe121436%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye121437%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe121436%_ _%ye121437%_)
                  '#f
                  (gx#stx-eq? _%xid121433%_ _%yid121434%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid121414%_ _%yid121415%_)
        (letrec ((_%context121417%_
                  (lambda (_%e121431%_)
                    (if (##structure-direct-instance-of?
                         _%e121431%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e121431%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks121418%_
                  (lambda (_%e121426%_)
                    (if (symbol? _%e121426%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e121426%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e121426%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e121426%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap121419%_
                  (lambda (_%e121424%_)
                    (if (symbol? _%e121424%_)
                        _%e121424%_
                        (gx#syntax-local-unwrap _%e121424%_)))))
          (let ((_%x121421%_ (_%unwrap121419%_ _%xid121414%_))
                (_%y121422%_ (_%unwrap121419%_ _%yid121415%_)))
            (if (gx#stx-eq? _%x121421%_ _%y121422%_)
                (if (eq? (_%context121417%_ _%x121421%_)
                         (_%context121417%_ _%y121422%_))
                    (equal? (_%marks121418%_ _%x121421%_)
                            (_%marks121418%_ _%y121422%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx121412%_)
        (if (gx#identifier? _%stx121412%_)
            (gx#core-identifier=? _%stx121412%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx121410%_)
        (if (gx#identifier? _%stx121410%_)
            (gx#core-identifier=? _%stx121410%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx121353%_ _%where121354%_)
        (let _%lp121356%_ ((_%rest121358%_ (gx#syntax->list _%stx121353%_)))
          (let* ((_%rest121359121367%_ _%rest121358%_)
                 (_%else121361121375%_ (lambda () '#t))
                 (_%K121363121388%_
                  (lambda (_%rest121378%_ _%hd121379%_)
                    (if (gx#identifier? _%hd121379%_)
                        (if (__find (lambda (_%g121381121383%_)
                                      (gx#bound-identifier=?
                                       _%g121381121383%_
                                       _%hd121379%_))
                                    _%rest121378%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where121354%_
                             _%hd121379%_)
                            (_%lp121356%_ _%rest121378%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where121354%_
                         _%hd121379%_)))))
            (if (##pair? _%rest121359121367%_)
                (let ((_%hd121364121391%_ (##car _%rest121359121367%_))
                      (_%tl121365121393%_ (##cdr _%rest121359121367%_)))
                  (let* ((_%hd121396%_ _%hd121364121391%_)
                         (_%rest121398%_ _%tl121365121393%_))
                    (_%K121363121388%_ _%rest121398%_ _%hd121396%_)))
                (_%else121361121375%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx121403%_)
        (let ((_%where121405%_ _%stx121403%_))
          (gx#check-duplicate-identifiers__% _%stx121403%_ _%where121405%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g124045_
        (let ((_g124044_ (##length _g124045_)))
          (cond ((##fx= _g124044_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g124045_))
                ((##fx= _g124044_ 2)
                 (apply gx#check-duplicate-identifiers__% _g124045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g124045_))))))
    (define gx#core-bind-values?
      (lambda (_%stx121345%_)
        (gx#stx-andmap
         (lambda (_%x121347%_)
           (let ((_%$e121349%_ (gx#identifier? _%x121347%_)))
             (if _%$e121349%_ _%$e121349%_ (gx#stx-false? _%x121347%_))))
         _%stx121345%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx121309%_ _%rebind?121310%_ _%phi121311%_ _%ctx121312%_)
        (gx#stx-for-each1
         (lambda (_%id121314%_)
           (if (gx#identifier? _%id121314%_)
               (gx#core-bind-runtime!__%
                _%id121314%_
                _%rebind?121310%_
                _%phi121311%_
                _%ctx121312%_)
               '#!void))
         _%stx121309%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx121319%_)
        (let* ((_%rebind?121321%_ '#f)
               (_%phi121323%_ (gx#current-expander-phi))
               (_%ctx121325%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx121319%_
           _%rebind?121321%_
           _%phi121323%_
           _%ctx121325%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx121327%_ _%rebind?121328%_)
        (let* ((_%phi121330%_ (gx#current-expander-phi))
               (_%ctx121332%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx121327%_
           _%rebind?121328%_
           _%phi121330%_
           _%ctx121332%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx121334%_ _%rebind?121335%_ _%phi121336%_)
        (let ((_%ctx121338%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx121334%_
           _%rebind?121335%_
           _%phi121336%_
           _%ctx121338%_))))
    (define gx#core-bind-values!
      (lambda _g124047_
        (let ((_g124046_ (##length _g124047_)))
          (cond ((##fx= _g124046_ 1) (apply gx#core-bind-values!__0 _g124047_))
                ((##fx= _g124046_ 2) (apply gx#core-bind-values!__1 _g124047_))
                ((##fx= _g124046_ 3) (apply gx#core-bind-values!__2 _g124047_))
                ((##fx= _g124046_ 4) (apply gx#core-bind-values!__% _g124047_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g124047_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx121304%_)
        (gx#stx-map1
         (lambda (_%x121306%_)
           (if (gx#identifier? _%x121306%_)
               (gx#core-quote-syntax__0 _%x121306%_)
               '#f))
         _%stx121304%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx121297%_)
        (if (gx#identifier? _%stx121297%_)
            (let* ((_%bind121299%_ (gx#resolve-identifier__0 _%stx121297%_))
                   (_%$e121301%_ (not _%bind121299%_)))
              (if _%$e121301%_
                  _%$e121301%_
                  (##structure-instance-of?
                   _%bind121299%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id121286%_ _%form121287%_)
        (let ((_%bind121289%_ (gx#resolve-identifier__0 _%id121286%_)))
          (if (##structure-instance-of? _%bind121289%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id121286%_)
              (if (not _%bind121289%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id121286%_)))
                      (gx#core-quote-syntax__0 _%id121286%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form121287%_
                       _%id121286%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form121287%_
                   _%id121286%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id121241%_ _%rebind?121242%_ _%phi121243%_ _%ctx121244%_)
        (let* ((_%key121246%_ (gx#core-identifier-key _%id121241%_))
               (_%eid121248%_
                (gx#make-binding-id__%
                 _%key121246%_
                 '#f
                 _%phi121243%_
                 _%ctx121244%_))
               (_%bind121254%_
                (if (##structure-instance-of?
                     _%ctx121244%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid121248%_
                     _%key121246%_
                     _%phi121243%_
                     _%ctx121244%_)
                    (if (##structure-instance-of?
                         _%ctx121244%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid121248%_
                         _%key121246%_
                         _%phi121243%_)
                        (if (##structure-instance-of?
                             _%ctx121244%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid121248%_
                             _%key121246%_
                             _%phi121243%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid121248%_
                             _%key121246%_
                             _%phi121243%_))))))
          (gx#bind-identifier!__%
           _%id121241%_
           _%bind121254%_
           _%rebind?121242%_
           _%phi121243%_
           _%ctx121244%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id121260%_)
        (let* ((_%rebind?121262%_ '#f)
               (_%phi121264%_ (gx#current-expander-phi))
               (_%ctx121266%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id121260%_
           _%rebind?121262%_
           _%phi121264%_
           _%ctx121266%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id121268%_ _%rebind?121269%_)
        (let* ((_%phi121271%_ (gx#current-expander-phi))
               (_%ctx121273%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id121268%_
           _%rebind?121269%_
           _%phi121271%_
           _%ctx121273%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id121275%_ _%rebind?121276%_ _%phi121277%_)
        (let ((_%ctx121279%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id121275%_
           _%rebind?121276%_
           _%phi121277%_
           _%ctx121279%_))))
    (define gx#core-bind-runtime!
      (lambda _g124049_
        (let ((_g124048_ (##length _g124049_)))
          (cond ((##fx= _g124048_ 1)
                 (apply gx#core-bind-runtime!__0 _g124049_))
                ((##fx= _g124048_ 2)
                 (apply gx#core-bind-runtime!__1 _g124049_))
                ((##fx= _g124048_ 3)
                 (apply gx#core-bind-runtime!__2 _g124049_))
                ((##fx= _g124048_ 4)
                 (apply gx#core-bind-runtime!__% _g124049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g124049_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id121193%_
               _%eid121194%_
               _%rebind?121195%_
               _%phi121196%_
               _%ctx121197%_)
        (let* ((_%key121199%_ (gx#core-identifier-key _%id121193%_))
               (_%bind121204%_
                (if (##structure-instance-of?
                     _%ctx121197%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid121194%_
                     _%key121199%_
                     _%phi121196%_
                     _%ctx121197%_)
                    (if (##structure-instance-of?
                         _%ctx121197%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid121194%_
                         _%key121199%_
                         _%phi121196%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid121194%_
                         _%key121199%_
                         _%phi121196%_)))))
          (gx#bind-identifier!__%
           _%id121193%_
           _%bind121204%_
           _%rebind?121195%_
           _%phi121196%_
           _%ctx121197%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id121210%_ _%eid121211%_)
        (let* ((_%rebind?121213%_ '#f)
               (_%phi121215%_ (gx#current-expander-phi))
               (_%ctx121217%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id121210%_
           _%eid121211%_
           _%rebind?121213%_
           _%phi121215%_
           _%ctx121217%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id121219%_ _%eid121220%_ _%rebind?121221%_)
        (let* ((_%phi121223%_ (gx#current-expander-phi))
               (_%ctx121225%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id121219%_
           _%eid121220%_
           _%rebind?121221%_
           _%phi121223%_
           _%ctx121225%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id121227%_ _%eid121228%_ _%rebind?121229%_ _%phi121230%_)
        (let ((_%ctx121232%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id121227%_
           _%eid121228%_
           _%rebind?121229%_
           _%phi121230%_
           _%ctx121232%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g124051_
        (let ((_g124050_ (##length _g124051_)))
          (cond ((##fx= _g124050_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g124051_))
                ((##fx= _g124050_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g124051_))
                ((##fx= _g124050_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g124051_))
                ((##fx= _g124050_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g124051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g124051_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id121153%_
               _%eid121154%_
               _%rebind?121155%_
               _%phi121156%_
               _%ctx121157%_)
        (gx#bind-identifier!__%
         _%id121153%_
         (##structure
          gx#extern-binding::t
          _%eid121154%_
          (gx#core-identifier-key _%id121153%_)
          _%phi121156%_)
         _%rebind?121155%_
         _%phi121156%_
         _%ctx121157%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id121162%_ _%eid121163%_)
        (let* ((_%rebind?121165%_ '#f)
               (_%phi121167%_ (gx#current-expander-phi))
               (_%ctx121169%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id121162%_
           _%eid121163%_
           _%rebind?121165%_
           _%phi121167%_
           _%ctx121169%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id121171%_ _%eid121172%_ _%rebind?121173%_)
        (let* ((_%phi121175%_ (gx#current-expander-phi))
               (_%ctx121177%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id121171%_
           _%eid121172%_
           _%rebind?121173%_
           _%phi121175%_
           _%ctx121177%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id121179%_ _%eid121180%_ _%rebind?121181%_ _%phi121182%_)
        (let ((_%ctx121184%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id121179%_
           _%eid121180%_
           _%rebind?121181%_
           _%phi121182%_
           _%ctx121184%_))))
    (define gx#core-bind-extern!
      (lambda _g124053_
        (let ((_g124052_ (##length _g124053_)))
          (cond ((##fx= _g124052_ 2) (apply gx#core-bind-extern!__0 _g124053_))
                ((##fx= _g124052_ 3) (apply gx#core-bind-extern!__1 _g124053_))
                ((##fx= _g124052_ 4) (apply gx#core-bind-extern!__2 _g124053_))
                ((##fx= _g124052_ 5) (apply gx#core-bind-extern!__% _g124053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g124053_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id121107%_
               _%e121108%_
               _%rebind?121109%_
               _%phi121110%_
               _%ctx121111%_)
        (gx#bind-identifier!__%
         _%id121107%_
         (let ((_%key121116%_ (gx#core-identifier-key _%id121107%_))
               (_%e121117%_
                (if (or (##structure-instance-of? _%e121108%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e121108%_
                         'gx#expander-context::t))
                    _%e121108%_
                    (##structure
                     gx#user-expander::t
                     _%e121108%_
                     _%ctx121111%_
                     _%phi121110%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key121116%_
             '#t
             _%phi121110%_
             _%ctx121111%_)
            _%key121116%_
            _%phi121110%_
            _%e121117%_))
         _%rebind?121109%_
         _%phi121110%_
         _%ctx121111%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id121122%_ _%e121123%_)
        (let* ((_%rebind?121125%_ '#f)
               (_%phi121127%_ (gx#current-expander-phi))
               (_%ctx121129%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id121122%_
           _%e121123%_
           _%rebind?121125%_
           _%phi121127%_
           _%ctx121129%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id121131%_ _%e121132%_ _%rebind?121133%_)
        (let* ((_%phi121135%_ (gx#current-expander-phi))
               (_%ctx121137%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id121131%_
           _%e121132%_
           _%rebind?121133%_
           _%phi121135%_
           _%ctx121137%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id121139%_ _%e121140%_ _%rebind?121141%_ _%phi121142%_)
        (let ((_%ctx121144%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id121139%_
           _%e121140%_
           _%rebind?121141%_
           _%phi121142%_
           _%ctx121144%_))))
    (define gx#core-bind-syntax!
      (lambda _g124055_
        (let ((_g124054_ (##length _g124055_)))
          (cond ((##fx= _g124054_ 2) (apply gx#core-bind-syntax!__0 _g124055_))
                ((##fx= _g124054_ 3) (apply gx#core-bind-syntax!__1 _g124055_))
                ((##fx= _g124054_ 4) (apply gx#core-bind-syntax!__2 _g124055_))
                ((##fx= _g124054_ 5) (apply gx#core-bind-syntax!__% _g124055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g124055_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id121090%_ _%e121091%_ _%rebind?121092%_)
        (gx#core-bind-syntax!__%
         _%id121090%_
         _%e121091%_
         _%rebind?121092%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id121097%_ _%e121098%_)
        (let ((_%rebind?121100%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id121097%_
           _%e121098%_
           _%rebind?121100%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g124057_
        (let ((_g124056_ (##length _g124057_)))
          (cond ((##fx= _g124056_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g124057_))
                ((##fx= _g124056_ 3)
                 (apply gx#core-bind-root-syntax!__% _g124057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g124057_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id121048%_
               _%alias-id121049%_
               _%rebind?121050%_
               _%phi121051%_
               _%ctx121052%_)
        (gx#bind-identifier!__%
         _%id121048%_
         (let ((_%key121054%_ (gx#core-identifier-key _%id121048%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key121054%_
             '#t
             _%phi121051%_
             _%ctx121052%_)
            _%key121054%_
            _%phi121051%_
            _%alias-id121049%_))
         _%rebind?121050%_
         _%phi121051%_
         _%ctx121052%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id121059%_ _%alias-id121060%_)
        (let* ((_%rebind?121062%_ '#f)
               (_%phi121064%_ (gx#current-expander-phi))
               (_%ctx121066%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id121059%_
           _%alias-id121060%_
           _%rebind?121062%_
           _%phi121064%_
           _%ctx121066%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id121068%_ _%alias-id121069%_ _%rebind?121070%_)
        (let* ((_%phi121072%_ (gx#current-expander-phi))
               (_%ctx121074%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id121068%_
           _%alias-id121069%_
           _%rebind?121070%_
           _%phi121072%_
           _%ctx121074%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id121076%_ _%alias-id121077%_ _%rebind?121078%_ _%phi121079%_)
        (let ((_%ctx121081%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id121076%_
           _%alias-id121077%_
           _%rebind?121078%_
           _%phi121079%_
           _%ctx121081%_))))
    (define gx#core-bind-alias!
      (lambda _g124059_
        (let ((_g124058_ (##length _g124059_)))
          (cond ((##fx= _g124058_ 2) (apply gx#core-bind-alias!__0 _g124059_))
                ((##fx= _g124058_ 3) (apply gx#core-bind-alias!__1 _g124059_))
                ((##fx= _g124058_ 4) (apply gx#core-bind-alias!__2 _g124059_))
                ((##fx= _g124058_ 5) (apply gx#core-bind-alias!__% _g124059_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g124059_))))))
    (define gx#make-binding-id__%
      (lambda (_%key120998%_ _%syntax?120999%_ _%phi121000%_ _%ctx121001%_)
        (if (uninterned-symbol? _%key120998%_)
            (##gensym 'L)
            (if (pair? _%key120998%_)
                (gensym (##car _%key120998%_))
                (if (##structure-instance-of? _%ctx121001%_ 'gx#top-context::t)
                    (let ((_%ns121006%_
                           (gx#core-context-namespace__% _%ctx121001%_)))
                      (if (and (fxzero? _%phi121000%_) (not _%syntax?120999%_))
                          (if _%ns121006%_
                              (make-symbol__1 _%ns121006%_ '"#" _%key120998%_)
                              _%key120998%_)
                          (if _%syntax?120999%_
                              (make-symbol__1
                               (let ((_%$e121010%_ _%ns121006%_))
                                 (if _%$e121010%_ _%$e121010%_ '""))
                               '"[:"
                               (number->string _%phi121000%_)
                               '":]#"
                               _%key120998%_)
                              (make-symbol__1
                               (let ((_%$e121014%_ _%ns121006%_))
                                 (if _%$e121014%_ _%$e121014%_ '""))
                               '"["
                               (number->string _%phi121000%_)
                               '"]#"
                               _%key120998%_))))
                    (gensym _%key120998%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key121021%_)
        (let* ((_%syntax?121023%_ '#f)
               (_%phi121025%_ (gx#current-expander-phi))
               (_%ctx121027%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key121021%_
           _%syntax?121023%_
           _%phi121025%_
           _%ctx121027%_))))
    (define gx#make-binding-id__1
      (lambda (_%key121029%_ _%syntax?121030%_)
        (let* ((_%phi121032%_ (gx#current-expander-phi))
               (_%ctx121034%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key121029%_
           _%syntax?121030%_
           _%phi121032%_
           _%ctx121034%_))))
    (define gx#make-binding-id__2
      (lambda (_%key121036%_ _%syntax?121037%_ _%phi121038%_)
        (let ((_%ctx121040%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key121036%_
           _%syntax?121037%_
           _%phi121038%_
           _%ctx121040%_))))
    (define gx#make-binding-id
      (lambda _g124061_
        (let ((_g124060_ (##length _g124061_)))
          (cond ((##fx= _g124060_ 1) (apply gx#make-binding-id__0 _g124061_))
                ((##fx= _g124060_ 2) (apply gx#make-binding-id__1 _g124061_))
                ((##fx= _g124060_ 3) (apply gx#make-binding-id__2 _g124061_))
                ((##fx= _g124060_ 4) (apply gx#make-binding-id__% _g124061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g124061_))))))))
