(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1734131747)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx125441%_)
        (letrec ((_%expand-special125443%_
                  (lambda (_%hd125445%_ _%K125446%_ _%rest125447%_ _%r125448%_)
                    (_%K125446%_
                     _%rest125447%_
                     (cons (gx#core-expand-top _%hd125445%_) _%r125448%_)))))
          (gx#core-expand-block__0 _%stx125441%_ _%expand-special125443%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx125194%_)
        (letrec ((_%expand-special125196%_
                  (lambda (_%hd125316%_ _%K125317%_ _%rest125318%_ _%r125319%_)
                    (let* ((_%K125323%_
                            (lambda (_%e125321%_)
                              (_%K125317%_
                               _%rest125318%_
                               (cons _%e125321%_ _%r125319%_))))
                           (_%e125324125353%_ _%hd125316%_)
                           (_%E125348125357%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e125324125353%_)))
                           (_%E125344125369%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125324125353%_)
                                  (let ((_%e125349125361%_
                                         (gx#syntax-e _%e125324125353%_)))
                                    (let ((_%hd125350125364%_
                                           (##car _%e125349125361%_))
                                          (_%tl125351125366%_
                                           (##cdr _%e125349125361%_)))
                                      (if (and (gx#identifier?
                                                _%hd125350125364%_)
                                               (gx#core-identifier=?
                                                _%hd125350125364%_
                                                '%#define-runtime))
                                          (_%K125323%_
                                           (gx#core-expand-define-runtime%
                                            _%hd125316%_))
                                          (_%E125348125357%_))))
                                  (_%E125348125357%_))))
                           (_%E125340125381%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125324125353%_)
                                  (let ((_%e125345125373%_
                                         (gx#syntax-e _%e125324125353%_)))
                                    (let ((_%hd125346125376%_
                                           (##car _%e125345125373%_))
                                          (_%tl125347125378%_
                                           (##cdr _%e125345125373%_)))
                                      (if (and (gx#identifier?
                                                _%hd125346125376%_)
                                               (gx#core-identifier=?
                                                _%hd125346125376%_
                                                '%#define-alias))
                                          (_%K125323%_
                                           (gx#core-expand-define-alias%
                                            _%hd125316%_))
                                          (_%E125344125369%_))))
                                  (_%E125344125369%_))))
                           (_%E125330125393%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125324125353%_)
                                  (let ((_%e125341125385%_
                                         (gx#syntax-e _%e125324125353%_)))
                                    (let ((_%hd125342125388%_
                                           (##car _%e125341125385%_))
                                          (_%tl125343125390%_
                                           (##cdr _%e125341125385%_)))
                                      (if (and (gx#identifier?
                                                _%hd125342125388%_)
                                               (gx#core-identifier=?
                                                _%hd125342125388%_
                                                '%#define-syntax))
                                          (_%K125323%_
                                           (gx#core-expand-define-syntax%
                                            _%hd125316%_))
                                          (_%E125340125381%_))))
                                  (_%E125340125381%_))))
                           (_%E125326125425%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125324125353%_)
                                  (let ((_%e125331125397%_
                                         (gx#syntax-e _%e125324125353%_)))
                                    (let ((_%hd125332125400%_
                                           (##car _%e125331125397%_))
                                          (_%tl125333125402%_
                                           (##cdr _%e125331125397%_)))
                                      (if (and (gx#identifier?
                                                _%hd125332125400%_)
                                               (gx#core-identifier=?
                                                _%hd125332125400%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl125333125402%_)
                                              (let ((_%e125334125405%_
                                                     (gx#syntax-e
                                                      _%tl125333125402%_)))
                                                (let ((_%hd125335125408%_
                                                       (##car _%e125334125405%_))
                                                      (_%tl125336125410%_
                                                       (##cdr _%e125334125405%_)))
                                                  (let ((_%hd-bind125413%_
                                                         _%hd125335125408%_))
                                                    (if (gx#stx-pair?
                                                         _%tl125336125410%_)
                                                        (let ((_%e125337125415%_
                                                               (gx#syntax-e
                                                                _%tl125336125410%_)))
                                                          (let ((_%hd125338125418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e125337125415%_))
                        (_%tl125339125420%_ (##cdr _%e125337125415%_)))
                    (let ((_%expr125423%_ _%hd125338125418%_))
                      (if (gx#stx-null? _%tl125339125420%_)
                          (if (gx#core-bind-values? _%hd-bind125413%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind125413%_)
                                (_%K125323%_ _%hd125316%_))
                              (_%E125330125393%_))
                          (_%E125330125393%_)))))
                (_%E125330125393%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125330125393%_))
                                          (_%E125330125393%_))))
                                  (_%E125330125393%_))))
                           (_%E125325125437%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125324125353%_)
                                  (let ((_%e125327125429%_
                                         (gx#syntax-e _%e125324125353%_)))
                                    (let ((_%hd125328125432%_
                                           (##car _%e125327125429%_))
                                          (_%tl125329125434%_
                                           (##cdr _%e125327125429%_)))
                                      (if (and (gx#identifier?
                                                _%hd125328125432%_)
                                               (gx#core-identifier=?
                                                _%hd125328125432%_
                                                '%#begin-syntax))
                                          (_%K125323%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd125316%_))
                                          (_%E125326125425%_))))
                                  (_%E125326125425%_)))))
                      (_%E125325125437%_))))
                 (_%eval-body125197%_
                  (lambda (_%rbody125205%_)
                    (let _%lp125207%_ ((_%rest125209%_ _%rbody125205%_)
                                       (_%body125210%_ '())
                                       (_%ebody125211%_ '()))
                      (let* ((_%rest125212125220%_ _%rest125209%_)
                             (_%else125214125228%_
                              (lambda ()
                                (values _%body125210%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody125211%_)
                                          (gx#stx-source _%stx125194%_))))))
                             (_%K125216125304%_
                              (lambda (_%rest125231%_ _%hd125232%_)
                                (let* ((_%e125233125250%_ _%hd125232%_)
                                       (_%E125245125254%_
                                        (lambda ()
                                          (_%lp125207%_
                                           _%rest125231%_
                                           (cons _%hd125232%_ _%body125210%_)
                                           (cons _%hd125232%_
                                                 _%ebody125211%_))))
                                       (_%E125235125266%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e125233125250%_)
                                              (let ((_%e125246125258%_
                                                     (gx#syntax-e
                                                      _%e125233125250%_)))
                                                (let ((_%hd125247125261%_
                                                       (##car _%e125246125258%_))
                                                      (_%tl125248125263%_
                                                       (##cdr _%e125246125258%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd125247125261%_)
                                                           (gx#core-identifier=?
                                                            _%hd125247125261%_
                                                            '%#begin-syntax))
                                                      (_%lp125207%_
                                                       _%rest125231%_
                                                       (cons _%hd125232%_
                                                             _%body125210%_)
                                                       _%ebody125211%_)
                                                      (_%E125245125254%_))))
                                              (_%E125245125254%_))))
                                       (_%E125234125300%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e125233125250%_)
                                              (let ((_%e125236125270%_
                                                     (gx#syntax-e
                                                      _%e125233125250%_)))
                                                (let ((_%hd125237125273%_
                                                       (##car _%e125236125270%_))
                                                      (_%tl125238125275%_
                                                       (##cdr _%e125236125270%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd125237125273%_)
                                                           (gx#core-identifier=?
                                                            _%hd125237125273%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl125238125275%_)
                                                          (let ((_%e125239125278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl125238125275%_)))
                    (let ((_%hd125240125281%_ (##car _%e125239125278%_))
                          (_%tl125241125283%_ (##cdr _%e125239125278%_)))
                      (let ((_%hd-bind125286%_ _%hd125240125281%_))
                        (if (gx#stx-pair? _%tl125241125283%_)
                            (let ((_%e125242125288%_
                                   (gx#syntax-e _%tl125241125283%_)))
                              (let ((_%hd125243125291%_
                                     (##car _%e125242125288%_))
                                    (_%tl125244125293%_
                                     (##cdr _%e125242125288%_)))
                                (let ((_%expr125296%_ _%hd125243125291%_))
                                  (if (gx#stx-null? _%tl125244125293%_)
                                      (let ((_%ehd125298%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind125286%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr125296%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd125232%_))))
                                        (_%lp125207%_
                                         _%rest125231%_
                                         (cons _%ehd125298%_ _%body125210%_)
                                         (cons _%ehd125298%_ _%ebody125211%_)))
                                      (_%E125235125266%_)))))
                            (_%E125235125266%_)))))
                  (_%E125235125266%_))
              (_%E125235125266%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125235125266%_)))))
                                  (_%E125234125300%_)))))
                        (if (pair? _%rest125212125220%_)
                            (let ((_%hd125217125307%_
                                   (##car _%rest125212125220%_))
                                  (_%tl125218125309%_
                                   (##cdr _%rest125212125220%_)))
                              (let* ((_%hd125312%_ _%hd125217125307%_)
                                     (_%rest125314%_ _%tl125218125309%_))
                                (_%K125216125304%_
                                 _%rest125314%_
                                 _%hd125312%_)))
                            (_%else125214125228%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody125200%_
                     (gx#core-expand-block__1
                      _%stx125194%_
                      _%expand-special125196%_
                      '#f))
                    (_g125464_ (_%eval-body125197%_ _%rbody125200%_)))
               (begin
                 (let ((_g125465_
                        (if (##values? _g125464_)
                            (##values-length _g125464_)
                            1)))
                   (if (not (##fx= _g125465_ 2))
                       (error "Context expects 2 values" _g125465_)))
                 (let ((_%expanded-body125202%_ (##values-ref _g125464_ 0))
                       (_%value125203%_ (##values-ref _g125464_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body125202%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value125203%_ '())))
                    (gx#stx-source _%stx125194%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx125164%_)
        (let* ((_%e125165125172%_ _%stx125164%_)
               (_%E125167125176%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125165125172%_)))
               (_%E125166125190%_
                (lambda ()
                  (if (gx#stx-pair? _%e125165125172%_)
                      (let ((_%e125168125180%_
                             (gx#syntax-e _%e125165125172%_)))
                        (let ((_%hd125169125183%_ (##car _%e125168125180%_))
                              (_%tl125170125185%_ (##cdr _%e125168125180%_)))
                          (let ((_%body125188%_ _%tl125170125185%_))
                            (if (gx#stx-list? _%body125188%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body125188%_)
                                 (gx#stx-source _%stx125164%_))
                                (_%E125167125176%_)))))
                      (_%E125167125176%_)))))
          (_%E125166125190%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx125162%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx125162%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx125108%_)
        (let* ((_%e125109125122%_ _%stx125108%_)
               (_%E125111125126%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125109125122%_)))
               (_%E125110125158%_
                (lambda ()
                  (if (gx#stx-pair? _%e125109125122%_)
                      (let ((_%e125112125130%_
                             (gx#syntax-e _%e125109125122%_)))
                        (let ((_%hd125113125133%_ (##car _%e125112125130%_))
                              (_%tl125114125135%_ (##cdr _%e125112125130%_)))
                          (if (gx#stx-pair? _%tl125114125135%_)
                              (let ((_%e125115125138%_
                                     (gx#syntax-e _%tl125114125135%_)))
                                (let ((_%hd125116125141%_
                                       (##car _%e125115125138%_))
                                      (_%tl125117125143%_
                                       (##cdr _%e125115125138%_)))
                                  (let ((_%ann125146%_ _%hd125116125141%_))
                                    (if (gx#stx-pair? _%tl125117125143%_)
                                        (let ((_%e125118125148%_
                                               (gx#syntax-e
                                                _%tl125117125143%_)))
                                          (let ((_%hd125119125151%_
                                                 (##car _%e125118125148%_))
                                                (_%tl125120125153%_
                                                 (##cdr _%e125118125148%_)))
                                            (let ((_%expr125156%_
                                                   _%hd125119125151%_))
                                              (if (gx#stx-null?
                                                   _%tl125120125153%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann125146%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr125156%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx125108%_))
                                                  (_%E125111125126%_)))))
                                        (_%E125111125126%_)))))
                              (_%E125111125126%_))))
                      (_%E125111125126%_)))))
          (_%E125110125158%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx124832%_ _%body124833%_)
        (letrec ((_%expand-special124835%_
                  (lambda (_%hd125103%_ _%K125104%_ _%rest125105%_ _%r125106%_)
                    (_%K125104%_
                     '()
                     (cons (_%expand-internal124836%_
                            _%hd125103%_
                            _%rest125105%_)
                           _%r125106%_))))
                 (_%expand-internal124836%_
                  (lambda (_%hd125099%_ _%rest125100%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal124838%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd125099%_ _%rest125100%_))
                          (gx#stx-source _%stx124832%_))
                         _%expand-internal-special124837%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj125458
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj125458)
                       __obj125458))))
                 (_%expand-internal-special124837%_
                  (lambda (_%hd124994%_ _%K124995%_ _%rest124996%_ _%r124997%_)
                    (let* ((_%e124998125023%_ _%hd124994%_)
                           (_%E125018125027%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124998125023%_)))
                           (_%E125014125039%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124998125023%_)
                                  (let ((_%e125019125031%_
                                         (gx#syntax-e _%e124998125023%_)))
                                    (let ((_%hd125020125034%_
                                           (##car _%e125019125031%_))
                                          (_%tl125021125036%_
                                           (##cdr _%e125019125031%_)))
                                      (if (and (gx#identifier?
                                                _%hd125020125034%_)
                                               (gx#core-identifier=?
                                                _%hd125020125034%_
                                                '%#declare))
                                          (_%K124995%_
                                           _%rest124996%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd124994%_)
                                                 _%r124997%_))
                                          (_%E125018125027%_))))
                                  (_%E125018125027%_))))
                           (_%E125010125051%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124998125023%_)
                                  (let ((_%e125015125043%_
                                         (gx#syntax-e _%e124998125023%_)))
                                    (let ((_%hd125016125046%_
                                           (##car _%e125015125043%_))
                                          (_%tl125017125048%_
                                           (##cdr _%e125015125043%_)))
                                      (if (and (gx#identifier?
                                                _%hd125016125046%_)
                                               (gx#core-identifier=?
                                                _%hd125016125046%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd124994%_)
                                            (_%K124995%_
                                             _%rest124996%_
                                             _%r124997%_))
                                          (_%E125014125039%_))))
                                  (_%E125014125039%_))))
                           (_%E125000125063%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124998125023%_)
                                  (let ((_%e125011125055%_
                                         (gx#syntax-e _%e124998125023%_)))
                                    (let ((_%hd125012125058%_
                                           (##car _%e125011125055%_))
                                          (_%tl125013125060%_
                                           (##cdr _%e125011125055%_)))
                                      (if (and (gx#identifier?
                                                _%hd125012125058%_)
                                               (gx#core-identifier=?
                                                _%hd125012125058%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd124994%_)
                                            (_%K124995%_
                                             _%rest124996%_
                                             _%r124997%_))
                                          (_%E125010125051%_))))
                                  (_%E125010125051%_))))
                           (_%E124999125095%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124998125023%_)
                                  (let ((_%e125001125067%_
                                         (gx#syntax-e _%e124998125023%_)))
                                    (let ((_%hd125002125070%_
                                           (##car _%e125001125067%_))
                                          (_%tl125003125072%_
                                           (##cdr _%e125001125067%_)))
                                      (if (and (gx#identifier?
                                                _%hd125002125070%_)
                                               (gx#core-identifier=?
                                                _%hd125002125070%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl125003125072%_)
                                              (let ((_%e125004125075%_
                                                     (gx#syntax-e
                                                      _%tl125003125072%_)))
                                                (let ((_%hd125005125078%_
                                                       (##car _%e125004125075%_))
                                                      (_%tl125006125080%_
                                                       (##cdr _%e125004125075%_)))
                                                  (let ((_%hd-bind125083%_
                                                         _%hd125005125078%_))
                                                    (if (gx#stx-pair?
                                                         _%tl125006125080%_)
                                                        (let ((_%e125007125085%_
                                                               (gx#syntax-e
                                                                _%tl125006125080%_)))
                                                          (let ((_%hd125008125088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e125007125085%_))
                        (_%tl125009125090%_ (##cdr _%e125007125085%_)))
                    (let ((_%expr125093%_ _%hd125008125088%_))
                      (if (gx#stx-null? _%tl125009125090%_)
                          (if (gx#core-bind-values? _%hd-bind125083%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind125083%_)
                                (_%K124995%_
                                 _%rest124996%_
                                 (cons _%hd124994%_ _%r124997%_)))
                              (_%E125000125063%_))
                          (_%E125000125063%_)))))
                (_%E125000125063%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125000125063%_))
                                          (_%E125000125063%_))))
                                  (_%E125000125063%_)))))
                      (_%E124999125095%_))))
                 (_%wrap-internal124838%_
                  (lambda (_%rbody124840%_)
                    (let _%lp124842%_ ((_%rest124844%_ _%rbody124840%_)
                                       (_%decls124845%_ '())
                                       (_%bind124846%_ '())
                                       (_%body124847%_ '()))
                      (let* ((_%e124848124855%_ _%rest124844%_)
                             (_%E124850124904%_
                              (lambda ()
                                (let* ((_%body124899%_
                                        (let* ((_%body124858124868%_
                                                _%body124847%_)
                                               (_%else124861124876%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body124847%_)
                                                   (gx#stx-source
                                                    _%stx124832%_)))))
                                          (let ((_%K124866124896%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx124832%_)))
                                                (_%K124863124882%_
                                                 (lambda (_%expr124880%_)
                                                   _%expr124880%_)))
                                            (let ((_%try-match124860124892%_
                                                   (lambda ()
                                                     (if (pair? _%body124858124868%_)
                                                         (let ((_%tl124865124887%_
                                                                (##cdr _%body124858124868%_))
                                                               (_%hd124864124885%_
                                                                (##car _%body124858124868%_)))
                                                           (if (null? _%tl124865124887%_)
                                                               (let ((_%expr124890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd124864124885%_))
                         (_%K124863124882%_ _%expr124890%_))
                       (_%else124861124876%_)))
                 (_%else124861124876%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body124858124868%_)
                                                  (_%K124866124896%_)
                                                  (_%try-match124860124892%_))))))
                                       (_%body124901%_
                                        (if (null? _%bind124846%_)
                                            _%body124899%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind124846%_
                                                         (cons _%body124899%_
                                                               '())))
                                             (gx#stx-source _%stx124832%_)))))
                                  (if (null? _%decls124845%_)
                                      _%body124901%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls124845%_
                                                   (cons _%body124901%_ '())))
                                       (gx#stx-source _%stx124832%_))))))
                             (_%E124849124990%_
                              (lambda ()
                                (if (gx#stx-pair? _%e124848124855%_)
                                    (let ((_%e124851124908%_
                                           (gx#syntax-e _%e124848124855%_)))
                                      (let ((_%hd124852124911%_
                                             (##car _%e124851124908%_))
                                            (_%tl124853124913%_
                                             (##cdr _%e124851124908%_)))
                                        (let* ((_%hd124916%_
                                                _%hd124852124911%_)
                                               (_%rest124918%_
                                                _%tl124853124913%_)
                                               (_%e124919124936%_ _%hd124916%_)
                                               (_%E124931124940%_
                                                (lambda ()
                                                  (if (null? _%bind124846%_)
                                                      (_%lp124842%_
                                                       _%rest124918%_
                                                       _%decls124845%_
                                                       _%bind124846%_
                                                       (cons _%hd124916%_
                                                             _%body124847%_))
                                                      (_%lp124842%_
                                                       _%rest124918%_
                                                       _%decls124845%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd124916%_ '()))
                     _%bind124846%_)
               _%body124847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E124921124954%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e124919124936%_)
                                                      (let ((_%e124932124944%_
                                                             (gx#syntax-e
                                                              _%e124919124936%_)))
                                                        (let ((_%hd124933124947%_
                                                               (##car _%e124932124944%_))
                                                              (_%tl124934124949%_
                                                               (##cdr _%e124932124944%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd124933124947%_)
                           (gx#core-identifier=?
                            _%hd124933124947%_
                            '%#declare))
                      (let ((_%xdecls124952%_ _%tl124934124949%_))
                        (_%lp124842%_
                         _%rest124918%_
                         (gx#stx-foldr cons _%decls124845%_ _%xdecls124952%_)
                         _%bind124846%_
                         _%body124847%_))
                      (_%E124931124940%_))))
              (_%E124931124940%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E124920124986%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e124919124936%_)
                                                      (let ((_%e124922124958%_
                                                             (gx#syntax-e
                                                              _%e124919124936%_)))
                                                        (let ((_%hd124923124961%_
                                                               (##car _%e124922124958%_))
                                                              (_%tl124924124963%_
                                                               (##cdr _%e124922124958%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd124923124961%_)
                           (gx#core-identifier=?
                            _%hd124923124961%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl124924124963%_)
                          (let ((_%e124925124966%_
                                 (gx#syntax-e _%tl124924124963%_)))
                            (let ((_%hd124926124969%_
                                   (##car _%e124925124966%_))
                                  (_%tl124927124971%_
                                   (##cdr _%e124925124966%_)))
                              (let ((_%hd-bind124974%_ _%hd124926124969%_))
                                (if (gx#stx-pair? _%tl124927124971%_)
                                    (let ((_%e124928124976%_
                                           (gx#syntax-e _%tl124927124971%_)))
                                      (let ((_%hd124929124979%_
                                             (##car _%e124928124976%_))
                                            (_%tl124930124981%_
                                             (##cdr _%e124928124976%_)))
                                        (let ((_%expr124984%_
                                               _%hd124929124979%_))
                                          (if (gx#stx-null? _%tl124930124981%_)
                                              (_%lp124842%_
                                               _%rest124918%_
                                               _%decls124845%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind124974%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr124984%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind124846%_)
                                               _%body124847%_)
                                              (_%E124921124954%_)))))
                                    (_%E124921124954%_)))))
                          (_%E124921124954%_))
                      (_%E124921124954%_))))
              (_%E124921124954%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E124920124986%_))))
                                    (_%E124850124904%_)))))
                        (_%E124849124990%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body124833%_)
            (gx#stx-source _%stx124832%_))
           _%expand-special124835%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx124770%_)
        (let* ((_%e124771124778%_ _%stx124770%_)
               (_%E124773124782%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124771124778%_)))
               (_%E124772124828%_
                (lambda ()
                  (if (gx#stx-pair? _%e124771124778%_)
                      (let ((_%e124774124786%_
                             (gx#syntax-e _%e124771124778%_)))
                        (let ((_%hd124775124789%_ (##car _%e124774124786%_))
                              (_%tl124776124791%_ (##cdr _%e124774124786%_)))
                          (let ((_%body124794%_ _%tl124776124791%_))
                            (if (gx#stx-list? _%body124794%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl124796%_)
                                     (let* ((_%e124797124804%_ _%decl124796%_)
                                            (_%E124799124808%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e124797124804%_)))
                                            (_%E124798124824%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e124797124804%_)
                                                   (let ((_%e124800124812%_
                                                          (gx#syntax-e
                                                           _%e124797124804%_)))
                                                     (let ((_%hd124801124815%_
                                                            (##car _%e124800124812%_))
                                                           (_%tl124802124817%_
                                                            (##cdr _%e124800124812%_)))
                                                       (let* ((_%head124820%_
                                                               _%hd124801124815%_)
                                                              (_%args124822%_
                                                               _%tl124802124817%_))
                                                         (if (gx#stx-list?
                                                              _%args124822%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl124796%_)
                                                             (_%E124799124808%_)))))
                                                   (_%E124799124808%_)))))
                                       (_%E124798124824%_)))
                                   _%body124794%_))
                                 (gx#stx-source _%stx124770%_))
                                (_%E124773124782%_)))))
                      (_%E124773124782%_)))))
          (_%E124772124828%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx124674%_)
        (let* ((_%e124675124682%_ _%stx124674%_)
               (_%E124677124686%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124675124682%_)))
               (_%E124676124766%_
                (lambda ()
                  (if (gx#stx-pair? _%e124675124682%_)
                      (let ((_%e124678124690%_
                             (gx#syntax-e _%e124675124682%_)))
                        (let ((_%hd124679124693%_ (##car _%e124678124690%_))
                              (_%tl124680124695%_ (##cdr _%e124678124690%_)))
                          (let ((_%body124698%_ _%tl124680124695%_))
                            (let _%lp124700%_ ((_%rest124702%_ _%body124698%_)
                                               (_%r124703%_ '()))
                              (let* ((_%e124704124718%_ _%rest124702%_)
                                     (_%E124716124722%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx124674%_)))
                                     (_%E124706124726%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e124704124718%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r124703%_))
                                             (gx#stx-source _%stx124674%_))
                                            (_%E124716124722%_))))
                                     (_%E124705124762%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e124704124718%_)
                                            (let ((_%e124707124730%_
                                                   (gx#syntax-e
                                                    _%e124704124718%_)))
                                              (let ((_%hd124708124733%_
                                                     (##car _%e124707124730%_))
                                                    (_%tl124709124735%_
                                                     (##cdr _%e124707124730%_)))
                                                (if (gx#stx-pair?
                                                     _%hd124708124733%_)
                                                    (let ((_%e124710124738%_
                                                           (gx#syntax-e
                                                            _%hd124708124733%_)))
                                                      (let ((_%hd124711124741%_
                                                             (##car _%e124710124738%_))
                                                            (_%tl124712124743%_
                                                             (##cdr _%e124710124738%_)))
                                                        (let ((_%id124746%_
                                                               _%hd124711124741%_))
                                                          (if (gx#stx-pair?
                                                               _%tl124712124743%_)
                                                              (let ((_%e124713124748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl124712124743%_)))
                        (let ((_%hd124714124751%_ (##car _%e124713124748%_))
                              (_%tl124715124753%_ (##cdr _%e124713124748%_)))
                          (let ((_%eid124756%_ _%hd124714124751%_))
                            (if (gx#stx-null? _%tl124715124753%_)
                                (let ((_%rest124758%_ _%tl124709124735%_))
                                  (if (and (gx#identifier? _%id124746%_)
                                           (gx#identifier? _%eid124756%_))
                                      (let ((_%eid124760%_
                                             (gx#stx-e _%eid124756%_)))
                                        (gx#core-bind-extern!__0
                                         _%id124746%_
                                         _%eid124760%_)
                                        (_%lp124700%_
                                         _%rest124758%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id124746%_)
                                                     (cons _%eid124760%_ '()))
                                               _%r124703%_)))
                                      (_%E124706124726%_)))
                                (_%E124706124726%_)))))
                      (_%E124706124726%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E124706124726%_))))
                                            (_%E124706124726%_)))))
                                (_%E124705124762%_))))))
                      (_%E124677124686%_)))))
          (_%E124676124766%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx124620%_)
        (let* ((_%e124621124634%_ _%stx124620%_)
               (_%E124623124638%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124621124634%_)))
               (_%E124622124670%_
                (lambda ()
                  (if (gx#stx-pair? _%e124621124634%_)
                      (let ((_%e124624124642%_
                             (gx#syntax-e _%e124621124634%_)))
                        (let ((_%hd124625124645%_ (##car _%e124624124642%_))
                              (_%tl124626124647%_ (##cdr _%e124624124642%_)))
                          (if (gx#stx-pair? _%tl124626124647%_)
                              (let ((_%e124627124650%_
                                     (gx#syntax-e _%tl124626124647%_)))
                                (let ((_%hd124628124653%_
                                       (##car _%e124627124650%_))
                                      (_%tl124629124655%_
                                       (##cdr _%e124627124650%_)))
                                  (let ((_%hd124658%_ _%hd124628124653%_))
                                    (if (gx#stx-pair? _%tl124629124655%_)
                                        (let ((_%e124630124660%_
                                               (gx#syntax-e
                                                _%tl124629124655%_)))
                                          (let ((_%hd124631124663%_
                                                 (##car _%e124630124660%_))
                                                (_%tl124632124665%_
                                                 (##cdr _%e124630124660%_)))
                                            (let ((_%expr124668%_
                                                   _%hd124631124663%_))
                                              (if (gx#stx-null?
                                                   _%tl124632124665%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd124658%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd124658%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd124658%_)
                             (cons (gx#core-expand-expression _%expr124668%_)
                                   '())))
                 (gx#stx-source _%stx124620%_)))
              (_%E124623124638%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124623124638%_)))))
                                        (_%E124623124638%_)))))
                              (_%E124623124638%_))))
                      (_%E124623124638%_)))))
          (_%E124622124670%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx124564%_)
        (let* ((_%e124565124578%_ _%stx124564%_)
               (_%E124567124582%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124565124578%_)))
               (_%E124566124616%_
                (lambda ()
                  (if (gx#stx-pair? _%e124565124578%_)
                      (let ((_%e124568124586%_
                             (gx#syntax-e _%e124565124578%_)))
                        (let ((_%hd124569124589%_ (##car _%e124568124586%_))
                              (_%tl124570124591%_ (##cdr _%e124568124586%_)))
                          (if (gx#stx-pair? _%tl124570124591%_)
                              (let ((_%e124571124594%_
                                     (gx#syntax-e _%tl124570124591%_)))
                                (let ((_%hd124572124597%_
                                       (##car _%e124571124594%_))
                                      (_%tl124573124599%_
                                       (##cdr _%e124571124594%_)))
                                  (let ((_%id124602%_ _%hd124572124597%_))
                                    (if (gx#stx-pair? _%tl124573124599%_)
                                        (let ((_%e124574124604%_
                                               (gx#syntax-e
                                                _%tl124573124599%_)))
                                          (let ((_%hd124575124607%_
                                                 (##car _%e124574124604%_))
                                                (_%tl124576124609%_
                                                 (##cdr _%e124574124604%_)))
                                            (let ((_%binding-id124612%_
                                                   _%hd124575124607%_))
                                              (if (gx#stx-null?
                                                   _%tl124576124609%_)
                                                  (if (and (gx#identifier?
                                                            _%id124602%_)
                                                           (gx#identifier?
                                                            _%binding-id124612%_))
                                                      (let ((_%eid124614%_
                                                             (gx#stx-e
                                                              _%binding-id124612%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id124602%_
                                                         _%eid124614%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id124602%_)
                             (cons _%eid124614%_ '())))))
              (_%E124567124582%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124567124582%_)))))
                                        (_%E124567124582%_)))))
                              (_%E124567124582%_))))
                      (_%E124567124582%_)))))
          (_%E124566124616%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx124507%_)
        (let* ((_%e124508124521%_ _%stx124507%_)
               (_%E124510124525%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124508124521%_)))
               (_%E124509124560%_
                (lambda ()
                  (if (gx#stx-pair? _%e124508124521%_)
                      (let ((_%e124511124529%_
                             (gx#syntax-e _%e124508124521%_)))
                        (let ((_%hd124512124532%_ (##car _%e124511124529%_))
                              (_%tl124513124534%_ (##cdr _%e124511124529%_)))
                          (if (gx#stx-pair? _%tl124513124534%_)
                              (let ((_%e124514124537%_
                                     (gx#syntax-e _%tl124513124534%_)))
                                (let ((_%hd124515124540%_
                                       (##car _%e124514124537%_))
                                      (_%tl124516124542%_
                                       (##cdr _%e124514124537%_)))
                                  (let ((_%id124545%_ _%hd124515124540%_))
                                    (if (gx#stx-pair? _%tl124516124542%_)
                                        (let ((_%e124517124547%_
                                               (gx#syntax-e
                                                _%tl124516124542%_)))
                                          (let ((_%hd124518124550%_
                                                 (##car _%e124517124547%_))
                                                (_%tl124519124552%_
                                                 (##cdr _%e124517124547%_)))
                                            (let ((_%expr124555%_
                                                   _%hd124518124550%_))
                                              (if (gx#stx-null?
                                                   _%tl124519124552%_)
                                                  (if (gx#identifier?
                                                       _%id124545%_)
                                                      (let ((_g125466_
                                                             (gx#core-expand-expression+1
                                                              _%expr124555%_)))
                                                        (begin
                                                          (let ((_g125467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g125466_)
                             (##values-length _g125466_)
                             1)))
                    (if (not (##fx= _g125467_ 2))
                        (error "Context expects 2 values" _g125467_)))
                  (let ((_%e-stx124557%_ (##values-ref _g125466_ 0))
                        (_%e124558%_ (##values-ref _g125466_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id124545%_ _%e124558%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id124545%_)
                                   (cons _%e-stx124557%_ '())))
                       (gx#stx-source _%stx124507%_))))))
              (_%E124510124525%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124510124525%_)))))
                                        (_%E124510124525%_)))))
                              (_%E124510124525%_))))
                      (_%E124510124525%_)))))
          (_%E124509124560%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx124451%_)
        (let* ((_%e124452124465%_ _%stx124451%_)
               (_%E124454124469%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124452124465%_)))
               (_%E124453124503%_
                (lambda ()
                  (if (gx#stx-pair? _%e124452124465%_)
                      (let ((_%e124455124473%_
                             (gx#syntax-e _%e124452124465%_)))
                        (let ((_%hd124456124476%_ (##car _%e124455124473%_))
                              (_%tl124457124478%_ (##cdr _%e124455124473%_)))
                          (if (gx#stx-pair? _%tl124457124478%_)
                              (let ((_%e124458124481%_
                                     (gx#syntax-e _%tl124457124478%_)))
                                (let ((_%hd124459124484%_
                                       (##car _%e124458124481%_))
                                      (_%tl124460124486%_
                                       (##cdr _%e124458124481%_)))
                                  (let ((_%id124489%_ _%hd124459124484%_))
                                    (if (gx#stx-pair? _%tl124460124486%_)
                                        (let ((_%e124461124491%_
                                               (gx#syntax-e
                                                _%tl124460124486%_)))
                                          (let ((_%hd124462124494%_
                                                 (##car _%e124461124491%_))
                                                (_%tl124463124496%_
                                                 (##cdr _%e124461124491%_)))
                                            (let ((_%alias-id124499%_
                                                   _%hd124462124494%_))
                                              (if (gx#stx-null?
                                                   _%tl124463124496%_)
                                                  (if (and (gx#identifier?
                                                            _%id124489%_)
                                                           (gx#identifier?
                                                            _%alias-id124499%_))
                                                      (let ((_%alias-id124501%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id124499%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id124489%_
                                                         _%alias-id124501%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id124489%_)
                             (cons _%alias-id124501%_ '())))))
              (_%E124454124469%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124454124469%_)))))
                                        (_%E124454124469%_)))))
                              (_%E124454124469%_))))
                      (_%E124454124469%_)))))
          (_%E124453124503%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx124394%_ _%wrap?124395%_)
        (let* ((_%e124396124406%_ _%stx124394%_)
               (_%E124398124410%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124396124406%_)))
               (_%E124397124437%_
                (lambda ()
                  (if (gx#stx-pair? _%e124396124406%_)
                      (let ((_%e124399124414%_
                             (gx#syntax-e _%e124396124406%_)))
                        (let ((_%hd124400124417%_ (##car _%e124399124414%_))
                              (_%tl124401124419%_ (##cdr _%e124399124414%_)))
                          (if (gx#stx-pair? _%tl124401124419%_)
                              (let ((_%e124402124422%_
                                     (gx#syntax-e _%tl124401124419%_)))
                                (let ((_%hd124403124425%_
                                       (##car _%e124402124422%_))
                                      (_%tl124404124427%_
                                       (##cdr _%e124402124422%_)))
                                  (let* ((_%hd124430%_ _%hd124403124425%_)
                                         (_%body124432%_ _%tl124404124427%_))
                                    (if (gx#core-bind-values? _%hd124430%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd124430%_)
                                           (let ((_%body124435%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd124430%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx124394%_
                                                               _%body124432%_)
                                                              '()))))
                                             (if _%wrap?124395%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body124435%_)
                                                  (gx#stx-source
                                                   _%stx124394%_))
                                                 _%body124435%_)))
                                         gx#current-expander-context
                                         (let ((__obj125459
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj125459)
                                           __obj125459))
                                        (_%E124398124410%_)))))
                              (_%E124398124410%_))))
                      (_%E124398124410%_)))))
          (_%E124397124437%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx124444%_)
        (let ((_%wrap?124446%_ '#t))
          (gx#core-expand-lambda%__% _%stx124444%_ _%wrap?124446%_))))
    (define gx#core-expand-lambda%
      (lambda _g125469_
        (let ((_g125468_ (##length _g125469_)))
          (cond ((##fx= _g125468_ 1)
                 (apply gx#core-expand-lambda%__0 _g125469_))
                ((##fx= _g125468_ 2)
                 (apply gx#core-expand-lambda%__% _g125469_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g125469_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx124358%_)
        (let* ((_%e124359124366%_ _%stx124358%_)
               (_%E124361124370%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124359124366%_)))
               (_%E124360124389%_
                (lambda ()
                  (if (gx#stx-pair? _%e124359124366%_)
                      (let ((_%e124362124374%_
                             (gx#syntax-e _%e124359124366%_)))
                        (let ((_%hd124363124377%_ (##car _%e124362124374%_))
                              (_%tl124364124379%_ (##cdr _%e124362124374%_)))
                          (let ((_%clauses124382%_ _%tl124364124379%_))
                            (if (gx#stx-list? _%clauses124382%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause124384%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause124384%_)
                                       (let ((_%$e124386%_
                                              (gx#stx-source
                                               _%clause124384%_)))
                                         (if _%$e124386%_
                                             _%$e124386%_
                                             (gx#stx-source _%stx124358%_))))
                                      '#f))
                                   _%clauses124382%_))
                                 (gx#stx-source _%stx124358%_))
                                (_%E124361124370%_)))))
                      (_%E124361124370%_)))))
          (_%E124360124389%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx124312%_)
        (let* ((_%e124313124323%_ _%stx124312%_)
               (_%E124315124327%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124313124323%_)))
               (_%E124314124354%_
                (lambda ()
                  (if (gx#stx-pair? _%e124313124323%_)
                      (let ((_%e124316124331%_
                             (gx#syntax-e _%e124313124323%_)))
                        (let ((_%hd124317124334%_ (##car _%e124316124331%_))
                              (_%tl124318124336%_ (##cdr _%e124316124331%_)))
                          (if (gx#stx-pair? _%tl124318124336%_)
                              (let ((_%e124319124339%_
                                     (gx#syntax-e _%tl124318124336%_)))
                                (let ((_%hd124320124342%_
                                       (##car _%e124319124339%_))
                                      (_%tl124321124344%_
                                       (##cdr _%e124319124339%_)))
                                  (let* ((_%hd124347%_ _%hd124320124342%_)
                                         (_%body124349%_ _%tl124321124344%_))
                                    (if (gx#core-expand-let-bind? _%hd124347%_)
                                        (let ((_%expressions124351%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd124347%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd124347%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd124347%_
                                                           _%expressions124351%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx124312%_
                         _%body124349%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx124312%_)))
                                           gx#current-expander-context
                                           (let ((__obj125460
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj125460)
                                             __obj125460)))
                                        (_%E124315124327%_)))))
                              (_%E124315124327%_))))
                      (_%E124315124327%_)))))
          (_%E124314124354%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx124257%_ _%form124258%_)
        (let* ((_%e124259124269%_ _%stx124257%_)
               (_%E124261124273%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124259124269%_)))
               (_%E124260124298%_
                (lambda ()
                  (if (gx#stx-pair? _%e124259124269%_)
                      (let ((_%e124262124277%_
                             (gx#syntax-e _%e124259124269%_)))
                        (let ((_%hd124263124280%_ (##car _%e124262124277%_))
                              (_%tl124264124282%_ (##cdr _%e124262124277%_)))
                          (if (gx#stx-pair? _%tl124264124282%_)
                              (let ((_%e124265124285%_
                                     (gx#syntax-e _%tl124264124282%_)))
                                (let ((_%hd124266124288%_
                                       (##car _%e124265124285%_))
                                      (_%tl124267124290%_
                                       (##cdr _%e124265124285%_)))
                                  (let* ((_%hd124293%_ _%hd124266124288%_)
                                         (_%body124295%_ _%tl124267124290%_))
                                    (if (gx#core-expand-let-bind? _%hd124293%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd124293%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form124258%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd124293%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd124293%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx124257%_
                                                               _%body124295%_)
                                                              '())))
                                            (gx#stx-source _%stx124257%_)))
                                         gx#current-expander-context
                                         (let ((__obj125461
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj125461)
                                           __obj125461))
                                        (_%E124261124273%_)))))
                              (_%E124261124273%_))))
                      (_%E124261124273%_)))))
          (_%E124260124298%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx124305%_)
        (let ((_%form124307%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx124305%_ _%form124307%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g125471_
        (let ((_g125470_ (##length _g125471_)))
          (cond ((##fx= _g125470_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g125471_))
                ((##fx= _g125470_ 2)
                 (apply gx#core-expand-letrec-values%__% _g125471_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g125471_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx124254%_)
        (gx#core-expand-letrec-values%__% _%stx124254%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx124211%_)
        (if (gx#stx-list? _%stx124211%_)
            (gx#stx-andmap
             (lambda (_%bind124213%_)
               (let* ((_%e124214124224%_ _%bind124213%_)
                      (_%E124216124228%_ (lambda () '#f))
                      (_%E124215124250%_
                       (lambda ()
                         (if (gx#stx-pair? _%e124214124224%_)
                             (let ((_%e124217124232%_
                                    (gx#syntax-e _%e124214124224%_)))
                               (let ((_%hd124218124235%_
                                      (##car _%e124217124232%_))
                                     (_%tl124219124237%_
                                      (##cdr _%e124217124232%_)))
                                 (let ((_%hd124240%_ _%hd124218124235%_))
                                   (if (gx#stx-pair? _%tl124219124237%_)
                                       (let ((_%e124220124242%_
                                              (gx#syntax-e
                                               _%tl124219124237%_)))
                                         (let ((_%hd124221124245%_
                                                (##car _%e124220124242%_))
                                               (_%tl124222124247%_
                                                (##cdr _%e124220124242%_)))
                                           (if (gx#stx-null?
                                                _%tl124222124247%_)
                                               (gx#core-bind-values?
                                                _%hd124240%_)
                                               (_%E124216124228%_))))
                                       (_%E124216124228%_)))))
                             (_%E124216124228%_)))))
                 (_%E124215124250%_)))
             _%stx124211%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind124170%_)
        (let* ((_%e124171124181%_ _%bind124170%_)
               (_%E124173124185%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124171124181%_)))
               (_%E124172124207%_
                (lambda ()
                  (if (gx#stx-pair? _%e124171124181%_)
                      (let ((_%e124174124189%_
                             (gx#syntax-e _%e124171124181%_)))
                        (let ((_%hd124175124192%_ (##car _%e124174124189%_))
                              (_%tl124176124194%_ (##cdr _%e124174124189%_)))
                          (if (gx#stx-pair? _%tl124176124194%_)
                              (let ((_%e124177124197%_
                                     (gx#syntax-e _%tl124176124194%_)))
                                (let ((_%hd124178124200%_
                                       (##car _%e124177124197%_))
                                      (_%tl124179124202%_
                                       (##cdr _%e124177124197%_)))
                                  (let ((_%expr124205%_ _%hd124178124200%_))
                                    (if (gx#stx-null? _%tl124179124202%_)
                                        (gx#core-expand-expression
                                         _%expr124205%_)
                                        (_%E124173124185%_)))))
                              (_%E124173124185%_))))
                      (_%E124173124185%_)))))
          (_%E124172124207%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind124129%_)
        (let* ((_%e124130124140%_ _%bind124129%_)
               (_%E124132124144%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124130124140%_)))
               (_%E124131124166%_
                (lambda ()
                  (if (gx#stx-pair? _%e124130124140%_)
                      (let ((_%e124133124148%_
                             (gx#syntax-e _%e124130124140%_)))
                        (let ((_%hd124134124151%_ (##car _%e124133124148%_))
                              (_%tl124135124153%_ (##cdr _%e124133124148%_)))
                          (let ((_%hd124156%_ _%hd124134124151%_))
                            (if (gx#stx-pair? _%tl124135124153%_)
                                (let ((_%e124136124158%_
                                       (gx#syntax-e _%tl124135124153%_)))
                                  (let ((_%hd124137124161%_
                                         (##car _%e124136124158%_))
                                        (_%tl124138124163%_
                                         (##cdr _%e124136124158%_)))
                                    (if (gx#stx-null? _%tl124138124163%_)
                                        (gx#core-bind-values!__0 _%hd124156%_)
                                        (_%E124132124144%_))))
                                (_%E124132124144%_)))))
                      (_%E124132124144%_)))))
          (_%E124131124166%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind124087%_ _%expr124088%_)
        (let* ((_%e124089124099%_ _%bind124087%_)
               (_%E124091124103%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124089124099%_)))
               (_%E124090124125%_
                (lambda ()
                  (if (gx#stx-pair? _%e124089124099%_)
                      (let ((_%e124092124107%_
                             (gx#syntax-e _%e124089124099%_)))
                        (let ((_%hd124093124110%_ (##car _%e124092124107%_))
                              (_%tl124094124112%_ (##cdr _%e124092124107%_)))
                          (let ((_%hd124115%_ _%hd124093124110%_))
                            (if (gx#stx-pair? _%tl124094124112%_)
                                (let ((_%e124095124117%_
                                       (gx#syntax-e _%tl124094124112%_)))
                                  (let ((_%hd124096124120%_
                                         (##car _%e124095124117%_))
                                        (_%tl124097124122%_
                                         (##cdr _%e124095124117%_)))
                                    (if (gx#stx-null? _%tl124097124122%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd124115%_)
                                              (cons _%expr124088%_ '()))
                                        (_%E124091124103%_))))
                                (_%E124091124103%_)))))
                      (_%E124091124103%_)))))
          (_%E124090124125%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx124041%_)
        (let* ((_%e124042124052%_ _%stx124041%_)
               (_%E124044124056%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124042124052%_)))
               (_%E124043124083%_
                (lambda ()
                  (if (gx#stx-pair? _%e124042124052%_)
                      (let ((_%e124045124060%_
                             (gx#syntax-e _%e124042124052%_)))
                        (let ((_%hd124046124063%_ (##car _%e124045124060%_))
                              (_%tl124047124065%_ (##cdr _%e124045124060%_)))
                          (if (gx#stx-pair? _%tl124047124065%_)
                              (let ((_%e124048124068%_
                                     (gx#syntax-e _%tl124047124065%_)))
                                (let ((_%hd124049124071%_
                                       (##car _%e124048124068%_))
                                      (_%tl124050124073%_
                                       (##cdr _%e124048124068%_)))
                                  (let* ((_%hd124076%_ _%hd124049124071%_)
                                         (_%body124078%_ _%tl124050124073%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd124076%_)
                                        (let ((_%expanders124080%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd124076%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd124076%_
                                              _%expanders124080%_)
                                             (gx#core-expand-local-block
                                              _%stx124041%_
                                              _%body124078%_))
                                           gx#current-expander-context
                                           (let ((__obj125462
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj125462)
                                             __obj125462)))
                                        (_%E124044124056%_)))))
                              (_%E124044124056%_))))
                      (_%E124044124056%_)))))
          (_%E124043124083%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx123990%_)
        (let* ((_%e123991124001%_ _%stx123990%_)
               (_%E123993124005%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123991124001%_)))
               (_%E123992124037%_
                (lambda ()
                  (if (gx#stx-pair? _%e123991124001%_)
                      (let ((_%e123994124009%_
                             (gx#syntax-e _%e123991124001%_)))
                        (let ((_%hd123995124012%_ (##car _%e123994124009%_))
                              (_%tl123996124014%_ (##cdr _%e123994124009%_)))
                          (if (gx#stx-pair? _%tl123996124014%_)
                              (let ((_%e123997124017%_
                                     (gx#syntax-e _%tl123996124014%_)))
                                (let ((_%hd123998124020%_
                                       (##car _%e123997124017%_))
                                      (_%tl123999124022%_
                                       (##cdr _%e123997124017%_)))
                                  (let* ((_%hd124025%_ _%hd123998124020%_)
                                         (_%body124027%_ _%tl123999124022%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd124025%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd124025%_
                                            (make-list
                                             (gx#stx-length _%hd124025%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g124029124032%_
                                                     _%g124030124034%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g124029124032%_
                                               _%g124030124034%_
                                               '#t))
                                            _%hd124025%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd124025%_))
                                           (gx#core-expand-local-block
                                            _%stx123990%_
                                            _%body124027%_))
                                         gx#current-expander-context
                                         (let ((__obj125463
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj125463)
                                           __obj125463))
                                        (_%E123993124005%_)))))
                              (_%E123993124005%_))))
                      (_%E123993124005%_)))))
          (_%E123992124037%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx123947%_)
        (if (gx#stx-list? _%stx123947%_)
            (gx#stx-andmap
             (lambda (_%bind123949%_)
               (let* ((_%e123950123960%_ _%bind123949%_)
                      (_%E123952123964%_ (lambda () '#f))
                      (_%E123951123986%_
                       (lambda ()
                         (if (gx#stx-pair? _%e123950123960%_)
                             (let ((_%e123953123968%_
                                    (gx#syntax-e _%e123950123960%_)))
                               (let ((_%hd123954123971%_
                                      (##car _%e123953123968%_))
                                     (_%tl123955123973%_
                                      (##cdr _%e123953123968%_)))
                                 (let ((_%hd123976%_ _%hd123954123971%_))
                                   (if (gx#stx-pair? _%tl123955123973%_)
                                       (let ((_%e123956123978%_
                                              (gx#syntax-e
                                               _%tl123955123973%_)))
                                         (let ((_%hd123957123981%_
                                                (##car _%e123956123978%_))
                                               (_%tl123958123983%_
                                                (##cdr _%e123956123978%_)))
                                           (if (gx#stx-null?
                                                _%tl123958123983%_)
                                               (gx#identifier? _%hd123976%_)
                                               (_%E123952123964%_))))
                                       (_%E123952123964%_)))))
                             (_%E123952123964%_)))))
                 (_%E123951123986%_)))
             _%stx123947%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind123903%_)
        (let* ((_%e123904123914%_ _%bind123903%_)
               (_%E123906123918%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123904123914%_)))
               (_%E123905123943%_
                (lambda ()
                  (if (gx#stx-pair? _%e123904123914%_)
                      (let ((_%e123907123922%_
                             (gx#syntax-e _%e123904123914%_)))
                        (let ((_%hd123908123925%_ (##car _%e123907123922%_))
                              (_%tl123909123927%_ (##cdr _%e123907123922%_)))
                          (if (gx#stx-pair? _%tl123909123927%_)
                              (let ((_%e123910123930%_
                                     (gx#syntax-e _%tl123909123927%_)))
                                (let ((_%hd123911123933%_
                                       (##car _%e123910123930%_))
                                      (_%tl123912123935%_
                                       (##cdr _%e123910123930%_)))
                                  (let ((_%expr123938%_ _%hd123911123933%_))
                                    (if (gx#stx-null? _%tl123912123935%_)
                                        (let ((_g125472_
                                               (gx#core-expand-expression+1
                                                _%expr123938%_)))
                                          (begin
                                            (let ((_g125473_
                                                   (if (##values? _g125472_)
                                                       (##values-length
                                                        _g125472_)
                                                       1)))
                                              (if (not (##fx= _g125473_ 2))
                                                  (error "Context expects 2 values"
                                                         _g125473_)))
                                            (let ((_%_123940%_
                                                   (##values-ref _g125472_ 0))
                                                  (_%e123941%_
                                                   (##values-ref _g125472_ 1)))
                                              _%e123941%_)))
                                        (_%E123906123918%_)))))
                              (_%E123906123918%_))))
                      (_%E123906123918%_)))))
          (_%E123905123943%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind123848%_ _%e123849%_ _%rebind?123850%_)
        (let* ((_%e123851123861%_ _%bind123848%_)
               (_%E123853123865%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123851123861%_)))
               (_%E123852123887%_
                (lambda ()
                  (if (gx#stx-pair? _%e123851123861%_)
                      (let ((_%e123854123869%_
                             (gx#syntax-e _%e123851123861%_)))
                        (let ((_%hd123855123872%_ (##car _%e123854123869%_))
                              (_%tl123856123874%_ (##cdr _%e123854123869%_)))
                          (let ((_%id123877%_ _%hd123855123872%_))
                            (if (gx#stx-pair? _%tl123856123874%_)
                                (let ((_%e123857123879%_
                                       (gx#syntax-e _%tl123856123874%_)))
                                  (let ((_%hd123858123882%_
                                         (##car _%e123857123879%_))
                                        (_%tl123859123884%_
                                         (##cdr _%e123857123879%_)))
                                    (if (gx#stx-null? _%tl123859123884%_)
                                        (gx#core-bind-syntax!__1
                                         _%id123877%_
                                         _%e123849%_
                                         _%rebind?123850%_)
                                        (_%E123853123865%_))))
                                (_%E123853123865%_)))))
                      (_%E123853123865%_)))))
          (_%E123852123887%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind123894%_ _%e123895%_)
        (let ((_%rebind?123897%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind123894%_
           _%e123895%_
           _%rebind?123897%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g125475_
        (let ((_g125474_ (##length _g125475_)))
          (cond ((##fx= _g125474_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g125475_))
                ((##fx= _g125474_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g125475_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g125475_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx123806%_)
        (let* ((_%e123807123817%_ _%stx123806%_)
               (_%E123809123821%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123807123817%_)))
               (_%E123808123843%_
                (lambda ()
                  (if (gx#stx-pair? _%e123807123817%_)
                      (let ((_%e123810123825%_
                             (gx#syntax-e _%e123807123817%_)))
                        (let ((_%hd123811123828%_ (##car _%e123810123825%_))
                              (_%tl123812123830%_ (##cdr _%e123810123825%_)))
                          (if (gx#stx-pair? _%tl123812123830%_)
                              (let ((_%e123813123833%_
                                     (gx#syntax-e _%tl123812123830%_)))
                                (let ((_%hd123814123836%_
                                       (##car _%e123813123833%_))
                                      (_%tl123815123838%_
                                       (##cdr _%e123813123833%_)))
                                  (let ((_%expr123841%_ _%hd123814123836%_))
                                    (if (gx#stx-null? _%tl123815123838%_)
                                        (gx#core-expand-expression
                                         _%expr123841%_)
                                        (_%E123809123821%_)))))
                              (_%E123809123821%_))))
                      (_%E123809123821%_)))))
          (_%E123808123843%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx123765%_)
        (let* ((_%e123766123776%_ _%stx123765%_)
               (_%E123768123780%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123766123776%_)))
               (_%E123767123802%_
                (lambda ()
                  (if (gx#stx-pair? _%e123766123776%_)
                      (let ((_%e123769123784%_
                             (gx#syntax-e _%e123766123776%_)))
                        (let ((_%hd123770123787%_ (##car _%e123769123784%_))
                              (_%tl123771123789%_ (##cdr _%e123769123784%_)))
                          (if (gx#stx-pair? _%tl123771123789%_)
                              (let ((_%e123772123792%_
                                     (gx#syntax-e _%tl123771123789%_)))
                                (let ((_%hd123773123795%_
                                       (##car _%e123772123792%_))
                                      (_%tl123774123797%_
                                       (##cdr _%e123772123792%_)))
                                  (let ((_%e123800%_ _%hd123773123795%_))
                                    (if (gx#stx-null? _%tl123774123797%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e123800%_)
                                                     '()))
                                         (gx#stx-source _%stx123765%_))
                                        (_%E123768123780%_)))))
                              (_%E123768123780%_))))
                      (_%E123768123780%_)))))
          (_%E123767123802%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx123724%_)
        (let* ((_%e123725123735%_ _%stx123724%_)
               (_%E123727123739%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123725123735%_)))
               (_%E123726123761%_
                (lambda ()
                  (if (gx#stx-pair? _%e123725123735%_)
                      (let ((_%e123728123743%_
                             (gx#syntax-e _%e123725123735%_)))
                        (let ((_%hd123729123746%_ (##car _%e123728123743%_))
                              (_%tl123730123748%_ (##cdr _%e123728123743%_)))
                          (if (gx#stx-pair? _%tl123730123748%_)
                              (let ((_%e123731123751%_
                                     (gx#syntax-e _%tl123730123748%_)))
                                (let ((_%hd123732123754%_
                                       (##car _%e123731123751%_))
                                      (_%tl123733123756%_
                                       (##cdr _%e123731123751%_)))
                                  (let ((_%e123759%_ _%hd123732123754%_))
                                    (if (gx#stx-null? _%tl123733123756%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e123759%_)
                                                     '()))
                                         (gx#stx-source _%stx123724%_))
                                        (_%E123727123739%_)))))
                              (_%E123727123739%_))))
                      (_%E123727123739%_)))))
          (_%E123726123761%_))))
    (define gx#core-expand-call%
      (lambda (_%stx123681%_)
        (let* ((_%e123682123692%_ _%stx123681%_)
               (_%E123684123696%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123682123692%_)))
               (_%E123683123720%_
                (lambda ()
                  (if (gx#stx-pair? _%e123682123692%_)
                      (let ((_%e123685123700%_
                             (gx#syntax-e _%e123682123692%_)))
                        (let ((_%hd123686123703%_ (##car _%e123685123700%_))
                              (_%tl123687123705%_ (##cdr _%e123685123700%_)))
                          (if (gx#stx-pair? _%tl123687123705%_)
                              (let ((_%e123688123708%_
                                     (gx#syntax-e _%tl123687123705%_)))
                                (let ((_%hd123689123711%_
                                       (##car _%e123688123708%_))
                                      (_%tl123690123713%_
                                       (##cdr _%e123688123708%_)))
                                  (let* ((_%rator123716%_ _%hd123689123711%_)
                                         (_%args123718%_ _%tl123690123713%_))
                                    (if (gx#stx-list? _%args123718%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator123716%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args123718%_))
                                         (gx#stx-source _%stx123681%_))
                                        (_%E123684123696%_)))))
                              (_%E123684123696%_))))
                      (_%E123684123696%_)))))
          (_%E123683123720%_))))
    (define gx#core-expand-if%
      (lambda (_%stx123614%_)
        (let* ((_%e123615123631%_ _%stx123614%_)
               (_%E123617123635%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123615123631%_)))
               (_%E123616123677%_
                (lambda ()
                  (if (gx#stx-pair? _%e123615123631%_)
                      (let ((_%e123618123639%_
                             (gx#syntax-e _%e123615123631%_)))
                        (let ((_%hd123619123642%_ (##car _%e123618123639%_))
                              (_%tl123620123644%_ (##cdr _%e123618123639%_)))
                          (if (gx#stx-pair? _%tl123620123644%_)
                              (let ((_%e123621123647%_
                                     (gx#syntax-e _%tl123620123644%_)))
                                (let ((_%hd123622123650%_
                                       (##car _%e123621123647%_))
                                      (_%tl123623123652%_
                                       (##cdr _%e123621123647%_)))
                                  (let ((_%test123655%_ _%hd123622123650%_))
                                    (if (gx#stx-pair? _%tl123623123652%_)
                                        (let ((_%e123624123657%_
                                               (gx#syntax-e
                                                _%tl123623123652%_)))
                                          (let ((_%hd123625123660%_
                                                 (##car _%e123624123657%_))
                                                (_%tl123626123662%_
                                                 (##cdr _%e123624123657%_)))
                                            (let ((_%K123665%_
                                                   _%hd123625123660%_))
                                              (if (gx#stx-pair?
                                                   _%tl123626123662%_)
                                                  (let ((_%e123627123667%_
                                                         (gx#syntax-e
                                                          _%tl123626123662%_)))
                                                    (let ((_%hd123628123670%_
                                                           (##car _%e123627123667%_))
                                                          (_%tl123629123672%_
                                                           (##cdr _%e123627123667%_)))
                                                      (let ((_%E123675%_
                                                             _%hd123628123670%_))
                                                        (if (gx#stx-null?
                                                             _%tl123629123672%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test123655%_)
                                 (cons (gx#core-expand-expression _%K123665%_)
                                       (cons (gx#core-expand-expression
                                              _%E123675%_)
                                             '()))))
                     (gx#stx-source _%stx123614%_))
                    (_%E123617123635%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123617123635%_)))))
                                        (_%E123617123635%_)))))
                              (_%E123617123635%_))))
                      (_%E123617123635%_)))))
          (_%E123616123677%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx123573%_)
        (let* ((_%e123574123584%_ _%stx123573%_)
               (_%E123576123588%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123574123584%_)))
               (_%E123575123610%_
                (lambda ()
                  (if (gx#stx-pair? _%e123574123584%_)
                      (let ((_%e123577123592%_
                             (gx#syntax-e _%e123574123584%_)))
                        (let ((_%hd123578123595%_ (##car _%e123577123592%_))
                              (_%tl123579123597%_ (##cdr _%e123577123592%_)))
                          (if (gx#stx-pair? _%tl123579123597%_)
                              (let ((_%e123580123600%_
                                     (gx#syntax-e _%tl123579123597%_)))
                                (let ((_%hd123581123603%_
                                       (##car _%e123580123600%_))
                                      (_%tl123582123605%_
                                       (##cdr _%e123580123600%_)))
                                  (let ((_%id123608%_ _%hd123581123603%_))
                                    (if (gx#stx-null? _%tl123582123605%_)
                                        (if (gx#identifier? _%id123608%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id123608%_
                                                          _%stx123573%_)
                                                         '()))
                                             (gx#stx-source _%stx123573%_))
                                            (_%E123576123588%_))
                                        (_%E123576123588%_)))))
                              (_%E123576123588%_))))
                      (_%E123576123588%_)))))
          (_%E123575123610%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx123519%_)
        (let* ((_%e123520123533%_ _%stx123519%_)
               (_%E123522123537%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123520123533%_)))
               (_%E123521123569%_
                (lambda ()
                  (if (gx#stx-pair? _%e123520123533%_)
                      (let ((_%e123523123541%_
                             (gx#syntax-e _%e123520123533%_)))
                        (let ((_%hd123524123544%_ (##car _%e123523123541%_))
                              (_%tl123525123546%_ (##cdr _%e123523123541%_)))
                          (if (gx#stx-pair? _%tl123525123546%_)
                              (let ((_%e123526123549%_
                                     (gx#syntax-e _%tl123525123546%_)))
                                (let ((_%hd123527123552%_
                                       (##car _%e123526123549%_))
                                      (_%tl123528123554%_
                                       (##cdr _%e123526123549%_)))
                                  (let ((_%id123557%_ _%hd123527123552%_))
                                    (if (gx#stx-pair? _%tl123528123554%_)
                                        (let ((_%e123529123559%_
                                               (gx#syntax-e
                                                _%tl123528123554%_)))
                                          (let ((_%hd123530123562%_
                                                 (##car _%e123529123559%_))
                                                (_%tl123531123564%_
                                                 (##cdr _%e123529123559%_)))
                                            (let ((_%expr123567%_
                                                   _%hd123530123562%_))
                                              (if (gx#stx-null?
                                                   _%tl123531123564%_)
                                                  (if (gx#identifier?
                                                       _%id123557%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id123557%_
                            _%stx123519%_)
                           (cons (gx#core-expand-expression _%expr123567%_)
                                 '())))
               (gx#stx-source _%stx123519%_))
              (_%E123522123537%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123522123537%_)))))
                                        (_%E123522123537%_)))))
                              (_%E123522123537%_))))
                      (_%E123522123537%_)))))
          (_%E123521123569%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx123364%_)
        (letrec ((_%generate123366%_
                  (lambda (_%body123396%_)
                    (let _%lp123398%_ ((_%rest123400%_ _%body123396%_)
                                       (_%ns123401%_
                                        (gx#core-context-namespace__0))
                                       (_%r123402%_ '()))
                      (let* ((_%e123403123418%_ _%rest123400%_)
                             (_%E123416123422%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e123403123418%_)))
                             (_%E123412123426%_
                              (lambda ()
                                (if (gx#stx-null? _%e123403123418%_)
                                    (reverse _%r123402%_)
                                    (_%E123416123422%_))))
                             (_%E123405123483%_
                              (lambda ()
                                (if (gx#stx-pair? _%e123403123418%_)
                                    (let ((_%e123413123430%_
                                           (gx#syntax-e _%e123403123418%_)))
                                      (let ((_%hd123414123433%_
                                             (##car _%e123413123430%_))
                                            (_%tl123415123435%_
                                             (##cdr _%e123413123430%_)))
                                        (let* ((_%hd123438%_
                                                _%hd123414123433%_)
                                               (_%rest123440%_
                                                _%tl123415123435%_))
                                          (if (gx#identifier? _%hd123438%_)
                                              (_%lp123398%_
                                               _%rest123440%_
                                               _%ns123401%_
                                               (cons (cons _%hd123438%_
                                                           (cons (if _%ns123401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd123438%_
                              _%ns123401%_
                              '"#"
                              _%hd123438%_)
                             _%hd123438%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r123402%_))
                                              (let* ((_%e123441123451%_
                                                      _%hd123438%_)
                                                     (_%E123443123455%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e123441123451%_)))
                                                     (_%E123442123479%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e123441123451%_)
                                                            (let ((_%e123444123459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e123441123451%_)))
                      (let ((_%hd123445123462%_ (##car _%e123444123459%_))
                            (_%tl123446123464%_ (##cdr _%e123444123459%_)))
                        (let ((_%id123467%_ _%hd123445123462%_))
                          (if (gx#stx-pair? _%tl123446123464%_)
                              (let ((_%e123447123469%_
                                     (gx#syntax-e _%tl123446123464%_)))
                                (let ((_%hd123448123472%_
                                       (##car _%e123447123469%_))
                                      (_%tl123449123474%_
                                       (##cdr _%e123447123469%_)))
                                  (let ((_%eid123477%_ _%hd123448123472%_))
                                    (if (gx#stx-null? _%tl123449123474%_)
                                        (if (and (gx#identifier? _%id123467%_)
                                                 (gx#identifier?
                                                  _%eid123477%_))
                                            (_%lp123398%_
                                             _%rest123440%_
                                             _%ns123401%_
                                             (cons (cons _%id123467%_
                                                         (cons _%eid123477%_
                                                               '()))
                                                   _%r123402%_))
                                            (_%E123443123455%_))
                                        (_%E123443123455%_)))))
                              (_%E123443123455%_)))))
                    (_%E123443123455%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E123442123479%_))))))
                                    (_%E123412123426%_))))
                             (_%E123404123515%_
                              (lambda ()
                                (if (gx#stx-pair? _%e123403123418%_)
                                    (let ((_%e123406123487%_
                                           (gx#syntax-e _%e123403123418%_)))
                                      (let ((_%hd123407123490%_
                                             (##car _%e123406123487%_))
                                            (_%tl123408123492%_
                                             (##cdr _%e123406123487%_)))
                                        (if (eq? (gx#stx-e _%hd123407123490%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl123408123492%_)
                                                (let ((_%e123409123495%_
                                                       (gx#syntax-e
                                                        _%tl123408123492%_)))
                                                  (let ((_%hd123410123498%_
                                                         (##car _%e123409123495%_))
                                                        (_%tl123411123500%_
                                                         (##cdr _%e123409123495%_)))
                                                    (let* ((_%ns123503%_
                                                            _%hd123410123498%_)
                                                           (_%rest123505%_
                                                            _%tl123411123500%_)
                                                           (_%ns123513%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns123503%_)
                        (symbol->string (gx#stx-e _%ns123503%_))
                        (if (or (gx#stx-string? _%ns123503%_)
                                (gx#stx-false? _%ns123503%_))
                            (gx#stx-e _%ns123503%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx123364%_
                             _%ns123503%_)))))
              (_%lp123398%_ _%rest123505%_ _%ns123513%_ _%r123402%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E123405123483%_))
                                            (_%E123405123483%_))))
                                    (_%E123405123483%_)))))
                        (_%E123404123515%_))))))
          (let* ((_%e123367123374%_ _%stx123364%_)
                 (_%E123369123378%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123367123374%_)))
                 (_%E123368123392%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123367123374%_)
                        (let ((_%e123370123382%_
                               (gx#syntax-e _%e123367123374%_)))
                          (let ((_%hd123371123385%_ (##car _%e123370123382%_))
                                (_%tl123372123387%_ (##cdr _%e123370123382%_)))
                            (let ((_%body123390%_ _%tl123372123387%_))
                              (if (gx#stx-list? _%body123390%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate123366%_ _%body123390%_))
                                  (_%E123369123378%_)))))
                        (_%E123369123378%_)))))
            (_%E123368123392%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx123310%_)
        (let* ((_%e123311123324%_ _%stx123310%_)
               (_%E123313123328%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123311123324%_)))
               (_%E123312123360%_
                (lambda ()
                  (if (gx#stx-pair? _%e123311123324%_)
                      (let ((_%e123314123332%_
                             (gx#syntax-e _%e123311123324%_)))
                        (let ((_%hd123315123335%_ (##car _%e123314123332%_))
                              (_%tl123316123337%_ (##cdr _%e123314123332%_)))
                          (if (gx#stx-pair? _%tl123316123337%_)
                              (let ((_%e123317123340%_
                                     (gx#syntax-e _%tl123316123337%_)))
                                (let ((_%hd123318123343%_
                                       (##car _%e123317123340%_))
                                      (_%tl123319123345%_
                                       (##cdr _%e123317123340%_)))
                                  (let ((_%hd123348%_ _%hd123318123343%_))
                                    (if (gx#stx-pair? _%tl123319123345%_)
                                        (let ((_%e123320123350%_
                                               (gx#syntax-e
                                                _%tl123319123345%_)))
                                          (let ((_%hd123321123353%_
                                                 (##car _%e123320123350%_))
                                                (_%tl123322123355%_
                                                 (##cdr _%e123320123350%_)))
                                            (let ((_%expr123358%_
                                                   _%hd123321123353%_))
                                              (if (gx#stx-null?
                                                   _%tl123322123355%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd123348%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd123348%_)
                          (cons _%expr123358%_ '())))
              (_%E123313123328%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123313123328%_)))))
                                        (_%E123313123328%_)))))
                              (_%E123313123328%_))))
                      (_%E123313123328%_)))))
          (_%E123312123360%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx123256%_)
        (let* ((_%e123257123270%_ _%stx123256%_)
               (_%E123259123274%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123257123270%_)))
               (_%E123258123306%_
                (lambda ()
                  (if (gx#stx-pair? _%e123257123270%_)
                      (let ((_%e123260123278%_
                             (gx#syntax-e _%e123257123270%_)))
                        (let ((_%hd123261123281%_ (##car _%e123260123278%_))
                              (_%tl123262123283%_ (##cdr _%e123260123278%_)))
                          (if (gx#stx-pair? _%tl123262123283%_)
                              (let ((_%e123263123286%_
                                     (gx#syntax-e _%tl123262123283%_)))
                                (let ((_%hd123264123289%_
                                       (##car _%e123263123286%_))
                                      (_%tl123265123291%_
                                       (##cdr _%e123263123286%_)))
                                  (let ((_%hd123294%_ _%hd123264123289%_))
                                    (if (gx#stx-pair? _%tl123265123291%_)
                                        (let ((_%e123266123296%_
                                               (gx#syntax-e
                                                _%tl123265123291%_)))
                                          (let ((_%hd123267123299%_
                                                 (##car _%e123266123296%_))
                                                (_%tl123268123301%_
                                                 (##cdr _%e123266123296%_)))
                                            (let ((_%expr123304%_
                                                   _%hd123267123299%_))
                                              (if (gx#stx-null?
                                                   _%tl123268123301%_)
                                                  (if (gx#identifier?
                                                       _%hd123294%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd123294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr123304%_ '())))
              (_%E123259123274%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123259123274%_)))))
                                        (_%E123259123274%_)))))
                              (_%E123259123274%_))))
                      (_%E123259123274%_)))))
          (_%E123258123306%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx123202%_)
        (let* ((_%e123203123216%_ _%stx123202%_)
               (_%E123205123220%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123203123216%_)))
               (_%E123204123252%_
                (lambda ()
                  (if (gx#stx-pair? _%e123203123216%_)
                      (let ((_%e123206123224%_
                             (gx#syntax-e _%e123203123216%_)))
                        (let ((_%hd123207123227%_ (##car _%e123206123224%_))
                              (_%tl123208123229%_ (##cdr _%e123206123224%_)))
                          (if (gx#stx-pair? _%tl123208123229%_)
                              (let ((_%e123209123232%_
                                     (gx#syntax-e _%tl123208123229%_)))
                                (let ((_%hd123210123235%_
                                       (##car _%e123209123232%_))
                                      (_%tl123211123237%_
                                       (##cdr _%e123209123232%_)))
                                  (let ((_%id123240%_ _%hd123210123235%_))
                                    (if (gx#stx-pair? _%tl123211123237%_)
                                        (let ((_%e123212123242%_
                                               (gx#syntax-e
                                                _%tl123211123237%_)))
                                          (let ((_%hd123213123245%_
                                                 (##car _%e123212123242%_))
                                                (_%tl123214123247%_
                                                 (##cdr _%e123212123242%_)))
                                            (let ((_%alias-id123250%_
                                                   _%hd123213123245%_))
                                              (if (gx#stx-null?
                                                   _%tl123214123247%_)
                                                  (if (and (gx#identifier?
                                                            _%id123240%_)
                                                           (gx#identifier?
                                                            _%alias-id123250%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id123240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id123250%_ '())))
              (_%E123205123220%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123205123220%_)))))
                                        (_%E123205123220%_)))))
                              (_%E123205123220%_))))
                      (_%E123205123220%_)))))
          (_%E123204123252%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx123159%_)
        (let* ((_%e123160123170%_ _%stx123159%_)
               (_%E123162123174%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123160123170%_)))
               (_%E123161123198%_
                (lambda ()
                  (if (gx#stx-pair? _%e123160123170%_)
                      (let ((_%e123163123178%_
                             (gx#syntax-e _%e123160123170%_)))
                        (let ((_%hd123164123181%_ (##car _%e123163123178%_))
                              (_%tl123165123183%_ (##cdr _%e123163123178%_)))
                          (if (gx#stx-pair? _%tl123165123183%_)
                              (let ((_%e123166123186%_
                                     (gx#syntax-e _%tl123165123183%_)))
                                (let ((_%hd123167123189%_
                                       (##car _%e123166123186%_))
                                      (_%tl123168123191%_
                                       (##cdr _%e123166123186%_)))
                                  (let* ((_%hd123194%_ _%hd123167123189%_)
                                         (_%body123196%_ _%tl123168123191%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd123194%_)
                                             (gx#stx-list? _%body123196%_)
                                             (not (gx#stx-null?
                                                   _%body123196%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd123194%_)
                                         _%body123196%_)
                                        (_%E123162123174%_)))))
                              (_%E123162123174%_))))
                      (_%E123162123174%_)))))
          (_%E123161123198%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx123095%_)
        (letrec ((_%generate123097%_
                  (lambda (_%clause123127%_)
                    (let* ((_%e123128123135%_ _%clause123127%_)
                           (_%E123130123139%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx123095%_
                               _%clause123127%_)))
                           (_%E123129123155%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123128123135%_)
                                  (let ((_%e123131123143%_
                                         (gx#syntax-e _%e123128123135%_)))
                                    (let ((_%hd123132123146%_
                                           (##car _%e123131123143%_))
                                          (_%tl123133123148%_
                                           (##cdr _%e123131123143%_)))
                                      (let* ((_%hd123151%_ _%hd123132123146%_)
                                             (_%body123153%_
                                              _%tl123133123148%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd123151%_)
                                                 (gx#stx-list? _%body123153%_)
                                                 (not (gx#stx-null?
                                                       _%body123153%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd123151%_)
                                                   _%body123153%_)
                                             (gx#stx-source _%clause123127%_))
                                            (_%E123130123139%_)))))
                                  (_%E123130123139%_)))))
                      (_%E123129123155%_)))))
          (let* ((_%e123098123105%_ _%stx123095%_)
                 (_%E123100123109%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123098123105%_)))
                 (_%E123099123123%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123098123105%_)
                        (let ((_%e123101123113%_
                               (gx#syntax-e _%e123098123105%_)))
                          (let ((_%hd123102123116%_ (##car _%e123101123113%_))
                                (_%tl123103123118%_ (##cdr _%e123101123113%_)))
                            (let ((_%clauses123121%_ _%tl123103123118%_))
                              (if (gx#stx-list? _%clauses123121%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate123097%_
                                    _%clauses123121%_))
                                  (_%E123100123109%_)))))
                        (_%E123100123109%_)))))
            (_%E123099123123%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx122996%_ _%form122997%_)
        (letrec ((_%generate122999%_
                  (lambda (_%bind123042%_)
                    (let* ((_%e123043123053%_ _%bind123042%_)
                           (_%E123045123057%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx122996%_
                               _%bind123042%_)))
                           (_%E123044123081%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123043123053%_)
                                  (let ((_%e123046123061%_
                                         (gx#syntax-e _%e123043123053%_)))
                                    (let ((_%hd123047123064%_
                                           (##car _%e123046123061%_))
                                          (_%tl123048123066%_
                                           (##cdr _%e123046123061%_)))
                                      (let ((_%ids123069%_ _%hd123047123064%_))
                                        (if (gx#stx-pair? _%tl123048123066%_)
                                            (let ((_%e123049123071%_
                                                   (gx#syntax-e
                                                    _%tl123048123066%_)))
                                              (let ((_%hd123050123074%_
                                                     (##car _%e123049123071%_))
                                                    (_%tl123051123076%_
                                                     (##cdr _%e123049123071%_)))
                                                (let ((_%expr123079%_
                                                       _%hd123050123074%_))
                                                  (if (gx#stx-null?
                                                       _%tl123051123076%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids123069%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids123069%_)
                        (cons _%expr123079%_ '()))
                  (_%E123045123057%_))
              (_%E123045123057%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E123045123057%_)))))
                                  (_%E123045123057%_)))))
                      (_%E123044123081%_)))))
          (let* ((_%e123000123010%_ _%stx122996%_)
                 (_%E123002123014%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123000123010%_)))
                 (_%E123001123038%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123000123010%_)
                        (let ((_%e123003123018%_
                               (gx#syntax-e _%e123000123010%_)))
                          (let ((_%hd123004123021%_ (##car _%e123003123018%_))
                                (_%tl123005123023%_ (##cdr _%e123003123018%_)))
                            (if (gx#stx-pair? _%tl123005123023%_)
                                (let ((_%e123006123026%_
                                       (gx#syntax-e _%tl123005123023%_)))
                                  (let ((_%hd123007123029%_
                                         (##car _%e123006123026%_))
                                        (_%tl123008123031%_
                                         (##cdr _%e123006123026%_)))
                                    (let* ((_%hd123034%_ _%hd123007123029%_)
                                           (_%body123036%_ _%tl123008123031%_))
                                      (if (and (gx#stx-list? _%hd123034%_)
                                               (gx#stx-list? _%body123036%_)
                                               (not (gx#stx-null?
                                                     _%body123036%_)))
                                          (gx#core-cons*
                                           _%form122997%_
                                           (gx#stx-map1
                                            _%generate122999%_
                                            _%hd123034%_)
                                           _%body123036%_)
                                          (_%E123002123014%_)))))
                                (_%E123002123014%_))))
                        (_%E123002123014%_)))))
            (_%E123001123038%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx123088%_)
        (let ((_%form123090%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx123088%_ _%form123090%_))))
    (define gx#macro-expand-let-values
      (lambda _g125477_
        (let ((_g125476_ (##length _g125477_)))
          (cond ((##fx= _g125476_ 1)
                 (apply gx#macro-expand-let-values__0 _g125477_))
                ((##fx= _g125476_ 2)
                 (apply gx#macro-expand-let-values__% _g125477_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g125477_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx122993%_)
        (gx#macro-expand-let-values__% _%stx122993%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx122991%_)
        (gx#macro-expand-let-values__% _%stx122991%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx122882%_)
        (let* ((_%e122883122909%_ _%stx122882%_)
               (_%E122895122913%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122883122909%_)))
               (_%E122885122955%_
                (lambda ()
                  (if (gx#stx-pair? _%e122883122909%_)
                      (let ((_%e122896122917%_
                             (gx#syntax-e _%e122883122909%_)))
                        (let ((_%hd122897122920%_ (##car _%e122896122917%_))
                              (_%tl122898122922%_ (##cdr _%e122896122917%_)))
                          (if (gx#stx-pair? _%tl122898122922%_)
                              (let ((_%e122899122925%_
                                     (gx#syntax-e _%tl122898122922%_)))
                                (let ((_%hd122900122928%_
                                       (##car _%e122899122925%_))
                                      (_%tl122901122930%_
                                       (##cdr _%e122899122925%_)))
                                  (let ((_%test122933%_ _%hd122900122928%_))
                                    (if (gx#stx-pair? _%tl122901122930%_)
                                        (let ((_%e122902122935%_
                                               (gx#syntax-e
                                                _%tl122901122930%_)))
                                          (let ((_%hd122903122938%_
                                                 (##car _%e122902122935%_))
                                                (_%tl122904122940%_
                                                 (##cdr _%e122902122935%_)))
                                            (let ((_%K122943%_
                                                   _%hd122903122938%_))
                                              (if (gx#stx-pair?
                                                   _%tl122904122940%_)
                                                  (let ((_%e122905122945%_
                                                         (gx#syntax-e
                                                          _%tl122904122940%_)))
                                                    (let ((_%hd122906122948%_
                                                           (##car _%e122905122945%_))
                                                          (_%tl122907122950%_
                                                           (##cdr _%e122905122945%_)))
                                                      (let ((_%E122953%_
                                                             _%hd122906122948%_))
                                                        (if (gx#stx-null?
                                                             _%tl122907122950%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test122933%_
                                                             _%K122943%_
                                                             _%E122953%_)
                                                            (_%E122895122913%_)))))
                                                  (_%E122895122913%_)))))
                                        (_%E122895122913%_)))))
                              (_%E122895122913%_))))
                      (_%E122895122913%_))))
               (_%E122884122987%_
                (lambda ()
                  (if (gx#stx-pair? _%e122883122909%_)
                      (let ((_%e122886122959%_
                             (gx#syntax-e _%e122883122909%_)))
                        (let ((_%hd122887122962%_ (##car _%e122886122959%_))
                              (_%tl122888122964%_ (##cdr _%e122886122959%_)))
                          (if (gx#stx-pair? _%tl122888122964%_)
                              (let ((_%e122889122967%_
                                     (gx#syntax-e _%tl122888122964%_)))
                                (let ((_%hd122890122970%_
                                       (##car _%e122889122967%_))
                                      (_%tl122891122972%_
                                       (##cdr _%e122889122967%_)))
                                  (let ((_%test122975%_ _%hd122890122970%_))
                                    (if (gx#stx-pair? _%tl122891122972%_)
                                        (let ((_%e122892122977%_
                                               (gx#syntax-e
                                                _%tl122891122972%_)))
                                          (let ((_%hd122893122980%_
                                                 (##car _%e122892122977%_))
                                                (_%tl122894122982%_
                                                 (##cdr _%e122892122977%_)))
                                            (let ((_%K122985%_
                                                   _%hd122893122980%_))
                                              (if (gx#stx-null?
                                                   _%tl122894122982%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test122975%_
                                                   _%K122985%_
                                                   '#!void)
                                                  (_%E122885122955%_)))))
                                        (_%E122885122955%_)))))
                              (_%E122885122955%_))))
                      (_%E122885122955%_)))))
          (_%E122884122987%_))))
    (define gx#free-identifier=?
      (lambda (_%xid122867%_ _%yid122868%_)
        (let ((_%xe122870%_ (gx#resolve-identifier__0 _%xid122867%_))
              (_%ye122871%_ (gx#resolve-identifier__0 _%yid122868%_)))
          (if (and _%xe122870%_ _%ye122871%_)
              (let ((_%$e122874%_ (eq? _%xe122870%_ _%ye122871%_)))
                (if _%$e122874%_
                    _%$e122874%_
                    (if (##structure-instance-of? _%xe122870%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye122871%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe122870%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye122871%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe122870%_ _%ye122871%_)
                  '#f
                  (gx#stx-eq? _%xid122867%_ _%yid122868%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid122848%_ _%yid122849%_)
        (letrec ((_%context122851%_
                  (lambda (_%e122865%_)
                    (if (##structure-direct-instance-of?
                         _%e122865%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e122865%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks122852%_
                  (lambda (_%e122860%_)
                    (if (symbol? _%e122860%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e122860%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e122860%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e122860%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap122853%_
                  (lambda (_%e122858%_)
                    (if (symbol? _%e122858%_)
                        _%e122858%_
                        (gx#syntax-local-unwrap _%e122858%_)))))
          (let ((_%x122855%_ (_%unwrap122853%_ _%xid122848%_))
                (_%y122856%_ (_%unwrap122853%_ _%yid122849%_)))
            (if (gx#stx-eq? _%x122855%_ _%y122856%_)
                (if (eq? (_%context122851%_ _%x122855%_)
                         (_%context122851%_ _%y122856%_))
                    (equal? (_%marks122852%_ _%x122855%_)
                            (_%marks122852%_ _%y122856%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx122846%_)
        (if (gx#identifier? _%stx122846%_)
            (gx#core-identifier=? _%stx122846%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx122844%_)
        (if (gx#identifier? _%stx122844%_)
            (gx#core-identifier=? _%stx122844%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx122787%_ _%where122788%_)
        (let _%lp122790%_ ((_%rest122792%_ (gx#syntax->list _%stx122787%_)))
          (let* ((_%rest122793122801%_ _%rest122792%_)
                 (_%else122795122809%_ (lambda () '#t))
                 (_%K122797122822%_
                  (lambda (_%rest122812%_ _%hd122813%_)
                    (if (gx#identifier? _%hd122813%_)
                        (if (__find (lambda (_%g122815122817%_)
                                      (gx#bound-identifier=?
                                       _%g122815122817%_
                                       _%hd122813%_))
                                    _%rest122812%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where122788%_
                             _%hd122813%_)
                            (_%lp122790%_ _%rest122812%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where122788%_
                         _%hd122813%_)))))
            (if (pair? _%rest122793122801%_)
                (let ((_%hd122798122825%_ (##car _%rest122793122801%_))
                      (_%tl122799122827%_ (##cdr _%rest122793122801%_)))
                  (let* ((_%hd122830%_ _%hd122798122825%_)
                         (_%rest122832%_ _%tl122799122827%_))
                    (_%K122797122822%_ _%rest122832%_ _%hd122830%_)))
                (_%else122795122809%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx122837%_)
        (let ((_%where122839%_ _%stx122837%_))
          (gx#check-duplicate-identifiers__% _%stx122837%_ _%where122839%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g125479_
        (let ((_g125478_ (##length _g125479_)))
          (cond ((##fx= _g125478_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g125479_))
                ((##fx= _g125478_ 2)
                 (apply gx#check-duplicate-identifiers__% _g125479_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g125479_))))))
    (define gx#core-bind-values?
      (lambda (_%stx122779%_)
        (gx#stx-andmap
         (lambda (_%x122781%_)
           (let ((_%$e122783%_ (gx#identifier? _%x122781%_)))
             (if _%$e122783%_ _%$e122783%_ (gx#stx-false? _%x122781%_))))
         _%stx122779%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx122743%_ _%rebind?122744%_ _%phi122745%_ _%ctx122746%_)
        (gx#stx-for-each1
         (lambda (_%id122748%_)
           (if (gx#identifier? _%id122748%_)
               (gx#core-bind-runtime!__%
                _%id122748%_
                _%rebind?122744%_
                _%phi122745%_
                _%ctx122746%_)
               '#!void))
         _%stx122743%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx122753%_)
        (let* ((_%rebind?122755%_ '#f)
               (_%phi122757%_ (gx#current-expander-phi))
               (_%ctx122759%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx122753%_
           _%rebind?122755%_
           _%phi122757%_
           _%ctx122759%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx122761%_ _%rebind?122762%_)
        (let* ((_%phi122764%_ (gx#current-expander-phi))
               (_%ctx122766%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx122761%_
           _%rebind?122762%_
           _%phi122764%_
           _%ctx122766%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx122768%_ _%rebind?122769%_ _%phi122770%_)
        (let ((_%ctx122772%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx122768%_
           _%rebind?122769%_
           _%phi122770%_
           _%ctx122772%_))))
    (define gx#core-bind-values!
      (lambda _g125481_
        (let ((_g125480_ (##length _g125481_)))
          (cond ((##fx= _g125480_ 1) (apply gx#core-bind-values!__0 _g125481_))
                ((##fx= _g125480_ 2) (apply gx#core-bind-values!__1 _g125481_))
                ((##fx= _g125480_ 3) (apply gx#core-bind-values!__2 _g125481_))
                ((##fx= _g125480_ 4) (apply gx#core-bind-values!__% _g125481_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g125481_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx122738%_)
        (gx#stx-map1
         (lambda (_%x122740%_)
           (if (gx#identifier? _%x122740%_)
               (gx#core-quote-syntax__0 _%x122740%_)
               '#f))
         _%stx122738%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx122731%_)
        (if (gx#identifier? _%stx122731%_)
            (let* ((_%bind122733%_ (gx#resolve-identifier__0 _%stx122731%_))
                   (_%$e122735%_ (not _%bind122733%_)))
              (if _%$e122735%_
                  _%$e122735%_
                  (##structure-instance-of?
                   _%bind122733%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id122720%_ _%form122721%_)
        (let ((_%bind122723%_ (gx#resolve-identifier__0 _%id122720%_)))
          (if (##structure-instance-of? _%bind122723%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id122720%_)
              (if (not _%bind122723%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id122720%_)))
                      (gx#core-quote-syntax__0 _%id122720%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form122721%_
                       _%id122720%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form122721%_
                   _%id122720%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id122675%_ _%rebind?122676%_ _%phi122677%_ _%ctx122678%_)
        (let* ((_%key122680%_ (gx#core-identifier-key _%id122675%_))
               (_%eid122682%_
                (gx#make-binding-id__%
                 _%key122680%_
                 '#f
                 _%phi122677%_
                 _%ctx122678%_))
               (_%bind122688%_
                (if (##structure-instance-of?
                     _%ctx122678%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid122682%_
                     _%key122680%_
                     _%phi122677%_
                     _%ctx122678%_)
                    (if (##structure-instance-of?
                         _%ctx122678%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid122682%_
                         _%key122680%_
                         _%phi122677%_)
                        (if (##structure-instance-of?
                             _%ctx122678%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid122682%_
                             _%key122680%_
                             _%phi122677%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid122682%_
                             _%key122680%_
                             _%phi122677%_))))))
          (gx#bind-identifier!__%
           _%id122675%_
           _%bind122688%_
           _%rebind?122676%_
           _%phi122677%_
           _%ctx122678%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id122694%_)
        (let* ((_%rebind?122696%_ '#f)
               (_%phi122698%_ (gx#current-expander-phi))
               (_%ctx122700%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id122694%_
           _%rebind?122696%_
           _%phi122698%_
           _%ctx122700%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id122702%_ _%rebind?122703%_)
        (let* ((_%phi122705%_ (gx#current-expander-phi))
               (_%ctx122707%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id122702%_
           _%rebind?122703%_
           _%phi122705%_
           _%ctx122707%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id122709%_ _%rebind?122710%_ _%phi122711%_)
        (let ((_%ctx122713%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id122709%_
           _%rebind?122710%_
           _%phi122711%_
           _%ctx122713%_))))
    (define gx#core-bind-runtime!
      (lambda _g125483_
        (let ((_g125482_ (##length _g125483_)))
          (cond ((##fx= _g125482_ 1)
                 (apply gx#core-bind-runtime!__0 _g125483_))
                ((##fx= _g125482_ 2)
                 (apply gx#core-bind-runtime!__1 _g125483_))
                ((##fx= _g125482_ 3)
                 (apply gx#core-bind-runtime!__2 _g125483_))
                ((##fx= _g125482_ 4)
                 (apply gx#core-bind-runtime!__% _g125483_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g125483_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id122627%_
               _%eid122628%_
               _%rebind?122629%_
               _%phi122630%_
               _%ctx122631%_)
        (let* ((_%key122633%_ (gx#core-identifier-key _%id122627%_))
               (_%bind122638%_
                (if (##structure-instance-of?
                     _%ctx122631%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid122628%_
                     _%key122633%_
                     _%phi122630%_
                     _%ctx122631%_)
                    (if (##structure-instance-of?
                         _%ctx122631%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid122628%_
                         _%key122633%_
                         _%phi122630%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid122628%_
                         _%key122633%_
                         _%phi122630%_)))))
          (gx#bind-identifier!__%
           _%id122627%_
           _%bind122638%_
           _%rebind?122629%_
           _%phi122630%_
           _%ctx122631%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id122644%_ _%eid122645%_)
        (let* ((_%rebind?122647%_ '#f)
               (_%phi122649%_ (gx#current-expander-phi))
               (_%ctx122651%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id122644%_
           _%eid122645%_
           _%rebind?122647%_
           _%phi122649%_
           _%ctx122651%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id122653%_ _%eid122654%_ _%rebind?122655%_)
        (let* ((_%phi122657%_ (gx#current-expander-phi))
               (_%ctx122659%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id122653%_
           _%eid122654%_
           _%rebind?122655%_
           _%phi122657%_
           _%ctx122659%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id122661%_ _%eid122662%_ _%rebind?122663%_ _%phi122664%_)
        (let ((_%ctx122666%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id122661%_
           _%eid122662%_
           _%rebind?122663%_
           _%phi122664%_
           _%ctx122666%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g125485_
        (let ((_g125484_ (##length _g125485_)))
          (cond ((##fx= _g125484_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g125485_))
                ((##fx= _g125484_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g125485_))
                ((##fx= _g125484_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g125485_))
                ((##fx= _g125484_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g125485_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g125485_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id122587%_
               _%eid122588%_
               _%rebind?122589%_
               _%phi122590%_
               _%ctx122591%_)
        (gx#bind-identifier!__%
         _%id122587%_
         (##structure
          gx#extern-binding::t
          _%eid122588%_
          (gx#core-identifier-key _%id122587%_)
          _%phi122590%_)
         _%rebind?122589%_
         _%phi122590%_
         _%ctx122591%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id122596%_ _%eid122597%_)
        (let* ((_%rebind?122599%_ '#f)
               (_%phi122601%_ (gx#current-expander-phi))
               (_%ctx122603%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id122596%_
           _%eid122597%_
           _%rebind?122599%_
           _%phi122601%_
           _%ctx122603%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id122605%_ _%eid122606%_ _%rebind?122607%_)
        (let* ((_%phi122609%_ (gx#current-expander-phi))
               (_%ctx122611%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id122605%_
           _%eid122606%_
           _%rebind?122607%_
           _%phi122609%_
           _%ctx122611%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id122613%_ _%eid122614%_ _%rebind?122615%_ _%phi122616%_)
        (let ((_%ctx122618%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id122613%_
           _%eid122614%_
           _%rebind?122615%_
           _%phi122616%_
           _%ctx122618%_))))
    (define gx#core-bind-extern!
      (lambda _g125487_
        (let ((_g125486_ (##length _g125487_)))
          (cond ((##fx= _g125486_ 2) (apply gx#core-bind-extern!__0 _g125487_))
                ((##fx= _g125486_ 3) (apply gx#core-bind-extern!__1 _g125487_))
                ((##fx= _g125486_ 4) (apply gx#core-bind-extern!__2 _g125487_))
                ((##fx= _g125486_ 5) (apply gx#core-bind-extern!__% _g125487_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g125487_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id122541%_
               _%e122542%_
               _%rebind?122543%_
               _%phi122544%_
               _%ctx122545%_)
        (gx#bind-identifier!__%
         _%id122541%_
         (let ((_%key122550%_ (gx#core-identifier-key _%id122541%_))
               (_%e122551%_
                (if (or (##structure-instance-of? _%e122542%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e122542%_
                         'gx#expander-context::t))
                    _%e122542%_
                    (##structure
                     gx#user-expander::t
                     _%e122542%_
                     _%ctx122545%_
                     _%phi122544%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key122550%_
             '#t
             _%phi122544%_
             _%ctx122545%_)
            _%key122550%_
            _%phi122544%_
            _%e122551%_))
         _%rebind?122543%_
         _%phi122544%_
         _%ctx122545%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id122556%_ _%e122557%_)
        (let* ((_%rebind?122559%_ '#f)
               (_%phi122561%_ (gx#current-expander-phi))
               (_%ctx122563%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id122556%_
           _%e122557%_
           _%rebind?122559%_
           _%phi122561%_
           _%ctx122563%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id122565%_ _%e122566%_ _%rebind?122567%_)
        (let* ((_%phi122569%_ (gx#current-expander-phi))
               (_%ctx122571%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id122565%_
           _%e122566%_
           _%rebind?122567%_
           _%phi122569%_
           _%ctx122571%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id122573%_ _%e122574%_ _%rebind?122575%_ _%phi122576%_)
        (let ((_%ctx122578%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id122573%_
           _%e122574%_
           _%rebind?122575%_
           _%phi122576%_
           _%ctx122578%_))))
    (define gx#core-bind-syntax!
      (lambda _g125489_
        (let ((_g125488_ (##length _g125489_)))
          (cond ((##fx= _g125488_ 2) (apply gx#core-bind-syntax!__0 _g125489_))
                ((##fx= _g125488_ 3) (apply gx#core-bind-syntax!__1 _g125489_))
                ((##fx= _g125488_ 4) (apply gx#core-bind-syntax!__2 _g125489_))
                ((##fx= _g125488_ 5) (apply gx#core-bind-syntax!__% _g125489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g125489_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id122524%_ _%e122525%_ _%rebind?122526%_)
        (gx#core-bind-syntax!__%
         _%id122524%_
         _%e122525%_
         _%rebind?122526%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id122531%_ _%e122532%_)
        (let ((_%rebind?122534%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id122531%_
           _%e122532%_
           _%rebind?122534%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g125491_
        (let ((_g125490_ (##length _g125491_)))
          (cond ((##fx= _g125490_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g125491_))
                ((##fx= _g125490_ 3)
                 (apply gx#core-bind-root-syntax!__% _g125491_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g125491_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id122482%_
               _%alias-id122483%_
               _%rebind?122484%_
               _%phi122485%_
               _%ctx122486%_)
        (gx#bind-identifier!__%
         _%id122482%_
         (let ((_%key122488%_ (gx#core-identifier-key _%id122482%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key122488%_
             '#t
             _%phi122485%_
             _%ctx122486%_)
            _%key122488%_
            _%phi122485%_
            _%alias-id122483%_))
         _%rebind?122484%_
         _%phi122485%_
         _%ctx122486%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id122493%_ _%alias-id122494%_)
        (let* ((_%rebind?122496%_ '#f)
               (_%phi122498%_ (gx#current-expander-phi))
               (_%ctx122500%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id122493%_
           _%alias-id122494%_
           _%rebind?122496%_
           _%phi122498%_
           _%ctx122500%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id122502%_ _%alias-id122503%_ _%rebind?122504%_)
        (let* ((_%phi122506%_ (gx#current-expander-phi))
               (_%ctx122508%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id122502%_
           _%alias-id122503%_
           _%rebind?122504%_
           _%phi122506%_
           _%ctx122508%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id122510%_ _%alias-id122511%_ _%rebind?122512%_ _%phi122513%_)
        (let ((_%ctx122515%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id122510%_
           _%alias-id122511%_
           _%rebind?122512%_
           _%phi122513%_
           _%ctx122515%_))))
    (define gx#core-bind-alias!
      (lambda _g125493_
        (let ((_g125492_ (##length _g125493_)))
          (cond ((##fx= _g125492_ 2) (apply gx#core-bind-alias!__0 _g125493_))
                ((##fx= _g125492_ 3) (apply gx#core-bind-alias!__1 _g125493_))
                ((##fx= _g125492_ 4) (apply gx#core-bind-alias!__2 _g125493_))
                ((##fx= _g125492_ 5) (apply gx#core-bind-alias!__% _g125493_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g125493_))))))
    (define gx#make-binding-id__%
      (lambda (_%key122432%_ _%syntax?122433%_ _%phi122434%_ _%ctx122435%_)
        (if (uninterned-symbol? _%key122432%_)
            (##gensym 'L)
            (if (pair? _%key122432%_)
                (gensym (##car _%key122432%_))
                (if (##structure-instance-of? _%ctx122435%_ 'gx#top-context::t)
                    (let ((_%ns122440%_
                           (gx#core-context-namespace__% _%ctx122435%_)))
                      (if (and (fxzero? _%phi122434%_) (not _%syntax?122433%_))
                          (if _%ns122440%_
                              (make-symbol__1 _%ns122440%_ '"#" _%key122432%_)
                              _%key122432%_)
                          (if _%syntax?122433%_
                              (make-symbol__1
                               (let ((_%$e122444%_ _%ns122440%_))
                                 (if _%$e122444%_ _%$e122444%_ '""))
                               '"[:"
                               (number->string _%phi122434%_)
                               '":]#"
                               _%key122432%_)
                              (make-symbol__1
                               (let ((_%$e122448%_ _%ns122440%_))
                                 (if _%$e122448%_ _%$e122448%_ '""))
                               '"["
                               (number->string _%phi122434%_)
                               '"]#"
                               _%key122432%_))))
                    (gensym _%key122432%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key122455%_)
        (let* ((_%syntax?122457%_ '#f)
               (_%phi122459%_ (gx#current-expander-phi))
               (_%ctx122461%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key122455%_
           _%syntax?122457%_
           _%phi122459%_
           _%ctx122461%_))))
    (define gx#make-binding-id__1
      (lambda (_%key122463%_ _%syntax?122464%_)
        (let* ((_%phi122466%_ (gx#current-expander-phi))
               (_%ctx122468%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key122463%_
           _%syntax?122464%_
           _%phi122466%_
           _%ctx122468%_))))
    (define gx#make-binding-id__2
      (lambda (_%key122470%_ _%syntax?122471%_ _%phi122472%_)
        (let ((_%ctx122474%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key122470%_
           _%syntax?122471%_
           _%phi122472%_
           _%ctx122474%_))))
    (define gx#make-binding-id
      (lambda _g125495_
        (let ((_g125494_ (##length _g125495_)))
          (cond ((##fx= _g125494_ 1) (apply gx#make-binding-id__0 _g125495_))
                ((##fx= _g125494_ 2) (apply gx#make-binding-id__1 _g125495_))
                ((##fx= _g125494_ 3) (apply gx#make-binding-id__2 _g125495_))
                ((##fx= _g125494_ 4) (apply gx#make-binding-id__% _g125495_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g125495_))))))))
