(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1756142016)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx132423%_)
        (letrec ((_%expand-special132425%_
                  (lambda (_%hd132427%_ _%K132428%_ _%rest132429%_ _%r132430%_)
                    (_%K132428%_
                     _%rest132429%_
                     (cons (gx#core-expand-top _%hd132427%_) _%r132430%_)))))
          (gx#core-expand-block__0 _%stx132423%_ _%expand-special132425%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx132176%_)
        (letrec ((_%expand-special132178%_
                  (lambda (_%hd132298%_ _%K132299%_ _%rest132300%_ _%r132301%_)
                    (let* ((_%K132305%_
                            (lambda (_%e132303%_)
                              (_%K132299%_
                               _%rest132300%_
                               (cons _%e132303%_ _%r132301%_))))
                           (_%e132306132335%_ _%hd132298%_)
                           (_%E132330132339%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e132306132335%_)))
                           (_%E132326132351%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132306132335%_)
                                  (let ((_%e132331132343%_
                                         (gx#syntax-e _%e132306132335%_)))
                                    (let ((_%hd132332132346%_
                                           (##car _%e132331132343%_))
                                          (_%tl132333132348%_
                                           (##cdr _%e132331132343%_)))
                                      (if (and (gx#identifier?
                                                _%hd132332132346%_)
                                               (gx#core-identifier=?
                                                _%hd132332132346%_
                                                '%#define-runtime))
                                          (_%K132305%_
                                           (gx#core-expand-define-runtime%
                                            _%hd132298%_))
                                          (_%E132330132339%_))))
                                  (_%E132330132339%_))))
                           (_%E132322132363%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132306132335%_)
                                  (let ((_%e132327132355%_
                                         (gx#syntax-e _%e132306132335%_)))
                                    (let ((_%hd132328132358%_
                                           (##car _%e132327132355%_))
                                          (_%tl132329132360%_
                                           (##cdr _%e132327132355%_)))
                                      (if (and (gx#identifier?
                                                _%hd132328132358%_)
                                               (gx#core-identifier=?
                                                _%hd132328132358%_
                                                '%#define-alias))
                                          (_%K132305%_
                                           (gx#core-expand-define-alias%
                                            _%hd132298%_))
                                          (_%E132326132351%_))))
                                  (_%E132326132351%_))))
                           (_%E132312132375%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132306132335%_)
                                  (let ((_%e132323132367%_
                                         (gx#syntax-e _%e132306132335%_)))
                                    (let ((_%hd132324132370%_
                                           (##car _%e132323132367%_))
                                          (_%tl132325132372%_
                                           (##cdr _%e132323132367%_)))
                                      (if (and (gx#identifier?
                                                _%hd132324132370%_)
                                               (gx#core-identifier=?
                                                _%hd132324132370%_
                                                '%#define-syntax))
                                          (_%K132305%_
                                           (gx#core-expand-define-syntax%
                                            _%hd132298%_))
                                          (_%E132322132363%_))))
                                  (_%E132322132363%_))))
                           (_%E132308132407%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132306132335%_)
                                  (let ((_%e132313132379%_
                                         (gx#syntax-e _%e132306132335%_)))
                                    (let ((_%hd132314132382%_
                                           (##car _%e132313132379%_))
                                          (_%tl132315132384%_
                                           (##cdr _%e132313132379%_)))
                                      (if (and (gx#identifier?
                                                _%hd132314132382%_)
                                               (gx#core-identifier=?
                                                _%hd132314132382%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl132315132384%_)
                                              (let ((_%e132316132387%_
                                                     (gx#syntax-e
                                                      _%tl132315132384%_)))
                                                (let ((_%hd132317132390%_
                                                       (##car _%e132316132387%_))
                                                      (_%tl132318132392%_
                                                       (##cdr _%e132316132387%_)))
                                                  (let ((_%hd-bind132395%_
                                                         _%hd132317132390%_))
                                                    (if (gx#stx-pair?
                                                         _%tl132318132392%_)
                                                        (let ((_%e132319132397%_
                                                               (gx#syntax-e
                                                                _%tl132318132392%_)))
                                                          (let ((_%hd132320132400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e132319132397%_))
                        (_%tl132321132402%_ (##cdr _%e132319132397%_)))
                    (let ((_%expr132405%_ _%hd132320132400%_))
                      (if (gx#stx-null? _%tl132321132402%_)
                          (if (gx#core-bind-values? _%hd-bind132395%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind132395%_)
                                (_%K132305%_ _%hd132298%_))
                              (_%E132312132375%_))
                          (_%E132312132375%_)))))
                (_%E132312132375%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E132312132375%_))
                                          (_%E132312132375%_))))
                                  (_%E132312132375%_))))
                           (_%E132307132419%_
                            (lambda ()
                              (if (gx#stx-pair? _%e132306132335%_)
                                  (let ((_%e132309132411%_
                                         (gx#syntax-e _%e132306132335%_)))
                                    (let ((_%hd132310132414%_
                                           (##car _%e132309132411%_))
                                          (_%tl132311132416%_
                                           (##cdr _%e132309132411%_)))
                                      (if (and (gx#identifier?
                                                _%hd132310132414%_)
                                               (gx#core-identifier=?
                                                _%hd132310132414%_
                                                '%#begin-syntax))
                                          (_%K132305%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd132298%_))
                                          (_%E132308132407%_))))
                                  (_%E132308132407%_)))))
                      (_%E132307132419%_))))
                 (_%eval-body132179%_
                  (lambda (_%rbody132187%_)
                    (let _%lp132189%_ ((_%rest132191%_ _%rbody132187%_)
                                       (_%body132192%_ '())
                                       (_%ebody132193%_ '()))
                      (let* ((_%rest132194132202%_ _%rest132191%_)
                             (_%else132196132210%_
                              (lambda ()
                                (values _%body132192%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody132193%_)
                                          (gx#stx-source _%stx132176%_))))))
                             (_%K132198132286%_
                              (lambda (_%rest132213%_ _%hd132214%_)
                                (let* ((_%e132215132232%_ _%hd132214%_)
                                       (_%E132227132236%_
                                        (lambda ()
                                          (_%lp132189%_
                                           _%rest132213%_
                                           (cons _%hd132214%_ _%body132192%_)
                                           (cons _%hd132214%_
                                                 _%ebody132193%_))))
                                       (_%E132217132248%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e132215132232%_)
                                              (let ((_%e132228132240%_
                                                     (gx#syntax-e
                                                      _%e132215132232%_)))
                                                (let ((_%hd132229132243%_
                                                       (##car _%e132228132240%_))
                                                      (_%tl132230132245%_
                                                       (##cdr _%e132228132240%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd132229132243%_)
                                                           (gx#core-identifier=?
                                                            _%hd132229132243%_
                                                            '%#begin-syntax))
                                                      (_%lp132189%_
                                                       _%rest132213%_
                                                       (cons _%hd132214%_
                                                             _%body132192%_)
                                                       _%ebody132193%_)
                                                      (_%E132227132236%_))))
                                              (_%E132227132236%_))))
                                       (_%E132216132282%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e132215132232%_)
                                              (let ((_%e132218132252%_
                                                     (gx#syntax-e
                                                      _%e132215132232%_)))
                                                (let ((_%hd132219132255%_
                                                       (##car _%e132218132252%_))
                                                      (_%tl132220132257%_
                                                       (##cdr _%e132218132252%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd132219132255%_)
                                                           (gx#core-identifier=?
                                                            _%hd132219132255%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl132220132257%_)
                                                          (let ((_%e132221132260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl132220132257%_)))
                    (let ((_%hd132222132263%_ (##car _%e132221132260%_))
                          (_%tl132223132265%_ (##cdr _%e132221132260%_)))
                      (let ((_%hd-bind132268%_ _%hd132222132263%_))
                        (if (gx#stx-pair? _%tl132223132265%_)
                            (let ((_%e132224132270%_
                                   (gx#syntax-e _%tl132223132265%_)))
                              (let ((_%hd132225132273%_
                                     (##car _%e132224132270%_))
                                    (_%tl132226132275%_
                                     (##cdr _%e132224132270%_)))
                                (let ((_%expr132278%_ _%hd132225132273%_))
                                  (if (gx#stx-null? _%tl132226132275%_)
                                      (let ((_%ehd132280%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind132268%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr132278%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd132214%_))))
                                        (_%lp132189%_
                                         _%rest132213%_
                                         (cons _%ehd132280%_ _%body132192%_)
                                         (cons _%ehd132280%_ _%ebody132193%_)))
                                      (_%E132217132248%_)))))
                            (_%E132217132248%_)))))
                  (_%E132217132248%_))
              (_%E132217132248%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E132217132248%_)))))
                                  (_%E132216132282%_)))))
                        (if (pair? _%rest132194132202%_)
                            (let ((_%hd132199132289%_
                                   (##car _%rest132194132202%_))
                                  (_%tl132200132291%_
                                   (##cdr _%rest132194132202%_)))
                              (let* ((_%hd132294%_ _%hd132199132289%_)
                                     (_%rest132296%_ _%tl132200132291%_))
                                (_%K132198132286%_
                                 _%rest132296%_
                                 _%hd132294%_)))
                            (_%else132196132210%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody132182%_
                     (gx#core-expand-block__1
                      _%stx132176%_
                      _%expand-special132178%_
                      '#f))
                    (_g132446_ (_%eval-body132179%_ _%rbody132182%_)))
               (begin
                 (let ((_g132447_
                        (if (##values? _g132446_)
                            (##values-length _g132446_)
                            1)))
                   (if (not (##fx= _g132447_ 2))
                       (error "Context expects 2 values" _g132447_)))
                 (let ((_%expanded-body132184%_ (##values-ref _g132446_ 0))
                       (_%value132185%_ (##values-ref _g132446_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body132184%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value132185%_ '())))
                    (gx#stx-source _%stx132176%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx132146%_)
        (let* ((_%e132147132154%_ _%stx132146%_)
               (_%E132149132158%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132147132154%_)))
               (_%E132148132172%_
                (lambda ()
                  (if (gx#stx-pair? _%e132147132154%_)
                      (let ((_%e132150132162%_
                             (gx#syntax-e _%e132147132154%_)))
                        (let ((_%hd132151132165%_ (##car _%e132150132162%_))
                              (_%tl132152132167%_ (##cdr _%e132150132162%_)))
                          (let ((_%body132170%_ _%tl132152132167%_))
                            (if (gx#stx-list? _%body132170%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body132170%_)
                                 (gx#stx-source _%stx132146%_))
                                (_%E132149132158%_)))))
                      (_%E132149132158%_)))))
          (_%E132148132172%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx132144%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx132144%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx132090%_)
        (let* ((_%e132091132104%_ _%stx132090%_)
               (_%E132093132108%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e132091132104%_)))
               (_%E132092132140%_
                (lambda ()
                  (if (gx#stx-pair? _%e132091132104%_)
                      (let ((_%e132094132112%_
                             (gx#syntax-e _%e132091132104%_)))
                        (let ((_%hd132095132115%_ (##car _%e132094132112%_))
                              (_%tl132096132117%_ (##cdr _%e132094132112%_)))
                          (if (gx#stx-pair? _%tl132096132117%_)
                              (let ((_%e132097132120%_
                                     (gx#syntax-e _%tl132096132117%_)))
                                (let ((_%hd132098132123%_
                                       (##car _%e132097132120%_))
                                      (_%tl132099132125%_
                                       (##cdr _%e132097132120%_)))
                                  (let ((_%ann132128%_ _%hd132098132123%_))
                                    (if (gx#stx-pair? _%tl132099132125%_)
                                        (let ((_%e132100132130%_
                                               (gx#syntax-e
                                                _%tl132099132125%_)))
                                          (let ((_%hd132101132133%_
                                                 (##car _%e132100132130%_))
                                                (_%tl132102132135%_
                                                 (##cdr _%e132100132130%_)))
                                            (let ((_%expr132138%_
                                                   _%hd132101132133%_))
                                              (if (gx#stx-null?
                                                   _%tl132102132135%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann132128%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr132138%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx132090%_))
                                                  (_%E132093132108%_)))))
                                        (_%E132093132108%_)))))
                              (_%E132093132108%_))))
                      (_%E132093132108%_)))))
          (_%E132092132140%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx131814%_ _%body131815%_)
        (letrec ((_%expand-special131817%_
                  (lambda (_%hd132085%_ _%K132086%_ _%rest132087%_ _%r132088%_)
                    (_%K132086%_
                     '()
                     (cons (_%expand-internal131818%_
                            _%hd132085%_
                            _%rest132087%_)
                           _%r132088%_))))
                 (_%expand-internal131818%_
                  (lambda (_%hd132081%_ _%rest132082%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal131820%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd132081%_ _%rest132082%_))
                          (gx#stx-source _%stx131814%_))
                         _%expand-internal-special131819%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj132440
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj132440)
                       __obj132440))))
                 (_%expand-internal-special131819%_
                  (lambda (_%hd131976%_ _%K131977%_ _%rest131978%_ _%r131979%_)
                    (let* ((_%e131980132005%_ _%hd131976%_)
                           (_%E132000132009%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e131980132005%_)))
                           (_%E131996132021%_
                            (lambda ()
                              (if (gx#stx-pair? _%e131980132005%_)
                                  (let ((_%e132001132013%_
                                         (gx#syntax-e _%e131980132005%_)))
                                    (let ((_%hd132002132016%_
                                           (##car _%e132001132013%_))
                                          (_%tl132003132018%_
                                           (##cdr _%e132001132013%_)))
                                      (if (and (gx#identifier?
                                                _%hd132002132016%_)
                                               (gx#core-identifier=?
                                                _%hd132002132016%_
                                                '%#declare))
                                          (_%K131977%_
                                           _%rest131978%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd131976%_)
                                                 _%r131979%_))
                                          (_%E132000132009%_))))
                                  (_%E132000132009%_))))
                           (_%E131992132033%_
                            (lambda ()
                              (if (gx#stx-pair? _%e131980132005%_)
                                  (let ((_%e131997132025%_
                                         (gx#syntax-e _%e131980132005%_)))
                                    (let ((_%hd131998132028%_
                                           (##car _%e131997132025%_))
                                          (_%tl131999132030%_
                                           (##cdr _%e131997132025%_)))
                                      (if (and (gx#identifier?
                                                _%hd131998132028%_)
                                               (gx#core-identifier=?
                                                _%hd131998132028%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd131976%_)
                                            (_%K131977%_
                                             _%rest131978%_
                                             _%r131979%_))
                                          (_%E131996132021%_))))
                                  (_%E131996132021%_))))
                           (_%E131982132045%_
                            (lambda ()
                              (if (gx#stx-pair? _%e131980132005%_)
                                  (let ((_%e131993132037%_
                                         (gx#syntax-e _%e131980132005%_)))
                                    (let ((_%hd131994132040%_
                                           (##car _%e131993132037%_))
                                          (_%tl131995132042%_
                                           (##cdr _%e131993132037%_)))
                                      (if (and (gx#identifier?
                                                _%hd131994132040%_)
                                               (gx#core-identifier=?
                                                _%hd131994132040%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd131976%_)
                                            (_%K131977%_
                                             _%rest131978%_
                                             _%r131979%_))
                                          (_%E131992132033%_))))
                                  (_%E131992132033%_))))
                           (_%E131981132077%_
                            (lambda ()
                              (if (gx#stx-pair? _%e131980132005%_)
                                  (let ((_%e131983132049%_
                                         (gx#syntax-e _%e131980132005%_)))
                                    (let ((_%hd131984132052%_
                                           (##car _%e131983132049%_))
                                          (_%tl131985132054%_
                                           (##cdr _%e131983132049%_)))
                                      (if (and (gx#identifier?
                                                _%hd131984132052%_)
                                               (gx#core-identifier=?
                                                _%hd131984132052%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl131985132054%_)
                                              (let ((_%e131986132057%_
                                                     (gx#syntax-e
                                                      _%tl131985132054%_)))
                                                (let ((_%hd131987132060%_
                                                       (##car _%e131986132057%_))
                                                      (_%tl131988132062%_
                                                       (##cdr _%e131986132057%_)))
                                                  (let ((_%hd-bind132065%_
                                                         _%hd131987132060%_))
                                                    (if (gx#stx-pair?
                                                         _%tl131988132062%_)
                                                        (let ((_%e131989132067%_
                                                               (gx#syntax-e
                                                                _%tl131988132062%_)))
                                                          (let ((_%hd131990132070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e131989132067%_))
                        (_%tl131991132072%_ (##cdr _%e131989132067%_)))
                    (let ((_%expr132075%_ _%hd131990132070%_))
                      (if (gx#stx-null? _%tl131991132072%_)
                          (if (gx#core-bind-values? _%hd-bind132065%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind132065%_)
                                (_%K131977%_
                                 _%rest131978%_
                                 (cons _%hd131976%_ _%r131979%_)))
                              (_%E131982132045%_))
                          (_%E131982132045%_)))))
                (_%E131982132045%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E131982132045%_))
                                          (_%E131982132045%_))))
                                  (_%E131982132045%_)))))
                      (_%E131981132077%_))))
                 (_%wrap-internal131820%_
                  (lambda (_%rbody131822%_)
                    (let _%lp131824%_ ((_%rest131826%_ _%rbody131822%_)
                                       (_%decls131827%_ '())
                                       (_%bind131828%_ '())
                                       (_%body131829%_ '()))
                      (let* ((_%e131830131837%_ _%rest131826%_)
                             (_%E131832131886%_
                              (lambda ()
                                (let* ((_%body131881%_
                                        (let* ((_%body131840131850%_
                                                _%body131829%_)
                                               (_%else131843131858%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body131829%_)
                                                   (gx#stx-source
                                                    _%stx131814%_)))))
                                          (let ((_%K131848131878%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx131814%_)))
                                                (_%K131845131864%_
                                                 (lambda (_%expr131862%_)
                                                   _%expr131862%_)))
                                            (let ((_%try-match131842131874%_
                                                   (lambda ()
                                                     (if (pair? _%body131840131850%_)
                                                         (let ((_%tl131847131869%_
                                                                (##cdr _%body131840131850%_))
                                                               (_%hd131846131867%_
                                                                (##car _%body131840131850%_)))
                                                           (if (null? _%tl131847131869%_)
                                                               (let ((_%expr131872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd131846131867%_))
                         (_%K131845131864%_ _%expr131872%_))
                       (_%else131843131858%_)))
                 (_%else131843131858%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body131840131850%_)
                                                  (_%K131848131878%_)
                                                  (_%try-match131842131874%_))))))
                                       (_%body131883%_
                                        (if (null? _%bind131828%_)
                                            _%body131881%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind131828%_
                                                         (cons _%body131881%_
                                                               '())))
                                             (gx#stx-source _%stx131814%_)))))
                                  (if (null? _%decls131827%_)
                                      _%body131883%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls131827%_
                                                   (cons _%body131883%_ '())))
                                       (gx#stx-source _%stx131814%_))))))
                             (_%E131831131972%_
                              (lambda ()
                                (if (gx#stx-pair? _%e131830131837%_)
                                    (let ((_%e131833131890%_
                                           (gx#syntax-e _%e131830131837%_)))
                                      (let ((_%hd131834131893%_
                                             (##car _%e131833131890%_))
                                            (_%tl131835131895%_
                                             (##cdr _%e131833131890%_)))
                                        (let* ((_%hd131898%_
                                                _%hd131834131893%_)
                                               (_%rest131900%_
                                                _%tl131835131895%_)
                                               (_%e131901131918%_ _%hd131898%_)
                                               (_%E131913131922%_
                                                (lambda ()
                                                  (if (null? _%bind131828%_)
                                                      (_%lp131824%_
                                                       _%rest131900%_
                                                       _%decls131827%_
                                                       _%bind131828%_
                                                       (cons _%hd131898%_
                                                             _%body131829%_))
                                                      (_%lp131824%_
                                                       _%rest131900%_
                                                       _%decls131827%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd131898%_ '()))
                     _%bind131828%_)
               _%body131829%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E131903131936%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e131901131918%_)
                                                      (let ((_%e131914131926%_
                                                             (gx#syntax-e
                                                              _%e131901131918%_)))
                                                        (let ((_%hd131915131929%_
                                                               (##car _%e131914131926%_))
                                                              (_%tl131916131931%_
                                                               (##cdr _%e131914131926%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd131915131929%_)
                           (gx#core-identifier=?
                            _%hd131915131929%_
                            '%#declare))
                      (let ((_%xdecls131934%_ _%tl131916131931%_))
                        (_%lp131824%_
                         _%rest131900%_
                         (gx#stx-foldr cons _%decls131827%_ _%xdecls131934%_)
                         _%bind131828%_
                         _%body131829%_))
                      (_%E131913131922%_))))
              (_%E131913131922%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E131902131968%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e131901131918%_)
                                                      (let ((_%e131904131940%_
                                                             (gx#syntax-e
                                                              _%e131901131918%_)))
                                                        (let ((_%hd131905131943%_
                                                               (##car _%e131904131940%_))
                                                              (_%tl131906131945%_
                                                               (##cdr _%e131904131940%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd131905131943%_)
                           (gx#core-identifier=?
                            _%hd131905131943%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl131906131945%_)
                          (let ((_%e131907131948%_
                                 (gx#syntax-e _%tl131906131945%_)))
                            (let ((_%hd131908131951%_
                                   (##car _%e131907131948%_))
                                  (_%tl131909131953%_
                                   (##cdr _%e131907131948%_)))
                              (let ((_%hd-bind131956%_ _%hd131908131951%_))
                                (if (gx#stx-pair? _%tl131909131953%_)
                                    (let ((_%e131910131958%_
                                           (gx#syntax-e _%tl131909131953%_)))
                                      (let ((_%hd131911131961%_
                                             (##car _%e131910131958%_))
                                            (_%tl131912131963%_
                                             (##cdr _%e131910131958%_)))
                                        (let ((_%expr131966%_
                                               _%hd131911131961%_))
                                          (if (gx#stx-null? _%tl131912131963%_)
                                              (_%lp131824%_
                                               _%rest131900%_
                                               _%decls131827%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind131956%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr131966%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind131828%_)
                                               _%body131829%_)
                                              (_%E131903131936%_)))))
                                    (_%E131903131936%_)))))
                          (_%E131903131936%_))
                      (_%E131903131936%_))))
              (_%E131903131936%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E131902131968%_))))
                                    (_%E131832131886%_)))))
                        (_%E131831131972%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body131815%_)
            (gx#stx-source _%stx131814%_))
           _%expand-special131817%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx131752%_)
        (let* ((_%e131753131760%_ _%stx131752%_)
               (_%E131755131764%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131753131760%_)))
               (_%E131754131810%_
                (lambda ()
                  (if (gx#stx-pair? _%e131753131760%_)
                      (let ((_%e131756131768%_
                             (gx#syntax-e _%e131753131760%_)))
                        (let ((_%hd131757131771%_ (##car _%e131756131768%_))
                              (_%tl131758131773%_ (##cdr _%e131756131768%_)))
                          (let ((_%body131776%_ _%tl131758131773%_))
                            (if (gx#stx-list? _%body131776%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl131778%_)
                                     (let* ((_%e131779131786%_ _%decl131778%_)
                                            (_%E131781131790%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e131779131786%_)))
                                            (_%E131780131806%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e131779131786%_)
                                                   (let ((_%e131782131794%_
                                                          (gx#syntax-e
                                                           _%e131779131786%_)))
                                                     (let ((_%hd131783131797%_
                                                            (##car _%e131782131794%_))
                                                           (_%tl131784131799%_
                                                            (##cdr _%e131782131794%_)))
                                                       (let* ((_%head131802%_
                                                               _%hd131783131797%_)
                                                              (_%args131804%_
                                                               _%tl131784131799%_))
                                                         (if (gx#stx-list?
                                                              _%args131804%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl131778%_)
                                                             (_%E131781131790%_)))))
                                                   (_%E131781131790%_)))))
                                       (_%E131780131806%_)))
                                   _%body131776%_))
                                 (gx#stx-source _%stx131752%_))
                                (_%E131755131764%_)))))
                      (_%E131755131764%_)))))
          (_%E131754131810%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx131656%_)
        (let* ((_%e131657131664%_ _%stx131656%_)
               (_%E131659131668%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131657131664%_)))
               (_%E131658131748%_
                (lambda ()
                  (if (gx#stx-pair? _%e131657131664%_)
                      (let ((_%e131660131672%_
                             (gx#syntax-e _%e131657131664%_)))
                        (let ((_%hd131661131675%_ (##car _%e131660131672%_))
                              (_%tl131662131677%_ (##cdr _%e131660131672%_)))
                          (let ((_%body131680%_ _%tl131662131677%_))
                            (let _%lp131682%_ ((_%rest131684%_ _%body131680%_)
                                               (_%r131685%_ '()))
                              (let* ((_%e131686131700%_ _%rest131684%_)
                                     (_%E131698131704%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx131656%_)))
                                     (_%E131688131708%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e131686131700%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r131685%_))
                                             (gx#stx-source _%stx131656%_))
                                            (_%E131698131704%_))))
                                     (_%E131687131744%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e131686131700%_)
                                            (let ((_%e131689131712%_
                                                   (gx#syntax-e
                                                    _%e131686131700%_)))
                                              (let ((_%hd131690131715%_
                                                     (##car _%e131689131712%_))
                                                    (_%tl131691131717%_
                                                     (##cdr _%e131689131712%_)))
                                                (if (gx#stx-pair?
                                                     _%hd131690131715%_)
                                                    (let ((_%e131692131720%_
                                                           (gx#syntax-e
                                                            _%hd131690131715%_)))
                                                      (let ((_%hd131693131723%_
                                                             (##car _%e131692131720%_))
                                                            (_%tl131694131725%_
                                                             (##cdr _%e131692131720%_)))
                                                        (let ((_%id131728%_
                                                               _%hd131693131723%_))
                                                          (if (gx#stx-pair?
                                                               _%tl131694131725%_)
                                                              (let ((_%e131695131730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl131694131725%_)))
                        (let ((_%hd131696131733%_ (##car _%e131695131730%_))
                              (_%tl131697131735%_ (##cdr _%e131695131730%_)))
                          (let ((_%eid131738%_ _%hd131696131733%_))
                            (if (gx#stx-null? _%tl131697131735%_)
                                (let ((_%rest131740%_ _%tl131691131717%_))
                                  (if (and (gx#identifier? _%id131728%_)
                                           (gx#identifier? _%eid131738%_))
                                      (let ((_%eid131742%_
                                             (gx#stx-e _%eid131738%_)))
                                        (gx#core-bind-extern!__0
                                         _%id131728%_
                                         _%eid131742%_)
                                        (_%lp131682%_
                                         _%rest131740%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id131728%_)
                                                     (cons _%eid131742%_ '()))
                                               _%r131685%_)))
                                      (_%E131688131708%_)))
                                (_%E131688131708%_)))))
                      (_%E131688131708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E131688131708%_))))
                                            (_%E131688131708%_)))))
                                (_%E131687131744%_))))))
                      (_%E131659131668%_)))))
          (_%E131658131748%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx131602%_)
        (let* ((_%e131603131616%_ _%stx131602%_)
               (_%E131605131620%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131603131616%_)))
               (_%E131604131652%_
                (lambda ()
                  (if (gx#stx-pair? _%e131603131616%_)
                      (let ((_%e131606131624%_
                             (gx#syntax-e _%e131603131616%_)))
                        (let ((_%hd131607131627%_ (##car _%e131606131624%_))
                              (_%tl131608131629%_ (##cdr _%e131606131624%_)))
                          (if (gx#stx-pair? _%tl131608131629%_)
                              (let ((_%e131609131632%_
                                     (gx#syntax-e _%tl131608131629%_)))
                                (let ((_%hd131610131635%_
                                       (##car _%e131609131632%_))
                                      (_%tl131611131637%_
                                       (##cdr _%e131609131632%_)))
                                  (let ((_%hd131640%_ _%hd131610131635%_))
                                    (if (gx#stx-pair? _%tl131611131637%_)
                                        (let ((_%e131612131642%_
                                               (gx#syntax-e
                                                _%tl131611131637%_)))
                                          (let ((_%hd131613131645%_
                                                 (##car _%e131612131642%_))
                                                (_%tl131614131647%_
                                                 (##cdr _%e131612131642%_)))
                                            (let ((_%expr131650%_
                                                   _%hd131613131645%_))
                                              (if (gx#stx-null?
                                                   _%tl131614131647%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd131640%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd131640%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd131640%_)
                             (cons (gx#core-expand-expression _%expr131650%_)
                                   '())))
                 (gx#stx-source _%stx131602%_)))
              (_%E131605131620%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131605131620%_)))))
                                        (_%E131605131620%_)))))
                              (_%E131605131620%_))))
                      (_%E131605131620%_)))))
          (_%E131604131652%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx131546%_)
        (let* ((_%e131547131560%_ _%stx131546%_)
               (_%E131549131564%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131547131560%_)))
               (_%E131548131598%_
                (lambda ()
                  (if (gx#stx-pair? _%e131547131560%_)
                      (let ((_%e131550131568%_
                             (gx#syntax-e _%e131547131560%_)))
                        (let ((_%hd131551131571%_ (##car _%e131550131568%_))
                              (_%tl131552131573%_ (##cdr _%e131550131568%_)))
                          (if (gx#stx-pair? _%tl131552131573%_)
                              (let ((_%e131553131576%_
                                     (gx#syntax-e _%tl131552131573%_)))
                                (let ((_%hd131554131579%_
                                       (##car _%e131553131576%_))
                                      (_%tl131555131581%_
                                       (##cdr _%e131553131576%_)))
                                  (let ((_%id131584%_ _%hd131554131579%_))
                                    (if (gx#stx-pair? _%tl131555131581%_)
                                        (let ((_%e131556131586%_
                                               (gx#syntax-e
                                                _%tl131555131581%_)))
                                          (let ((_%hd131557131589%_
                                                 (##car _%e131556131586%_))
                                                (_%tl131558131591%_
                                                 (##cdr _%e131556131586%_)))
                                            (let ((_%binding-id131594%_
                                                   _%hd131557131589%_))
                                              (if (gx#stx-null?
                                                   _%tl131558131591%_)
                                                  (if (and (gx#identifier?
                                                            _%id131584%_)
                                                           (gx#identifier?
                                                            _%binding-id131594%_))
                                                      (let ((_%eid131596%_
                                                             (gx#stx-e
                                                              _%binding-id131594%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id131584%_
                                                         _%eid131596%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id131584%_)
                             (cons _%eid131596%_ '())))))
              (_%E131549131564%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131549131564%_)))))
                                        (_%E131549131564%_)))))
                              (_%E131549131564%_))))
                      (_%E131549131564%_)))))
          (_%E131548131598%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx131489%_)
        (let* ((_%e131490131503%_ _%stx131489%_)
               (_%E131492131507%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131490131503%_)))
               (_%E131491131542%_
                (lambda ()
                  (if (gx#stx-pair? _%e131490131503%_)
                      (let ((_%e131493131511%_
                             (gx#syntax-e _%e131490131503%_)))
                        (let ((_%hd131494131514%_ (##car _%e131493131511%_))
                              (_%tl131495131516%_ (##cdr _%e131493131511%_)))
                          (if (gx#stx-pair? _%tl131495131516%_)
                              (let ((_%e131496131519%_
                                     (gx#syntax-e _%tl131495131516%_)))
                                (let ((_%hd131497131522%_
                                       (##car _%e131496131519%_))
                                      (_%tl131498131524%_
                                       (##cdr _%e131496131519%_)))
                                  (let ((_%id131527%_ _%hd131497131522%_))
                                    (if (gx#stx-pair? _%tl131498131524%_)
                                        (let ((_%e131499131529%_
                                               (gx#syntax-e
                                                _%tl131498131524%_)))
                                          (let ((_%hd131500131532%_
                                                 (##car _%e131499131529%_))
                                                (_%tl131501131534%_
                                                 (##cdr _%e131499131529%_)))
                                            (let ((_%expr131537%_
                                                   _%hd131500131532%_))
                                              (if (gx#stx-null?
                                                   _%tl131501131534%_)
                                                  (if (gx#identifier?
                                                       _%id131527%_)
                                                      (let ((_g132448_
                                                             (gx#core-expand-expression+1
                                                              _%expr131537%_)))
                                                        (begin
                                                          (let ((_g132449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g132448_)
                             (##values-length _g132448_)
                             1)))
                    (if (not (##fx= _g132449_ 2))
                        (error "Context expects 2 values" _g132449_)))
                  (let ((_%e-stx131539%_ (##values-ref _g132448_ 0))
                        (_%e131540%_ (##values-ref _g132448_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id131527%_ _%e131540%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id131527%_)
                                   (cons _%e-stx131539%_ '())))
                       (gx#stx-source _%stx131489%_))))))
              (_%E131492131507%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131492131507%_)))))
                                        (_%E131492131507%_)))))
                              (_%E131492131507%_))))
                      (_%E131492131507%_)))))
          (_%E131491131542%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx131433%_)
        (let* ((_%e131434131447%_ _%stx131433%_)
               (_%E131436131451%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131434131447%_)))
               (_%E131435131485%_
                (lambda ()
                  (if (gx#stx-pair? _%e131434131447%_)
                      (let ((_%e131437131455%_
                             (gx#syntax-e _%e131434131447%_)))
                        (let ((_%hd131438131458%_ (##car _%e131437131455%_))
                              (_%tl131439131460%_ (##cdr _%e131437131455%_)))
                          (if (gx#stx-pair? _%tl131439131460%_)
                              (let ((_%e131440131463%_
                                     (gx#syntax-e _%tl131439131460%_)))
                                (let ((_%hd131441131466%_
                                       (##car _%e131440131463%_))
                                      (_%tl131442131468%_
                                       (##cdr _%e131440131463%_)))
                                  (let ((_%id131471%_ _%hd131441131466%_))
                                    (if (gx#stx-pair? _%tl131442131468%_)
                                        (let ((_%e131443131473%_
                                               (gx#syntax-e
                                                _%tl131442131468%_)))
                                          (let ((_%hd131444131476%_
                                                 (##car _%e131443131473%_))
                                                (_%tl131445131478%_
                                                 (##cdr _%e131443131473%_)))
                                            (let ((_%alias-id131481%_
                                                   _%hd131444131476%_))
                                              (if (gx#stx-null?
                                                   _%tl131445131478%_)
                                                  (if (and (gx#identifier?
                                                            _%id131471%_)
                                                           (gx#identifier?
                                                            _%alias-id131481%_))
                                                      (let ((_%alias-id131483%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id131481%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id131471%_
                                                         _%alias-id131483%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id131471%_)
                             (cons _%alias-id131483%_ '())))))
              (_%E131436131451%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131436131451%_)))))
                                        (_%E131436131451%_)))))
                              (_%E131436131451%_))))
                      (_%E131436131451%_)))))
          (_%E131435131485%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx131376%_ _%wrap?131377%_)
        (let* ((_%e131378131388%_ _%stx131376%_)
               (_%E131380131392%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131378131388%_)))
               (_%E131379131419%_
                (lambda ()
                  (if (gx#stx-pair? _%e131378131388%_)
                      (let ((_%e131381131396%_
                             (gx#syntax-e _%e131378131388%_)))
                        (let ((_%hd131382131399%_ (##car _%e131381131396%_))
                              (_%tl131383131401%_ (##cdr _%e131381131396%_)))
                          (if (gx#stx-pair? _%tl131383131401%_)
                              (let ((_%e131384131404%_
                                     (gx#syntax-e _%tl131383131401%_)))
                                (let ((_%hd131385131407%_
                                       (##car _%e131384131404%_))
                                      (_%tl131386131409%_
                                       (##cdr _%e131384131404%_)))
                                  (let* ((_%hd131412%_ _%hd131385131407%_)
                                         (_%body131414%_ _%tl131386131409%_))
                                    (if (gx#core-bind-values? _%hd131412%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd131412%_)
                                           (let ((_%body131417%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd131412%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx131376%_
                                                               _%body131414%_)
                                                              '()))))
                                             (if _%wrap?131377%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body131417%_)
                                                  (gx#stx-source
                                                   _%stx131376%_))
                                                 _%body131417%_)))
                                         gx#current-expander-context
                                         (let ((__obj132441
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj132441)
                                           __obj132441))
                                        (_%E131380131392%_)))))
                              (_%E131380131392%_))))
                      (_%E131380131392%_)))))
          (_%E131379131419%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx131426%_)
        (let ((_%wrap?131428%_ '#t))
          (gx#core-expand-lambda%__% _%stx131426%_ _%wrap?131428%_))))
    (define gx#core-expand-lambda%
      (lambda _g132450_
        (let ((_g132451_ (##length _g132450_)))
          (cond ((##fx= _g132451_ 1)
                 (apply gx#core-expand-lambda%__0 _g132450_))
                ((##fx= _g132451_ 2)
                 (apply gx#core-expand-lambda%__% _g132450_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g132450_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx131340%_)
        (let* ((_%e131341131348%_ _%stx131340%_)
               (_%E131343131352%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131341131348%_)))
               (_%E131342131371%_
                (lambda ()
                  (if (gx#stx-pair? _%e131341131348%_)
                      (let ((_%e131344131356%_
                             (gx#syntax-e _%e131341131348%_)))
                        (let ((_%hd131345131359%_ (##car _%e131344131356%_))
                              (_%tl131346131361%_ (##cdr _%e131344131356%_)))
                          (let ((_%clauses131364%_ _%tl131346131361%_))
                            (if (gx#stx-list? _%clauses131364%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause131366%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause131366%_)
                                       (let ((_%$e131368%_
                                              (gx#stx-source
                                               _%clause131366%_)))
                                         (if _%$e131368%_
                                             _%$e131368%_
                                             (gx#stx-source _%stx131340%_))))
                                      '#f))
                                   _%clauses131364%_))
                                 (gx#stx-source _%stx131340%_))
                                (_%E131343131352%_)))))
                      (_%E131343131352%_)))))
          (_%E131342131371%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx131294%_)
        (let* ((_%e131295131305%_ _%stx131294%_)
               (_%E131297131309%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131295131305%_)))
               (_%E131296131336%_
                (lambda ()
                  (if (gx#stx-pair? _%e131295131305%_)
                      (let ((_%e131298131313%_
                             (gx#syntax-e _%e131295131305%_)))
                        (let ((_%hd131299131316%_ (##car _%e131298131313%_))
                              (_%tl131300131318%_ (##cdr _%e131298131313%_)))
                          (if (gx#stx-pair? _%tl131300131318%_)
                              (let ((_%e131301131321%_
                                     (gx#syntax-e _%tl131300131318%_)))
                                (let ((_%hd131302131324%_
                                       (##car _%e131301131321%_))
                                      (_%tl131303131326%_
                                       (##cdr _%e131301131321%_)))
                                  (let* ((_%hd131329%_ _%hd131302131324%_)
                                         (_%body131331%_ _%tl131303131326%_))
                                    (if (gx#core-expand-let-bind? _%hd131329%_)
                                        (let ((_%expressions131333%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd131329%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd131329%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd131329%_
                                                           _%expressions131333%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx131294%_
                         _%body131331%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx131294%_)))
                                           gx#current-expander-context
                                           (let ((__obj132442
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj132442)
                                             __obj132442)))
                                        (_%E131297131309%_)))))
                              (_%E131297131309%_))))
                      (_%E131297131309%_)))))
          (_%E131296131336%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx131239%_ _%form131240%_)
        (let* ((_%e131241131251%_ _%stx131239%_)
               (_%E131243131255%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131241131251%_)))
               (_%E131242131280%_
                (lambda ()
                  (if (gx#stx-pair? _%e131241131251%_)
                      (let ((_%e131244131259%_
                             (gx#syntax-e _%e131241131251%_)))
                        (let ((_%hd131245131262%_ (##car _%e131244131259%_))
                              (_%tl131246131264%_ (##cdr _%e131244131259%_)))
                          (if (gx#stx-pair? _%tl131246131264%_)
                              (let ((_%e131247131267%_
                                     (gx#syntax-e _%tl131246131264%_)))
                                (let ((_%hd131248131270%_
                                       (##car _%e131247131267%_))
                                      (_%tl131249131272%_
                                       (##cdr _%e131247131267%_)))
                                  (let* ((_%hd131275%_ _%hd131248131270%_)
                                         (_%body131277%_ _%tl131249131272%_))
                                    (if (gx#core-expand-let-bind? _%hd131275%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd131275%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form131240%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd131275%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd131275%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx131239%_
                                                               _%body131277%_)
                                                              '())))
                                            (gx#stx-source _%stx131239%_)))
                                         gx#current-expander-context
                                         (let ((__obj132443
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj132443)
                                           __obj132443))
                                        (_%E131243131255%_)))))
                              (_%E131243131255%_))))
                      (_%E131243131255%_)))))
          (_%E131242131280%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx131287%_)
        (let ((_%form131289%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx131287%_ _%form131289%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g132452_
        (let ((_g132453_ (##length _g132452_)))
          (cond ((##fx= _g132453_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g132452_))
                ((##fx= _g132453_ 2)
                 (apply gx#core-expand-letrec-values%__% _g132452_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g132452_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx131236%_)
        (gx#core-expand-letrec-values%__% _%stx131236%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx131193%_)
        (if (gx#stx-list? _%stx131193%_)
            (gx#stx-andmap
             (lambda (_%bind131195%_)
               (let* ((_%e131196131206%_ _%bind131195%_)
                      (_%E131198131210%_ (lambda () '#f))
                      (_%E131197131232%_
                       (lambda ()
                         (if (gx#stx-pair? _%e131196131206%_)
                             (let ((_%e131199131214%_
                                    (gx#syntax-e _%e131196131206%_)))
                               (let ((_%hd131200131217%_
                                      (##car _%e131199131214%_))
                                     (_%tl131201131219%_
                                      (##cdr _%e131199131214%_)))
                                 (let ((_%hd131222%_ _%hd131200131217%_))
                                   (if (gx#stx-pair? _%tl131201131219%_)
                                       (let ((_%e131202131224%_
                                              (gx#syntax-e
                                               _%tl131201131219%_)))
                                         (let ((_%hd131203131227%_
                                                (##car _%e131202131224%_))
                                               (_%tl131204131229%_
                                                (##cdr _%e131202131224%_)))
                                           (if (gx#stx-null?
                                                _%tl131204131229%_)
                                               (gx#core-bind-values?
                                                _%hd131222%_)
                                               (_%E131198131210%_))))
                                       (_%E131198131210%_)))))
                             (_%E131198131210%_)))))
                 (_%E131197131232%_)))
             _%stx131193%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind131152%_)
        (let* ((_%e131153131163%_ _%bind131152%_)
               (_%E131155131167%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131153131163%_)))
               (_%E131154131189%_
                (lambda ()
                  (if (gx#stx-pair? _%e131153131163%_)
                      (let ((_%e131156131171%_
                             (gx#syntax-e _%e131153131163%_)))
                        (let ((_%hd131157131174%_ (##car _%e131156131171%_))
                              (_%tl131158131176%_ (##cdr _%e131156131171%_)))
                          (if (gx#stx-pair? _%tl131158131176%_)
                              (let ((_%e131159131179%_
                                     (gx#syntax-e _%tl131158131176%_)))
                                (let ((_%hd131160131182%_
                                       (##car _%e131159131179%_))
                                      (_%tl131161131184%_
                                       (##cdr _%e131159131179%_)))
                                  (let ((_%expr131187%_ _%hd131160131182%_))
                                    (if (gx#stx-null? _%tl131161131184%_)
                                        (gx#core-expand-expression
                                         _%expr131187%_)
                                        (_%E131155131167%_)))))
                              (_%E131155131167%_))))
                      (_%E131155131167%_)))))
          (_%E131154131189%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind131111%_)
        (let* ((_%e131112131122%_ _%bind131111%_)
               (_%E131114131126%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131112131122%_)))
               (_%E131113131148%_
                (lambda ()
                  (if (gx#stx-pair? _%e131112131122%_)
                      (let ((_%e131115131130%_
                             (gx#syntax-e _%e131112131122%_)))
                        (let ((_%hd131116131133%_ (##car _%e131115131130%_))
                              (_%tl131117131135%_ (##cdr _%e131115131130%_)))
                          (let ((_%hd131138%_ _%hd131116131133%_))
                            (if (gx#stx-pair? _%tl131117131135%_)
                                (let ((_%e131118131140%_
                                       (gx#syntax-e _%tl131117131135%_)))
                                  (let ((_%hd131119131143%_
                                         (##car _%e131118131140%_))
                                        (_%tl131120131145%_
                                         (##cdr _%e131118131140%_)))
                                    (if (gx#stx-null? _%tl131120131145%_)
                                        (gx#core-bind-values!__0 _%hd131138%_)
                                        (_%E131114131126%_))))
                                (_%E131114131126%_)))))
                      (_%E131114131126%_)))))
          (_%E131113131148%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind131069%_ _%expr131070%_)
        (let* ((_%e131071131081%_ _%bind131069%_)
               (_%E131073131085%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131071131081%_)))
               (_%E131072131107%_
                (lambda ()
                  (if (gx#stx-pair? _%e131071131081%_)
                      (let ((_%e131074131089%_
                             (gx#syntax-e _%e131071131081%_)))
                        (let ((_%hd131075131092%_ (##car _%e131074131089%_))
                              (_%tl131076131094%_ (##cdr _%e131074131089%_)))
                          (let ((_%hd131097%_ _%hd131075131092%_))
                            (if (gx#stx-pair? _%tl131076131094%_)
                                (let ((_%e131077131099%_
                                       (gx#syntax-e _%tl131076131094%_)))
                                  (let ((_%hd131078131102%_
                                         (##car _%e131077131099%_))
                                        (_%tl131079131104%_
                                         (##cdr _%e131077131099%_)))
                                    (if (gx#stx-null? _%tl131079131104%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd131097%_)
                                              (cons _%expr131070%_ '()))
                                        (_%E131073131085%_))))
                                (_%E131073131085%_)))))
                      (_%E131073131085%_)))))
          (_%E131072131107%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx131023%_)
        (let* ((_%e131024131034%_ _%stx131023%_)
               (_%E131026131038%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131024131034%_)))
               (_%E131025131065%_
                (lambda ()
                  (if (gx#stx-pair? _%e131024131034%_)
                      (let ((_%e131027131042%_
                             (gx#syntax-e _%e131024131034%_)))
                        (let ((_%hd131028131045%_ (##car _%e131027131042%_))
                              (_%tl131029131047%_ (##cdr _%e131027131042%_)))
                          (if (gx#stx-pair? _%tl131029131047%_)
                              (let ((_%e131030131050%_
                                     (gx#syntax-e _%tl131029131047%_)))
                                (let ((_%hd131031131053%_
                                       (##car _%e131030131050%_))
                                      (_%tl131032131055%_
                                       (##cdr _%e131030131050%_)))
                                  (let* ((_%hd131058%_ _%hd131031131053%_)
                                         (_%body131060%_ _%tl131032131055%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd131058%_)
                                        (let ((_%expanders131062%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd131058%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd131058%_
                                              _%expanders131062%_)
                                             (gx#core-expand-local-block
                                              _%stx131023%_
                                              _%body131060%_))
                                           gx#current-expander-context
                                           (let ((__obj132444
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj132444)
                                             __obj132444)))
                                        (_%E131026131038%_)))))
                              (_%E131026131038%_))))
                      (_%E131026131038%_)))))
          (_%E131025131065%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx130972%_)
        (let* ((_%e130973130983%_ _%stx130972%_)
               (_%E130975130987%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130973130983%_)))
               (_%E130974131019%_
                (lambda ()
                  (if (gx#stx-pair? _%e130973130983%_)
                      (let ((_%e130976130991%_
                             (gx#syntax-e _%e130973130983%_)))
                        (let ((_%hd130977130994%_ (##car _%e130976130991%_))
                              (_%tl130978130996%_ (##cdr _%e130976130991%_)))
                          (if (gx#stx-pair? _%tl130978130996%_)
                              (let ((_%e130979130999%_
                                     (gx#syntax-e _%tl130978130996%_)))
                                (let ((_%hd130980131002%_
                                       (##car _%e130979130999%_))
                                      (_%tl130981131004%_
                                       (##cdr _%e130979130999%_)))
                                  (let* ((_%hd131007%_ _%hd130980131002%_)
                                         (_%body131009%_ _%tl130981131004%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd131007%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd131007%_
                                            (make-list
                                             (gx#stx-length _%hd131007%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g131011131014%_
                                                     _%g131012131016%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g131011131014%_
                                               _%g131012131016%_
                                               '#t))
                                            _%hd131007%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd131007%_))
                                           (gx#core-expand-local-block
                                            _%stx130972%_
                                            _%body131009%_))
                                         gx#current-expander-context
                                         (let ((__obj132445
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj132445)
                                           __obj132445))
                                        (_%E130975130987%_)))))
                              (_%E130975130987%_))))
                      (_%E130975130987%_)))))
          (_%E130974131019%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx130929%_)
        (if (gx#stx-list? _%stx130929%_)
            (gx#stx-andmap
             (lambda (_%bind130931%_)
               (let* ((_%e130932130942%_ _%bind130931%_)
                      (_%E130934130946%_ (lambda () '#f))
                      (_%E130933130968%_
                       (lambda ()
                         (if (gx#stx-pair? _%e130932130942%_)
                             (let ((_%e130935130950%_
                                    (gx#syntax-e _%e130932130942%_)))
                               (let ((_%hd130936130953%_
                                      (##car _%e130935130950%_))
                                     (_%tl130937130955%_
                                      (##cdr _%e130935130950%_)))
                                 (let ((_%hd130958%_ _%hd130936130953%_))
                                   (if (gx#stx-pair? _%tl130937130955%_)
                                       (let ((_%e130938130960%_
                                              (gx#syntax-e
                                               _%tl130937130955%_)))
                                         (let ((_%hd130939130963%_
                                                (##car _%e130938130960%_))
                                               (_%tl130940130965%_
                                                (##cdr _%e130938130960%_)))
                                           (if (gx#stx-null?
                                                _%tl130940130965%_)
                                               (gx#identifier? _%hd130958%_)
                                               (_%E130934130946%_))))
                                       (_%E130934130946%_)))))
                             (_%E130934130946%_)))))
                 (_%E130933130968%_)))
             _%stx130929%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind130885%_)
        (let* ((_%e130886130896%_ _%bind130885%_)
               (_%E130888130900%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130886130896%_)))
               (_%E130887130925%_
                (lambda ()
                  (if (gx#stx-pair? _%e130886130896%_)
                      (let ((_%e130889130904%_
                             (gx#syntax-e _%e130886130896%_)))
                        (let ((_%hd130890130907%_ (##car _%e130889130904%_))
                              (_%tl130891130909%_ (##cdr _%e130889130904%_)))
                          (if (gx#stx-pair? _%tl130891130909%_)
                              (let ((_%e130892130912%_
                                     (gx#syntax-e _%tl130891130909%_)))
                                (let ((_%hd130893130915%_
                                       (##car _%e130892130912%_))
                                      (_%tl130894130917%_
                                       (##cdr _%e130892130912%_)))
                                  (let ((_%expr130920%_ _%hd130893130915%_))
                                    (if (gx#stx-null? _%tl130894130917%_)
                                        (let ((_g132454_
                                               (gx#core-expand-expression+1
                                                _%expr130920%_)))
                                          (begin
                                            (let ((_g132455_
                                                   (if (##values? _g132454_)
                                                       (##values-length
                                                        _g132454_)
                                                       1)))
                                              (if (not (##fx= _g132455_ 2))
                                                  (error "Context expects 2 values"
                                                         _g132455_)))
                                            (let ((_%_130922%_
                                                   (##values-ref _g132454_ 0))
                                                  (_%e130923%_
                                                   (##values-ref _g132454_ 1)))
                                              _%e130923%_)))
                                        (_%E130888130900%_)))))
                              (_%E130888130900%_))))
                      (_%E130888130900%_)))))
          (_%E130887130925%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind130830%_ _%e130831%_ _%rebind?130832%_)
        (let* ((_%e130833130843%_ _%bind130830%_)
               (_%E130835130847%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130833130843%_)))
               (_%E130834130869%_
                (lambda ()
                  (if (gx#stx-pair? _%e130833130843%_)
                      (let ((_%e130836130851%_
                             (gx#syntax-e _%e130833130843%_)))
                        (let ((_%hd130837130854%_ (##car _%e130836130851%_))
                              (_%tl130838130856%_ (##cdr _%e130836130851%_)))
                          (let ((_%id130859%_ _%hd130837130854%_))
                            (if (gx#stx-pair? _%tl130838130856%_)
                                (let ((_%e130839130861%_
                                       (gx#syntax-e _%tl130838130856%_)))
                                  (let ((_%hd130840130864%_
                                         (##car _%e130839130861%_))
                                        (_%tl130841130866%_
                                         (##cdr _%e130839130861%_)))
                                    (if (gx#stx-null? _%tl130841130866%_)
                                        (gx#core-bind-syntax!__1
                                         _%id130859%_
                                         _%e130831%_
                                         _%rebind?130832%_)
                                        (_%E130835130847%_))))
                                (_%E130835130847%_)))))
                      (_%E130835130847%_)))))
          (_%E130834130869%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind130876%_ _%e130877%_)
        (let ((_%rebind?130879%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind130876%_
           _%e130877%_
           _%rebind?130879%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g132456_
        (let ((_g132457_ (##length _g132456_)))
          (cond ((##fx= _g132457_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g132456_))
                ((##fx= _g132457_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g132456_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g132456_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx130788%_)
        (let* ((_%e130789130799%_ _%stx130788%_)
               (_%E130791130803%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130789130799%_)))
               (_%E130790130825%_
                (lambda ()
                  (if (gx#stx-pair? _%e130789130799%_)
                      (let ((_%e130792130807%_
                             (gx#syntax-e _%e130789130799%_)))
                        (let ((_%hd130793130810%_ (##car _%e130792130807%_))
                              (_%tl130794130812%_ (##cdr _%e130792130807%_)))
                          (if (gx#stx-pair? _%tl130794130812%_)
                              (let ((_%e130795130815%_
                                     (gx#syntax-e _%tl130794130812%_)))
                                (let ((_%hd130796130818%_
                                       (##car _%e130795130815%_))
                                      (_%tl130797130820%_
                                       (##cdr _%e130795130815%_)))
                                  (let ((_%expr130823%_ _%hd130796130818%_))
                                    (if (gx#stx-null? _%tl130797130820%_)
                                        (gx#core-expand-expression
                                         _%expr130823%_)
                                        (_%E130791130803%_)))))
                              (_%E130791130803%_))))
                      (_%E130791130803%_)))))
          (_%E130790130825%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx130747%_)
        (let* ((_%e130748130758%_ _%stx130747%_)
               (_%E130750130762%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130748130758%_)))
               (_%E130749130784%_
                (lambda ()
                  (if (gx#stx-pair? _%e130748130758%_)
                      (let ((_%e130751130766%_
                             (gx#syntax-e _%e130748130758%_)))
                        (let ((_%hd130752130769%_ (##car _%e130751130766%_))
                              (_%tl130753130771%_ (##cdr _%e130751130766%_)))
                          (if (gx#stx-pair? _%tl130753130771%_)
                              (let ((_%e130754130774%_
                                     (gx#syntax-e _%tl130753130771%_)))
                                (let ((_%hd130755130777%_
                                       (##car _%e130754130774%_))
                                      (_%tl130756130779%_
                                       (##cdr _%e130754130774%_)))
                                  (let ((_%e130782%_ _%hd130755130777%_))
                                    (if (gx#stx-null? _%tl130756130779%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e130782%_)
                                                     '()))
                                         (gx#stx-source _%stx130747%_))
                                        (_%E130750130762%_)))))
                              (_%E130750130762%_))))
                      (_%E130750130762%_)))))
          (_%E130749130784%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx130706%_)
        (let* ((_%e130707130717%_ _%stx130706%_)
               (_%E130709130721%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130707130717%_)))
               (_%E130708130743%_
                (lambda ()
                  (if (gx#stx-pair? _%e130707130717%_)
                      (let ((_%e130710130725%_
                             (gx#syntax-e _%e130707130717%_)))
                        (let ((_%hd130711130728%_ (##car _%e130710130725%_))
                              (_%tl130712130730%_ (##cdr _%e130710130725%_)))
                          (if (gx#stx-pair? _%tl130712130730%_)
                              (let ((_%e130713130733%_
                                     (gx#syntax-e _%tl130712130730%_)))
                                (let ((_%hd130714130736%_
                                       (##car _%e130713130733%_))
                                      (_%tl130715130738%_
                                       (##cdr _%e130713130733%_)))
                                  (let ((_%e130741%_ _%hd130714130736%_))
                                    (if (gx#stx-null? _%tl130715130738%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e130741%_)
                                                     '()))
                                         (gx#stx-source _%stx130706%_))
                                        (_%E130709130721%_)))))
                              (_%E130709130721%_))))
                      (_%E130709130721%_)))))
          (_%E130708130743%_))))
    (define gx#core-expand-call%
      (lambda (_%stx130663%_)
        (let* ((_%e130664130674%_ _%stx130663%_)
               (_%E130666130678%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130664130674%_)))
               (_%E130665130702%_
                (lambda ()
                  (if (gx#stx-pair? _%e130664130674%_)
                      (let ((_%e130667130682%_
                             (gx#syntax-e _%e130664130674%_)))
                        (let ((_%hd130668130685%_ (##car _%e130667130682%_))
                              (_%tl130669130687%_ (##cdr _%e130667130682%_)))
                          (if (gx#stx-pair? _%tl130669130687%_)
                              (let ((_%e130670130690%_
                                     (gx#syntax-e _%tl130669130687%_)))
                                (let ((_%hd130671130693%_
                                       (##car _%e130670130690%_))
                                      (_%tl130672130695%_
                                       (##cdr _%e130670130690%_)))
                                  (let* ((_%rator130698%_ _%hd130671130693%_)
                                         (_%args130700%_ _%tl130672130695%_))
                                    (if (gx#stx-list? _%args130700%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator130698%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args130700%_))
                                         (gx#stx-source _%stx130663%_))
                                        (_%E130666130678%_)))))
                              (_%E130666130678%_))))
                      (_%E130666130678%_)))))
          (_%E130665130702%_))))
    (define gx#core-expand-if%
      (lambda (_%stx130596%_)
        (let* ((_%e130597130613%_ _%stx130596%_)
               (_%E130599130617%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130597130613%_)))
               (_%E130598130659%_
                (lambda ()
                  (if (gx#stx-pair? _%e130597130613%_)
                      (let ((_%e130600130621%_
                             (gx#syntax-e _%e130597130613%_)))
                        (let ((_%hd130601130624%_ (##car _%e130600130621%_))
                              (_%tl130602130626%_ (##cdr _%e130600130621%_)))
                          (if (gx#stx-pair? _%tl130602130626%_)
                              (let ((_%e130603130629%_
                                     (gx#syntax-e _%tl130602130626%_)))
                                (let ((_%hd130604130632%_
                                       (##car _%e130603130629%_))
                                      (_%tl130605130634%_
                                       (##cdr _%e130603130629%_)))
                                  (let ((_%test130637%_ _%hd130604130632%_))
                                    (if (gx#stx-pair? _%tl130605130634%_)
                                        (let ((_%e130606130639%_
                                               (gx#syntax-e
                                                _%tl130605130634%_)))
                                          (let ((_%hd130607130642%_
                                                 (##car _%e130606130639%_))
                                                (_%tl130608130644%_
                                                 (##cdr _%e130606130639%_)))
                                            (let ((_%K130647%_
                                                   _%hd130607130642%_))
                                              (if (gx#stx-pair?
                                                   _%tl130608130644%_)
                                                  (let ((_%e130609130649%_
                                                         (gx#syntax-e
                                                          _%tl130608130644%_)))
                                                    (let ((_%hd130610130652%_
                                                           (##car _%e130609130649%_))
                                                          (_%tl130611130654%_
                                                           (##cdr _%e130609130649%_)))
                                                      (let ((_%E130657%_
                                                             _%hd130610130652%_))
                                                        (if (gx#stx-null?
                                                             _%tl130611130654%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test130637%_)
                                 (cons (gx#core-expand-expression _%K130647%_)
                                       (cons (gx#core-expand-expression
                                              _%E130657%_)
                                             '()))))
                     (gx#stx-source _%stx130596%_))
                    (_%E130599130617%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130599130617%_)))))
                                        (_%E130599130617%_)))))
                              (_%E130599130617%_))))
                      (_%E130599130617%_)))))
          (_%E130598130659%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx130555%_)
        (let* ((_%e130556130566%_ _%stx130555%_)
               (_%E130558130570%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130556130566%_)))
               (_%E130557130592%_
                (lambda ()
                  (if (gx#stx-pair? _%e130556130566%_)
                      (let ((_%e130559130574%_
                             (gx#syntax-e _%e130556130566%_)))
                        (let ((_%hd130560130577%_ (##car _%e130559130574%_))
                              (_%tl130561130579%_ (##cdr _%e130559130574%_)))
                          (if (gx#stx-pair? _%tl130561130579%_)
                              (let ((_%e130562130582%_
                                     (gx#syntax-e _%tl130561130579%_)))
                                (let ((_%hd130563130585%_
                                       (##car _%e130562130582%_))
                                      (_%tl130564130587%_
                                       (##cdr _%e130562130582%_)))
                                  (let ((_%id130590%_ _%hd130563130585%_))
                                    (if (gx#stx-null? _%tl130564130587%_)
                                        (if (gx#identifier? _%id130590%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id130590%_
                                                          _%stx130555%_)
                                                         '()))
                                             (gx#stx-source _%stx130555%_))
                                            (_%E130558130570%_))
                                        (_%E130558130570%_)))))
                              (_%E130558130570%_))))
                      (_%E130558130570%_)))))
          (_%E130557130592%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx130501%_)
        (let* ((_%e130502130515%_ _%stx130501%_)
               (_%E130504130519%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130502130515%_)))
               (_%E130503130551%_
                (lambda ()
                  (if (gx#stx-pair? _%e130502130515%_)
                      (let ((_%e130505130523%_
                             (gx#syntax-e _%e130502130515%_)))
                        (let ((_%hd130506130526%_ (##car _%e130505130523%_))
                              (_%tl130507130528%_ (##cdr _%e130505130523%_)))
                          (if (gx#stx-pair? _%tl130507130528%_)
                              (let ((_%e130508130531%_
                                     (gx#syntax-e _%tl130507130528%_)))
                                (let ((_%hd130509130534%_
                                       (##car _%e130508130531%_))
                                      (_%tl130510130536%_
                                       (##cdr _%e130508130531%_)))
                                  (let ((_%id130539%_ _%hd130509130534%_))
                                    (if (gx#stx-pair? _%tl130510130536%_)
                                        (let ((_%e130511130541%_
                                               (gx#syntax-e
                                                _%tl130510130536%_)))
                                          (let ((_%hd130512130544%_
                                                 (##car _%e130511130541%_))
                                                (_%tl130513130546%_
                                                 (##cdr _%e130511130541%_)))
                                            (let ((_%expr130549%_
                                                   _%hd130512130544%_))
                                              (if (gx#stx-null?
                                                   _%tl130513130546%_)
                                                  (if (gx#identifier?
                                                       _%id130539%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id130539%_
                            _%stx130501%_)
                           (cons (gx#core-expand-expression _%expr130549%_)
                                 '())))
               (gx#stx-source _%stx130501%_))
              (_%E130504130519%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130504130519%_)))))
                                        (_%E130504130519%_)))))
                              (_%E130504130519%_))))
                      (_%E130504130519%_)))))
          (_%E130503130551%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx130346%_)
        (letrec ((_%generate130348%_
                  (lambda (_%body130378%_)
                    (let _%lp130380%_ ((_%rest130382%_ _%body130378%_)
                                       (_%ns130383%_
                                        (gx#core-context-namespace__0))
                                       (_%r130384%_ '()))
                      (let* ((_%e130385130400%_ _%rest130382%_)
                             (_%E130398130404%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e130385130400%_)))
                             (_%E130394130408%_
                              (lambda ()
                                (if (gx#stx-null? _%e130385130400%_)
                                    (reverse _%r130384%_)
                                    (_%E130398130404%_))))
                             (_%E130387130465%_
                              (lambda ()
                                (if (gx#stx-pair? _%e130385130400%_)
                                    (let ((_%e130395130412%_
                                           (gx#syntax-e _%e130385130400%_)))
                                      (let ((_%hd130396130415%_
                                             (##car _%e130395130412%_))
                                            (_%tl130397130417%_
                                             (##cdr _%e130395130412%_)))
                                        (let* ((_%hd130420%_
                                                _%hd130396130415%_)
                                               (_%rest130422%_
                                                _%tl130397130417%_))
                                          (if (gx#identifier? _%hd130420%_)
                                              (_%lp130380%_
                                               _%rest130422%_
                                               _%ns130383%_
                                               (cons (cons _%hd130420%_
                                                           (cons (if _%ns130383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd130420%_
                              _%ns130383%_
                              '"#"
                              _%hd130420%_)
                             _%hd130420%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r130384%_))
                                              (let* ((_%e130423130433%_
                                                      _%hd130420%_)
                                                     (_%E130425130437%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e130423130433%_)))
                                                     (_%E130424130461%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e130423130433%_)
                                                            (let ((_%e130426130441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e130423130433%_)))
                      (let ((_%hd130427130444%_ (##car _%e130426130441%_))
                            (_%tl130428130446%_ (##cdr _%e130426130441%_)))
                        (let ((_%id130449%_ _%hd130427130444%_))
                          (if (gx#stx-pair? _%tl130428130446%_)
                              (let ((_%e130429130451%_
                                     (gx#syntax-e _%tl130428130446%_)))
                                (let ((_%hd130430130454%_
                                       (##car _%e130429130451%_))
                                      (_%tl130431130456%_
                                       (##cdr _%e130429130451%_)))
                                  (let ((_%eid130459%_ _%hd130430130454%_))
                                    (if (gx#stx-null? _%tl130431130456%_)
                                        (if (and (gx#identifier? _%id130449%_)
                                                 (gx#identifier?
                                                  _%eid130459%_))
                                            (_%lp130380%_
                                             _%rest130422%_
                                             _%ns130383%_
                                             (cons (cons _%id130449%_
                                                         (cons _%eid130459%_
                                                               '()))
                                                   _%r130384%_))
                                            (_%E130425130437%_))
                                        (_%E130425130437%_)))))
                              (_%E130425130437%_)))))
                    (_%E130425130437%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E130424130461%_))))))
                                    (_%E130394130408%_))))
                             (_%E130386130497%_
                              (lambda ()
                                (if (gx#stx-pair? _%e130385130400%_)
                                    (let ((_%e130388130469%_
                                           (gx#syntax-e _%e130385130400%_)))
                                      (let ((_%hd130389130472%_
                                             (##car _%e130388130469%_))
                                            (_%tl130390130474%_
                                             (##cdr _%e130388130469%_)))
                                        (if (eq? (gx#stx-e _%hd130389130472%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl130390130474%_)
                                                (let ((_%e130391130477%_
                                                       (gx#syntax-e
                                                        _%tl130390130474%_)))
                                                  (let ((_%hd130392130480%_
                                                         (##car _%e130391130477%_))
                                                        (_%tl130393130482%_
                                                         (##cdr _%e130391130477%_)))
                                                    (let* ((_%ns130485%_
                                                            _%hd130392130480%_)
                                                           (_%rest130487%_
                                                            _%tl130393130482%_)
                                                           (_%ns130495%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns130485%_)
                        (symbol->string (gx#stx-e _%ns130485%_))
                        (if (or (gx#stx-string? _%ns130485%_)
                                (gx#stx-false? _%ns130485%_))
                            (gx#stx-e _%ns130485%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx130346%_
                             _%ns130485%_)))))
              (_%lp130380%_ _%rest130487%_ _%ns130495%_ _%r130384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E130387130465%_))
                                            (_%E130387130465%_))))
                                    (_%E130387130465%_)))))
                        (_%E130386130497%_))))))
          (let* ((_%e130349130356%_ _%stx130346%_)
                 (_%E130351130360%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e130349130356%_)))
                 (_%E130350130374%_
                  (lambda ()
                    (if (gx#stx-pair? _%e130349130356%_)
                        (let ((_%e130352130364%_
                               (gx#syntax-e _%e130349130356%_)))
                          (let ((_%hd130353130367%_ (##car _%e130352130364%_))
                                (_%tl130354130369%_ (##cdr _%e130352130364%_)))
                            (let ((_%body130372%_ _%tl130354130369%_))
                              (if (gx#stx-list? _%body130372%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate130348%_ _%body130372%_))
                                  (_%E130351130360%_)))))
                        (_%E130351130360%_)))))
            (_%E130350130374%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx130292%_)
        (let* ((_%e130293130306%_ _%stx130292%_)
               (_%E130295130310%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130293130306%_)))
               (_%E130294130342%_
                (lambda ()
                  (if (gx#stx-pair? _%e130293130306%_)
                      (let ((_%e130296130314%_
                             (gx#syntax-e _%e130293130306%_)))
                        (let ((_%hd130297130317%_ (##car _%e130296130314%_))
                              (_%tl130298130319%_ (##cdr _%e130296130314%_)))
                          (if (gx#stx-pair? _%tl130298130319%_)
                              (let ((_%e130299130322%_
                                     (gx#syntax-e _%tl130298130319%_)))
                                (let ((_%hd130300130325%_
                                       (##car _%e130299130322%_))
                                      (_%tl130301130327%_
                                       (##cdr _%e130299130322%_)))
                                  (let ((_%hd130330%_ _%hd130300130325%_))
                                    (if (gx#stx-pair? _%tl130301130327%_)
                                        (let ((_%e130302130332%_
                                               (gx#syntax-e
                                                _%tl130301130327%_)))
                                          (let ((_%hd130303130335%_
                                                 (##car _%e130302130332%_))
                                                (_%tl130304130337%_
                                                 (##cdr _%e130302130332%_)))
                                            (let ((_%expr130340%_
                                                   _%hd130303130335%_))
                                              (if (gx#stx-null?
                                                   _%tl130304130337%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd130330%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd130330%_)
                          (cons _%expr130340%_ '())))
              (_%E130295130310%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130295130310%_)))))
                                        (_%E130295130310%_)))))
                              (_%E130295130310%_))))
                      (_%E130295130310%_)))))
          (_%E130294130342%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx130238%_)
        (let* ((_%e130239130252%_ _%stx130238%_)
               (_%E130241130256%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130239130252%_)))
               (_%E130240130288%_
                (lambda ()
                  (if (gx#stx-pair? _%e130239130252%_)
                      (let ((_%e130242130260%_
                             (gx#syntax-e _%e130239130252%_)))
                        (let ((_%hd130243130263%_ (##car _%e130242130260%_))
                              (_%tl130244130265%_ (##cdr _%e130242130260%_)))
                          (if (gx#stx-pair? _%tl130244130265%_)
                              (let ((_%e130245130268%_
                                     (gx#syntax-e _%tl130244130265%_)))
                                (let ((_%hd130246130271%_
                                       (##car _%e130245130268%_))
                                      (_%tl130247130273%_
                                       (##cdr _%e130245130268%_)))
                                  (let ((_%hd130276%_ _%hd130246130271%_))
                                    (if (gx#stx-pair? _%tl130247130273%_)
                                        (let ((_%e130248130278%_
                                               (gx#syntax-e
                                                _%tl130247130273%_)))
                                          (let ((_%hd130249130281%_
                                                 (##car _%e130248130278%_))
                                                (_%tl130250130283%_
                                                 (##cdr _%e130248130278%_)))
                                            (let ((_%expr130286%_
                                                   _%hd130249130281%_))
                                              (if (gx#stx-null?
                                                   _%tl130250130283%_)
                                                  (if (gx#identifier?
                                                       _%hd130276%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd130276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr130286%_ '())))
              (_%E130241130256%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130241130256%_)))))
                                        (_%E130241130256%_)))))
                              (_%E130241130256%_))))
                      (_%E130241130256%_)))))
          (_%E130240130288%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx130184%_)
        (let* ((_%e130185130198%_ _%stx130184%_)
               (_%E130187130202%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130185130198%_)))
               (_%E130186130234%_
                (lambda ()
                  (if (gx#stx-pair? _%e130185130198%_)
                      (let ((_%e130188130206%_
                             (gx#syntax-e _%e130185130198%_)))
                        (let ((_%hd130189130209%_ (##car _%e130188130206%_))
                              (_%tl130190130211%_ (##cdr _%e130188130206%_)))
                          (if (gx#stx-pair? _%tl130190130211%_)
                              (let ((_%e130191130214%_
                                     (gx#syntax-e _%tl130190130211%_)))
                                (let ((_%hd130192130217%_
                                       (##car _%e130191130214%_))
                                      (_%tl130193130219%_
                                       (##cdr _%e130191130214%_)))
                                  (let ((_%id130222%_ _%hd130192130217%_))
                                    (if (gx#stx-pair? _%tl130193130219%_)
                                        (let ((_%e130194130224%_
                                               (gx#syntax-e
                                                _%tl130193130219%_)))
                                          (let ((_%hd130195130227%_
                                                 (##car _%e130194130224%_))
                                                (_%tl130196130229%_
                                                 (##cdr _%e130194130224%_)))
                                            (let ((_%alias-id130232%_
                                                   _%hd130195130227%_))
                                              (if (gx#stx-null?
                                                   _%tl130196130229%_)
                                                  (if (and (gx#identifier?
                                                            _%id130222%_)
                                                           (gx#identifier?
                                                            _%alias-id130232%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id130222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id130232%_ '())))
              (_%E130187130202%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130187130202%_)))))
                                        (_%E130187130202%_)))))
                              (_%E130187130202%_))))
                      (_%E130187130202%_)))))
          (_%E130186130234%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx130141%_)
        (let* ((_%e130142130152%_ _%stx130141%_)
               (_%E130144130156%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130142130152%_)))
               (_%E130143130180%_
                (lambda ()
                  (if (gx#stx-pair? _%e130142130152%_)
                      (let ((_%e130145130160%_
                             (gx#syntax-e _%e130142130152%_)))
                        (let ((_%hd130146130163%_ (##car _%e130145130160%_))
                              (_%tl130147130165%_ (##cdr _%e130145130160%_)))
                          (if (gx#stx-pair? _%tl130147130165%_)
                              (let ((_%e130148130168%_
                                     (gx#syntax-e _%tl130147130165%_)))
                                (let ((_%hd130149130171%_
                                       (##car _%e130148130168%_))
                                      (_%tl130150130173%_
                                       (##cdr _%e130148130168%_)))
                                  (let* ((_%hd130176%_ _%hd130149130171%_)
                                         (_%body130178%_ _%tl130150130173%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd130176%_)
                                             (gx#stx-list? _%body130178%_)
                                             (not (gx#stx-null?
                                                   _%body130178%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd130176%_)
                                         _%body130178%_)
                                        (_%E130144130156%_)))))
                              (_%E130144130156%_))))
                      (_%E130144130156%_)))))
          (_%E130143130180%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx130077%_)
        (letrec ((_%generate130079%_
                  (lambda (_%clause130109%_)
                    (let* ((_%e130110130117%_ _%clause130109%_)
                           (_%E130112130121%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx130077%_
                               _%clause130109%_)))
                           (_%E130111130137%_
                            (lambda ()
                              (if (gx#stx-pair? _%e130110130117%_)
                                  (let ((_%e130113130125%_
                                         (gx#syntax-e _%e130110130117%_)))
                                    (let ((_%hd130114130128%_
                                           (##car _%e130113130125%_))
                                          (_%tl130115130130%_
                                           (##cdr _%e130113130125%_)))
                                      (let* ((_%hd130133%_ _%hd130114130128%_)
                                             (_%body130135%_
                                              _%tl130115130130%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd130133%_)
                                                 (gx#stx-list? _%body130135%_)
                                                 (not (gx#stx-null?
                                                       _%body130135%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd130133%_)
                                                   _%body130135%_)
                                             (gx#stx-source _%clause130109%_))
                                            (_%E130112130121%_)))))
                                  (_%E130112130121%_)))))
                      (_%E130111130137%_)))))
          (let* ((_%e130080130087%_ _%stx130077%_)
                 (_%E130082130091%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e130080130087%_)))
                 (_%E130081130105%_
                  (lambda ()
                    (if (gx#stx-pair? _%e130080130087%_)
                        (let ((_%e130083130095%_
                               (gx#syntax-e _%e130080130087%_)))
                          (let ((_%hd130084130098%_ (##car _%e130083130095%_))
                                (_%tl130085130100%_ (##cdr _%e130083130095%_)))
                            (let ((_%clauses130103%_ _%tl130085130100%_))
                              (if (gx#stx-list? _%clauses130103%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate130079%_
                                    _%clauses130103%_))
                                  (_%E130082130091%_)))))
                        (_%E130082130091%_)))))
            (_%E130081130105%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx129978%_ _%form129979%_)
        (letrec ((_%generate129981%_
                  (lambda (_%bind130024%_)
                    (let* ((_%e130025130035%_ _%bind130024%_)
                           (_%E130027130039%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx129978%_
                               _%bind130024%_)))
                           (_%E130026130063%_
                            (lambda ()
                              (if (gx#stx-pair? _%e130025130035%_)
                                  (let ((_%e130028130043%_
                                         (gx#syntax-e _%e130025130035%_)))
                                    (let ((_%hd130029130046%_
                                           (##car _%e130028130043%_))
                                          (_%tl130030130048%_
                                           (##cdr _%e130028130043%_)))
                                      (let ((_%ids130051%_ _%hd130029130046%_))
                                        (if (gx#stx-pair? _%tl130030130048%_)
                                            (let ((_%e130031130053%_
                                                   (gx#syntax-e
                                                    _%tl130030130048%_)))
                                              (let ((_%hd130032130056%_
                                                     (##car _%e130031130053%_))
                                                    (_%tl130033130058%_
                                                     (##cdr _%e130031130053%_)))
                                                (let ((_%expr130061%_
                                                       _%hd130032130056%_))
                                                  (if (gx#stx-null?
                                                       _%tl130033130058%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids130051%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids130051%_)
                        (cons _%expr130061%_ '()))
                  (_%E130027130039%_))
              (_%E130027130039%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E130027130039%_)))))
                                  (_%E130027130039%_)))))
                      (_%E130026130063%_)))))
          (let* ((_%e129982129992%_ _%stx129978%_)
                 (_%E129984129996%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e129982129992%_)))
                 (_%E129983130020%_
                  (lambda ()
                    (if (gx#stx-pair? _%e129982129992%_)
                        (let ((_%e129985130000%_
                               (gx#syntax-e _%e129982129992%_)))
                          (let ((_%hd129986130003%_ (##car _%e129985130000%_))
                                (_%tl129987130005%_ (##cdr _%e129985130000%_)))
                            (if (gx#stx-pair? _%tl129987130005%_)
                                (let ((_%e129988130008%_
                                       (gx#syntax-e _%tl129987130005%_)))
                                  (let ((_%hd129989130011%_
                                         (##car _%e129988130008%_))
                                        (_%tl129990130013%_
                                         (##cdr _%e129988130008%_)))
                                    (let* ((_%hd130016%_ _%hd129989130011%_)
                                           (_%body130018%_ _%tl129990130013%_))
                                      (if (and (gx#stx-list? _%hd130016%_)
                                               (gx#stx-list? _%body130018%_)
                                               (not (gx#stx-null?
                                                     _%body130018%_)))
                                          (gx#core-cons*
                                           _%form129979%_
                                           (gx#stx-map1
                                            _%generate129981%_
                                            _%hd130016%_)
                                           _%body130018%_)
                                          (_%E129984129996%_)))))
                                (_%E129984129996%_))))
                        (_%E129984129996%_)))))
            (_%E129983130020%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx130070%_)
        (let ((_%form130072%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx130070%_ _%form130072%_))))
    (define gx#macro-expand-let-values
      (lambda _g132458_
        (let ((_g132459_ (##length _g132458_)))
          (cond ((##fx= _g132459_ 1)
                 (apply gx#macro-expand-let-values__0 _g132458_))
                ((##fx= _g132459_ 2)
                 (apply gx#macro-expand-let-values__% _g132458_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g132458_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx129975%_)
        (gx#macro-expand-let-values__% _%stx129975%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx129973%_)
        (gx#macro-expand-let-values__% _%stx129973%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx129864%_)
        (let* ((_%e129865129891%_ _%stx129864%_)
               (_%E129877129895%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129865129891%_)))
               (_%E129867129937%_
                (lambda ()
                  (if (gx#stx-pair? _%e129865129891%_)
                      (let ((_%e129878129899%_
                             (gx#syntax-e _%e129865129891%_)))
                        (let ((_%hd129879129902%_ (##car _%e129878129899%_))
                              (_%tl129880129904%_ (##cdr _%e129878129899%_)))
                          (if (gx#stx-pair? _%tl129880129904%_)
                              (let ((_%e129881129907%_
                                     (gx#syntax-e _%tl129880129904%_)))
                                (let ((_%hd129882129910%_
                                       (##car _%e129881129907%_))
                                      (_%tl129883129912%_
                                       (##cdr _%e129881129907%_)))
                                  (let ((_%test129915%_ _%hd129882129910%_))
                                    (if (gx#stx-pair? _%tl129883129912%_)
                                        (let ((_%e129884129917%_
                                               (gx#syntax-e
                                                _%tl129883129912%_)))
                                          (let ((_%hd129885129920%_
                                                 (##car _%e129884129917%_))
                                                (_%tl129886129922%_
                                                 (##cdr _%e129884129917%_)))
                                            (let ((_%K129925%_
                                                   _%hd129885129920%_))
                                              (if (gx#stx-pair?
                                                   _%tl129886129922%_)
                                                  (let ((_%e129887129927%_
                                                         (gx#syntax-e
                                                          _%tl129886129922%_)))
                                                    (let ((_%hd129888129930%_
                                                           (##car _%e129887129927%_))
                                                          (_%tl129889129932%_
                                                           (##cdr _%e129887129927%_)))
                                                      (let ((_%E129935%_
                                                             _%hd129888129930%_))
                                                        (if (gx#stx-null?
                                                             _%tl129889129932%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test129915%_
                                                             _%K129925%_
                                                             _%E129935%_)
                                                            (_%E129877129895%_)))))
                                                  (_%E129877129895%_)))))
                                        (_%E129877129895%_)))))
                              (_%E129877129895%_))))
                      (_%E129877129895%_))))
               (_%E129866129969%_
                (lambda ()
                  (if (gx#stx-pair? _%e129865129891%_)
                      (let ((_%e129868129941%_
                             (gx#syntax-e _%e129865129891%_)))
                        (let ((_%hd129869129944%_ (##car _%e129868129941%_))
                              (_%tl129870129946%_ (##cdr _%e129868129941%_)))
                          (if (gx#stx-pair? _%tl129870129946%_)
                              (let ((_%e129871129949%_
                                     (gx#syntax-e _%tl129870129946%_)))
                                (let ((_%hd129872129952%_
                                       (##car _%e129871129949%_))
                                      (_%tl129873129954%_
                                       (##cdr _%e129871129949%_)))
                                  (let ((_%test129957%_ _%hd129872129952%_))
                                    (if (gx#stx-pair? _%tl129873129954%_)
                                        (let ((_%e129874129959%_
                                               (gx#syntax-e
                                                _%tl129873129954%_)))
                                          (let ((_%hd129875129962%_
                                                 (##car _%e129874129959%_))
                                                (_%tl129876129964%_
                                                 (##cdr _%e129874129959%_)))
                                            (let ((_%K129967%_
                                                   _%hd129875129962%_))
                                              (if (gx#stx-null?
                                                   _%tl129876129964%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test129957%_
                                                   _%K129967%_
                                                   '#!void)
                                                  (_%E129867129937%_)))))
                                        (_%E129867129937%_)))))
                              (_%E129867129937%_))))
                      (_%E129867129937%_)))))
          (_%E129866129969%_))))
    (define gx#free-identifier=?
      (lambda (_%xid129849%_ _%yid129850%_)
        (let ((_%xe129852%_ (gx#resolve-identifier__0 _%xid129849%_))
              (_%ye129853%_ (gx#resolve-identifier__0 _%yid129850%_)))
          (if (and _%xe129852%_ _%ye129853%_)
              (let ((_%$e129856%_ (eq? _%xe129852%_ _%ye129853%_)))
                (if _%$e129856%_
                    _%$e129856%_
                    (if (##structure-instance-of? _%xe129852%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye129853%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe129852%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye129853%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe129852%_ _%ye129853%_)
                  '#f
                  (gx#stx-eq? _%xid129849%_ _%yid129850%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid129830%_ _%yid129831%_)
        (letrec ((_%context129833%_
                  (lambda (_%e129847%_)
                    (if (##structure-direct-instance-of?
                         _%e129847%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e129847%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks129834%_
                  (lambda (_%e129842%_)
                    (if (symbol? _%e129842%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e129842%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e129842%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e129842%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap129835%_
                  (lambda (_%e129840%_)
                    (if (symbol? _%e129840%_)
                        _%e129840%_
                        (gx#syntax-local-unwrap _%e129840%_)))))
          (let ((_%x129837%_ (_%unwrap129835%_ _%xid129830%_))
                (_%y129838%_ (_%unwrap129835%_ _%yid129831%_)))
            (if (gx#stx-eq? _%x129837%_ _%y129838%_)
                (if (eq? (_%context129833%_ _%x129837%_)
                         (_%context129833%_ _%y129838%_))
                    (equal? (_%marks129834%_ _%x129837%_)
                            (_%marks129834%_ _%y129838%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx129828%_)
        (if (gx#identifier? _%stx129828%_)
            (gx#core-identifier=? _%stx129828%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx129826%_)
        (if (gx#identifier? _%stx129826%_)
            (gx#core-identifier=? _%stx129826%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx129769%_ _%where129770%_)
        (let _%lp129772%_ ((_%rest129774%_ (gx#syntax->list _%stx129769%_)))
          (let* ((_%rest129775129783%_ _%rest129774%_)
                 (_%else129777129791%_ (lambda () '#t))
                 (_%K129779129804%_
                  (lambda (_%rest129794%_ _%hd129795%_)
                    (if (gx#identifier? _%hd129795%_)
                        (if (__find (lambda (_%g129797129799%_)
                                      (gx#bound-identifier=?
                                       _%g129797129799%_
                                       _%hd129795%_))
                                    _%rest129794%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where129770%_
                             _%hd129795%_)
                            (_%lp129772%_ _%rest129794%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where129770%_
                         _%hd129795%_)))))
            (if (pair? _%rest129775129783%_)
                (let ((_%hd129780129807%_ (##car _%rest129775129783%_))
                      (_%tl129781129809%_ (##cdr _%rest129775129783%_)))
                  (let* ((_%hd129812%_ _%hd129780129807%_)
                         (_%rest129814%_ _%tl129781129809%_))
                    (_%K129779129804%_ _%rest129814%_ _%hd129812%_)))
                (_%else129777129791%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx129819%_)
        (let ((_%where129821%_ _%stx129819%_))
          (gx#check-duplicate-identifiers__% _%stx129819%_ _%where129821%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g132460_
        (let ((_g132461_ (##length _g132460_)))
          (cond ((##fx= _g132461_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g132460_))
                ((##fx= _g132461_ 2)
                 (apply gx#check-duplicate-identifiers__% _g132460_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g132460_))))))
    (define gx#core-bind-values?
      (lambda (_%stx129761%_)
        (gx#stx-andmap
         (lambda (_%x129763%_)
           (let ((_%$e129765%_ (gx#identifier? _%x129763%_)))
             (if _%$e129765%_ _%$e129765%_ (gx#stx-false? _%x129763%_))))
         _%stx129761%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx129725%_ _%rebind?129726%_ _%phi129727%_ _%ctx129728%_)
        (gx#stx-for-each1
         (lambda (_%id129730%_)
           (if (gx#identifier? _%id129730%_)
               (gx#core-bind-runtime!__%
                _%id129730%_
                _%rebind?129726%_
                _%phi129727%_
                _%ctx129728%_)
               '#!void))
         _%stx129725%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx129735%_)
        (let* ((_%rebind?129737%_ '#f)
               (_%phi129739%_ (gx#current-expander-phi))
               (_%ctx129741%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx129735%_
           _%rebind?129737%_
           _%phi129739%_
           _%ctx129741%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx129743%_ _%rebind?129744%_)
        (let* ((_%phi129746%_ (gx#current-expander-phi))
               (_%ctx129748%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx129743%_
           _%rebind?129744%_
           _%phi129746%_
           _%ctx129748%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx129750%_ _%rebind?129751%_ _%phi129752%_)
        (let ((_%ctx129754%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx129750%_
           _%rebind?129751%_
           _%phi129752%_
           _%ctx129754%_))))
    (define gx#core-bind-values!
      (lambda _g132462_
        (let ((_g132463_ (##length _g132462_)))
          (cond ((##fx= _g132463_ 1) (apply gx#core-bind-values!__0 _g132462_))
                ((##fx= _g132463_ 2) (apply gx#core-bind-values!__1 _g132462_))
                ((##fx= _g132463_ 3) (apply gx#core-bind-values!__2 _g132462_))
                ((##fx= _g132463_ 4) (apply gx#core-bind-values!__% _g132462_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g132462_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx129720%_)
        (gx#stx-map1
         (lambda (_%x129722%_)
           (if (gx#identifier? _%x129722%_)
               (gx#core-quote-syntax__0 _%x129722%_)
               '#f))
         _%stx129720%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx129713%_)
        (if (gx#identifier? _%stx129713%_)
            (let* ((_%bind129715%_ (gx#resolve-identifier__0 _%stx129713%_))
                   (_%$e129717%_ (not _%bind129715%_)))
              (if _%$e129717%_
                  _%$e129717%_
                  (##structure-instance-of?
                   _%bind129715%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id129702%_ _%form129703%_)
        (let ((_%bind129705%_ (gx#resolve-identifier__0 _%id129702%_)))
          (if (##structure-instance-of? _%bind129705%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id129702%_)
              (if (not _%bind129705%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id129702%_)))
                      (gx#core-quote-syntax__0 _%id129702%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form129703%_
                       _%id129702%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form129703%_
                   _%id129702%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id129657%_ _%rebind?129658%_ _%phi129659%_ _%ctx129660%_)
        (let* ((_%key129662%_ (gx#core-identifier-key _%id129657%_))
               (_%eid129664%_
                (gx#make-binding-id__%
                 _%key129662%_
                 '#f
                 _%phi129659%_
                 _%ctx129660%_))
               (_%bind129670%_
                (if (##structure-instance-of?
                     _%ctx129660%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid129664%_
                     _%key129662%_
                     _%phi129659%_
                     _%ctx129660%_)
                    (if (##structure-instance-of?
                         _%ctx129660%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid129664%_
                         _%key129662%_
                         _%phi129659%_)
                        (if (##structure-instance-of?
                             _%ctx129660%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid129664%_
                             _%key129662%_
                             _%phi129659%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid129664%_
                             _%key129662%_
                             _%phi129659%_))))))
          (gx#bind-identifier!__%
           _%id129657%_
           _%bind129670%_
           _%rebind?129658%_
           _%phi129659%_
           _%ctx129660%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id129676%_)
        (let* ((_%rebind?129678%_ '#f)
               (_%phi129680%_ (gx#current-expander-phi))
               (_%ctx129682%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id129676%_
           _%rebind?129678%_
           _%phi129680%_
           _%ctx129682%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id129684%_ _%rebind?129685%_)
        (let* ((_%phi129687%_ (gx#current-expander-phi))
               (_%ctx129689%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id129684%_
           _%rebind?129685%_
           _%phi129687%_
           _%ctx129689%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id129691%_ _%rebind?129692%_ _%phi129693%_)
        (let ((_%ctx129695%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id129691%_
           _%rebind?129692%_
           _%phi129693%_
           _%ctx129695%_))))
    (define gx#core-bind-runtime!
      (lambda _g132464_
        (let ((_g132465_ (##length _g132464_)))
          (cond ((##fx= _g132465_ 1)
                 (apply gx#core-bind-runtime!__0 _g132464_))
                ((##fx= _g132465_ 2)
                 (apply gx#core-bind-runtime!__1 _g132464_))
                ((##fx= _g132465_ 3)
                 (apply gx#core-bind-runtime!__2 _g132464_))
                ((##fx= _g132465_ 4)
                 (apply gx#core-bind-runtime!__% _g132464_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g132464_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id129609%_
               _%eid129610%_
               _%rebind?129611%_
               _%phi129612%_
               _%ctx129613%_)
        (let* ((_%key129615%_ (gx#core-identifier-key _%id129609%_))
               (_%bind129620%_
                (if (##structure-instance-of?
                     _%ctx129613%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid129610%_
                     _%key129615%_
                     _%phi129612%_
                     _%ctx129613%_)
                    (if (##structure-instance-of?
                         _%ctx129613%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid129610%_
                         _%key129615%_
                         _%phi129612%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid129610%_
                         _%key129615%_
                         _%phi129612%_)))))
          (gx#bind-identifier!__%
           _%id129609%_
           _%bind129620%_
           _%rebind?129611%_
           _%phi129612%_
           _%ctx129613%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id129626%_ _%eid129627%_)
        (let* ((_%rebind?129629%_ '#f)
               (_%phi129631%_ (gx#current-expander-phi))
               (_%ctx129633%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id129626%_
           _%eid129627%_
           _%rebind?129629%_
           _%phi129631%_
           _%ctx129633%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id129635%_ _%eid129636%_ _%rebind?129637%_)
        (let* ((_%phi129639%_ (gx#current-expander-phi))
               (_%ctx129641%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id129635%_
           _%eid129636%_
           _%rebind?129637%_
           _%phi129639%_
           _%ctx129641%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id129643%_ _%eid129644%_ _%rebind?129645%_ _%phi129646%_)
        (let ((_%ctx129648%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id129643%_
           _%eid129644%_
           _%rebind?129645%_
           _%phi129646%_
           _%ctx129648%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g132466_
        (let ((_g132467_ (##length _g132466_)))
          (cond ((##fx= _g132467_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g132466_))
                ((##fx= _g132467_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g132466_))
                ((##fx= _g132467_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g132466_))
                ((##fx= _g132467_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g132466_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g132466_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id129569%_
               _%eid129570%_
               _%rebind?129571%_
               _%phi129572%_
               _%ctx129573%_)
        (gx#bind-identifier!__%
         _%id129569%_
         (##structure
          gx#extern-binding::t
          _%eid129570%_
          (gx#core-identifier-key _%id129569%_)
          _%phi129572%_)
         _%rebind?129571%_
         _%phi129572%_
         _%ctx129573%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id129578%_ _%eid129579%_)
        (let* ((_%rebind?129581%_ '#f)
               (_%phi129583%_ (gx#current-expander-phi))
               (_%ctx129585%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id129578%_
           _%eid129579%_
           _%rebind?129581%_
           _%phi129583%_
           _%ctx129585%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id129587%_ _%eid129588%_ _%rebind?129589%_)
        (let* ((_%phi129591%_ (gx#current-expander-phi))
               (_%ctx129593%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id129587%_
           _%eid129588%_
           _%rebind?129589%_
           _%phi129591%_
           _%ctx129593%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id129595%_ _%eid129596%_ _%rebind?129597%_ _%phi129598%_)
        (let ((_%ctx129600%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id129595%_
           _%eid129596%_
           _%rebind?129597%_
           _%phi129598%_
           _%ctx129600%_))))
    (define gx#core-bind-extern!
      (lambda _g132468_
        (let ((_g132469_ (##length _g132468_)))
          (cond ((##fx= _g132469_ 2) (apply gx#core-bind-extern!__0 _g132468_))
                ((##fx= _g132469_ 3) (apply gx#core-bind-extern!__1 _g132468_))
                ((##fx= _g132469_ 4) (apply gx#core-bind-extern!__2 _g132468_))
                ((##fx= _g132469_ 5) (apply gx#core-bind-extern!__% _g132468_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g132468_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id129523%_
               _%e129524%_
               _%rebind?129525%_
               _%phi129526%_
               _%ctx129527%_)
        (gx#bind-identifier!__%
         _%id129523%_
         (let ((_%key129532%_ (gx#core-identifier-key _%id129523%_))
               (_%e129533%_
                (if (or (##structure-instance-of? _%e129524%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e129524%_
                         'gx#expander-context::t))
                    _%e129524%_
                    (##structure
                     gx#user-expander::t
                     _%e129524%_
                     _%ctx129527%_
                     _%phi129526%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key129532%_
             '#t
             _%phi129526%_
             _%ctx129527%_)
            _%key129532%_
            _%phi129526%_
            _%e129533%_))
         _%rebind?129525%_
         _%phi129526%_
         _%ctx129527%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id129538%_ _%e129539%_)
        (let* ((_%rebind?129541%_ '#f)
               (_%phi129543%_ (gx#current-expander-phi))
               (_%ctx129545%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id129538%_
           _%e129539%_
           _%rebind?129541%_
           _%phi129543%_
           _%ctx129545%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id129547%_ _%e129548%_ _%rebind?129549%_)
        (let* ((_%phi129551%_ (gx#current-expander-phi))
               (_%ctx129553%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id129547%_
           _%e129548%_
           _%rebind?129549%_
           _%phi129551%_
           _%ctx129553%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id129555%_ _%e129556%_ _%rebind?129557%_ _%phi129558%_)
        (let ((_%ctx129560%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id129555%_
           _%e129556%_
           _%rebind?129557%_
           _%phi129558%_
           _%ctx129560%_))))
    (define gx#core-bind-syntax!
      (lambda _g132470_
        (let ((_g132471_ (##length _g132470_)))
          (cond ((##fx= _g132471_ 2) (apply gx#core-bind-syntax!__0 _g132470_))
                ((##fx= _g132471_ 3) (apply gx#core-bind-syntax!__1 _g132470_))
                ((##fx= _g132471_ 4) (apply gx#core-bind-syntax!__2 _g132470_))
                ((##fx= _g132471_ 5) (apply gx#core-bind-syntax!__% _g132470_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g132470_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id129506%_ _%e129507%_ _%rebind?129508%_)
        (gx#core-bind-syntax!__%
         _%id129506%_
         _%e129507%_
         _%rebind?129508%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id129513%_ _%e129514%_)
        (let ((_%rebind?129516%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id129513%_
           _%e129514%_
           _%rebind?129516%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g132472_
        (let ((_g132473_ (##length _g132472_)))
          (cond ((##fx= _g132473_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g132472_))
                ((##fx= _g132473_ 3)
                 (apply gx#core-bind-root-syntax!__% _g132472_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g132472_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id129464%_
               _%alias-id129465%_
               _%rebind?129466%_
               _%phi129467%_
               _%ctx129468%_)
        (gx#bind-identifier!__%
         _%id129464%_
         (let ((_%key129470%_ (gx#core-identifier-key _%id129464%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key129470%_
             '#t
             _%phi129467%_
             _%ctx129468%_)
            _%key129470%_
            _%phi129467%_
            _%alias-id129465%_))
         _%rebind?129466%_
         _%phi129467%_
         _%ctx129468%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id129475%_ _%alias-id129476%_)
        (let* ((_%rebind?129478%_ '#f)
               (_%phi129480%_ (gx#current-expander-phi))
               (_%ctx129482%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id129475%_
           _%alias-id129476%_
           _%rebind?129478%_
           _%phi129480%_
           _%ctx129482%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id129484%_ _%alias-id129485%_ _%rebind?129486%_)
        (let* ((_%phi129488%_ (gx#current-expander-phi))
               (_%ctx129490%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id129484%_
           _%alias-id129485%_
           _%rebind?129486%_
           _%phi129488%_
           _%ctx129490%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id129492%_ _%alias-id129493%_ _%rebind?129494%_ _%phi129495%_)
        (let ((_%ctx129497%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id129492%_
           _%alias-id129493%_
           _%rebind?129494%_
           _%phi129495%_
           _%ctx129497%_))))
    (define gx#core-bind-alias!
      (lambda _g132474_
        (let ((_g132475_ (##length _g132474_)))
          (cond ((##fx= _g132475_ 2) (apply gx#core-bind-alias!__0 _g132474_))
                ((##fx= _g132475_ 3) (apply gx#core-bind-alias!__1 _g132474_))
                ((##fx= _g132475_ 4) (apply gx#core-bind-alias!__2 _g132474_))
                ((##fx= _g132475_ 5) (apply gx#core-bind-alias!__% _g132474_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g132474_))))))
    (define gx#make-binding-id__%
      (lambda (_%key129414%_ _%syntax?129415%_ _%phi129416%_ _%ctx129417%_)
        (if (uninterned-symbol? _%key129414%_)
            (##gensym 'L)
            (if (pair? _%key129414%_)
                (gensym (##car _%key129414%_))
                (if (##structure-instance-of? _%ctx129417%_ 'gx#top-context::t)
                    (let ((_%ns129422%_
                           (gx#core-context-namespace__% _%ctx129417%_)))
                      (if (and (fxzero? _%phi129416%_) (not _%syntax?129415%_))
                          (if _%ns129422%_
                              (make-symbol__1 _%ns129422%_ '"#" _%key129414%_)
                              _%key129414%_)
                          (if _%syntax?129415%_
                              (make-symbol__1
                               (let ((_%$e129426%_ _%ns129422%_))
                                 (if _%$e129426%_ _%$e129426%_ '""))
                               '"[:"
                               (number->string _%phi129416%_)
                               '":]#"
                               _%key129414%_)
                              (make-symbol__1
                               (let ((_%$e129430%_ _%ns129422%_))
                                 (if _%$e129430%_ _%$e129430%_ '""))
                               '"["
                               (number->string _%phi129416%_)
                               '"]#"
                               _%key129414%_))))
                    (gensym _%key129414%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key129437%_)
        (let* ((_%syntax?129439%_ '#f)
               (_%phi129441%_ (gx#current-expander-phi))
               (_%ctx129443%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key129437%_
           _%syntax?129439%_
           _%phi129441%_
           _%ctx129443%_))))
    (define gx#make-binding-id__1
      (lambda (_%key129445%_ _%syntax?129446%_)
        (let* ((_%phi129448%_ (gx#current-expander-phi))
               (_%ctx129450%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key129445%_
           _%syntax?129446%_
           _%phi129448%_
           _%ctx129450%_))))
    (define gx#make-binding-id__2
      (lambda (_%key129452%_ _%syntax?129453%_ _%phi129454%_)
        (let ((_%ctx129456%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key129452%_
           _%syntax?129453%_
           _%phi129454%_
           _%ctx129456%_))))
    (define gx#make-binding-id
      (lambda _g132476_
        (let ((_g132477_ (##length _g132476_)))
          (cond ((##fx= _g132477_ 1) (apply gx#make-binding-id__0 _g132476_))
                ((##fx= _g132477_ 2) (apply gx#make-binding-id__1 _g132476_))
                ((##fx= _g132477_ 3) (apply gx#make-binding-id__2 _g132476_))
                ((##fx= _g132477_ 4) (apply gx#make-binding-id__% _g132476_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g132476_))))))))
