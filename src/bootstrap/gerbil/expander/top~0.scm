(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1733868036)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx125335%_)
        (letrec ((_%expand-special125337%_
                  (lambda (_%hd125339%_ _%K125340%_ _%rest125341%_ _%r125342%_)
                    (_%K125340%_
                     _%rest125341%_
                     (cons (gx#core-expand-top _%hd125339%_) _%r125342%_)))))
          (gx#core-expand-block__0 _%stx125335%_ _%expand-special125337%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx125088%_)
        (letrec ((_%expand-special125090%_
                  (lambda (_%hd125210%_ _%K125211%_ _%rest125212%_ _%r125213%_)
                    (let* ((_%K125217%_
                            (lambda (_%e125215%_)
                              (_%K125211%_
                               _%rest125212%_
                               (cons _%e125215%_ _%r125213%_))))
                           (_%e125218125247%_ _%hd125210%_)
                           (_%E125242125251%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e125218125247%_)))
                           (_%E125238125263%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125218125247%_)
                                  (let ((_%e125243125255%_
                                         (gx#syntax-e _%e125218125247%_)))
                                    (let ((_%hd125244125258%_
                                           (##car _%e125243125255%_))
                                          (_%tl125245125260%_
                                           (##cdr _%e125243125255%_)))
                                      (if (and (gx#identifier?
                                                _%hd125244125258%_)
                                               (gx#core-identifier=?
                                                _%hd125244125258%_
                                                '%#define-runtime))
                                          (_%K125217%_
                                           (gx#core-expand-define-runtime%
                                            _%hd125210%_))
                                          (_%E125242125251%_))))
                                  (_%E125242125251%_))))
                           (_%E125234125275%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125218125247%_)
                                  (let ((_%e125239125267%_
                                         (gx#syntax-e _%e125218125247%_)))
                                    (let ((_%hd125240125270%_
                                           (##car _%e125239125267%_))
                                          (_%tl125241125272%_
                                           (##cdr _%e125239125267%_)))
                                      (if (and (gx#identifier?
                                                _%hd125240125270%_)
                                               (gx#core-identifier=?
                                                _%hd125240125270%_
                                                '%#define-alias))
                                          (_%K125217%_
                                           (gx#core-expand-define-alias%
                                            _%hd125210%_))
                                          (_%E125238125263%_))))
                                  (_%E125238125263%_))))
                           (_%E125224125287%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125218125247%_)
                                  (let ((_%e125235125279%_
                                         (gx#syntax-e _%e125218125247%_)))
                                    (let ((_%hd125236125282%_
                                           (##car _%e125235125279%_))
                                          (_%tl125237125284%_
                                           (##cdr _%e125235125279%_)))
                                      (if (and (gx#identifier?
                                                _%hd125236125282%_)
                                               (gx#core-identifier=?
                                                _%hd125236125282%_
                                                '%#define-syntax))
                                          (_%K125217%_
                                           (gx#core-expand-define-syntax%
                                            _%hd125210%_))
                                          (_%E125234125275%_))))
                                  (_%E125234125275%_))))
                           (_%E125220125319%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125218125247%_)
                                  (let ((_%e125225125291%_
                                         (gx#syntax-e _%e125218125247%_)))
                                    (let ((_%hd125226125294%_
                                           (##car _%e125225125291%_))
                                          (_%tl125227125296%_
                                           (##cdr _%e125225125291%_)))
                                      (if (and (gx#identifier?
                                                _%hd125226125294%_)
                                               (gx#core-identifier=?
                                                _%hd125226125294%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl125227125296%_)
                                              (let ((_%e125228125299%_
                                                     (gx#syntax-e
                                                      _%tl125227125296%_)))
                                                (let ((_%hd125229125302%_
                                                       (##car _%e125228125299%_))
                                                      (_%tl125230125304%_
                                                       (##cdr _%e125228125299%_)))
                                                  (let ((_%hd-bind125307%_
                                                         _%hd125229125302%_))
                                                    (if (gx#stx-pair?
                                                         _%tl125230125304%_)
                                                        (let ((_%e125231125309%_
                                                               (gx#syntax-e
                                                                _%tl125230125304%_)))
                                                          (let ((_%hd125232125312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e125231125309%_))
                        (_%tl125233125314%_ (##cdr _%e125231125309%_)))
                    (let ((_%expr125317%_ _%hd125232125312%_))
                      (if (gx#stx-null? _%tl125233125314%_)
                          (if (gx#core-bind-values? _%hd-bind125307%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind125307%_)
                                (_%K125217%_ _%hd125210%_))
                              (_%E125224125287%_))
                          (_%E125224125287%_)))))
                (_%E125224125287%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125224125287%_))
                                          (_%E125224125287%_))))
                                  (_%E125224125287%_))))
                           (_%E125219125331%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125218125247%_)
                                  (let ((_%e125221125323%_
                                         (gx#syntax-e _%e125218125247%_)))
                                    (let ((_%hd125222125326%_
                                           (##car _%e125221125323%_))
                                          (_%tl125223125328%_
                                           (##cdr _%e125221125323%_)))
                                      (if (and (gx#identifier?
                                                _%hd125222125326%_)
                                               (gx#core-identifier=?
                                                _%hd125222125326%_
                                                '%#begin-syntax))
                                          (_%K125217%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd125210%_))
                                          (_%E125220125319%_))))
                                  (_%E125220125319%_)))))
                      (_%E125219125331%_))))
                 (_%eval-body125091%_
                  (lambda (_%rbody125099%_)
                    (let _%lp125101%_ ((_%rest125103%_ _%rbody125099%_)
                                       (_%body125104%_ '())
                                       (_%ebody125105%_ '()))
                      (let* ((_%rest125106125114%_ _%rest125103%_)
                             (_%else125108125122%_
                              (lambda ()
                                (values _%body125104%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody125105%_)
                                          (gx#stx-source _%stx125088%_))))))
                             (_%K125110125198%_
                              (lambda (_%rest125125%_ _%hd125126%_)
                                (let* ((_%e125127125144%_ _%hd125126%_)
                                       (_%E125139125148%_
                                        (lambda ()
                                          (_%lp125101%_
                                           _%rest125125%_
                                           (cons _%hd125126%_ _%body125104%_)
                                           (cons _%hd125126%_
                                                 _%ebody125105%_))))
                                       (_%E125129125160%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e125127125144%_)
                                              (let ((_%e125140125152%_
                                                     (gx#syntax-e
                                                      _%e125127125144%_)))
                                                (let ((_%hd125141125155%_
                                                       (##car _%e125140125152%_))
                                                      (_%tl125142125157%_
                                                       (##cdr _%e125140125152%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd125141125155%_)
                                                           (gx#core-identifier=?
                                                            _%hd125141125155%_
                                                            '%#begin-syntax))
                                                      (_%lp125101%_
                                                       _%rest125125%_
                                                       (cons _%hd125126%_
                                                             _%body125104%_)
                                                       _%ebody125105%_)
                                                      (_%E125139125148%_))))
                                              (_%E125139125148%_))))
                                       (_%E125128125194%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e125127125144%_)
                                              (let ((_%e125130125164%_
                                                     (gx#syntax-e
                                                      _%e125127125144%_)))
                                                (let ((_%hd125131125167%_
                                                       (##car _%e125130125164%_))
                                                      (_%tl125132125169%_
                                                       (##cdr _%e125130125164%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd125131125167%_)
                                                           (gx#core-identifier=?
                                                            _%hd125131125167%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl125132125169%_)
                                                          (let ((_%e125133125172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl125132125169%_)))
                    (let ((_%hd125134125175%_ (##car _%e125133125172%_))
                          (_%tl125135125177%_ (##cdr _%e125133125172%_)))
                      (let ((_%hd-bind125180%_ _%hd125134125175%_))
                        (if (gx#stx-pair? _%tl125135125177%_)
                            (let ((_%e125136125182%_
                                   (gx#syntax-e _%tl125135125177%_)))
                              (let ((_%hd125137125185%_
                                     (##car _%e125136125182%_))
                                    (_%tl125138125187%_
                                     (##cdr _%e125136125182%_)))
                                (let ((_%expr125190%_ _%hd125137125185%_))
                                  (if (gx#stx-null? _%tl125138125187%_)
                                      (let ((_%ehd125192%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind125180%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr125190%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd125126%_))))
                                        (_%lp125101%_
                                         _%rest125125%_
                                         (cons _%ehd125192%_ _%body125104%_)
                                         (cons _%ehd125192%_ _%ebody125105%_)))
                                      (_%E125129125160%_)))))
                            (_%E125129125160%_)))))
                  (_%E125129125160%_))
              (_%E125129125160%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125129125160%_)))))
                                  (_%E125128125194%_)))))
                        (if (pair? _%rest125106125114%_)
                            (let ((_%hd125111125201%_
                                   (##car _%rest125106125114%_))
                                  (_%tl125112125203%_
                                   (##cdr _%rest125106125114%_)))
                              (let* ((_%hd125206%_ _%hd125111125201%_)
                                     (_%rest125208%_ _%tl125112125203%_))
                                (_%K125110125198%_
                                 _%rest125208%_
                                 _%hd125206%_)))
                            (_%else125108125122%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody125094%_
                     (gx#core-expand-block__1
                      _%stx125088%_
                      _%expand-special125090%_
                      '#f))
                    (_g125358_ (_%eval-body125091%_ _%rbody125094%_)))
               (begin
                 (let ((_g125359_
                        (if (##values? _g125358_)
                            (##vector-length _g125358_)
                            1)))
                   (if (not (##fx= _g125359_ 2))
                       (error "Context expects 2 values" _g125359_)))
                 (let ((_%expanded-body125096%_ (##vector-ref _g125358_ 0))
                       (_%value125097%_ (##vector-ref _g125358_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body125096%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value125097%_ '())))
                    (gx#stx-source _%stx125088%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx125058%_)
        (let* ((_%e125059125066%_ _%stx125058%_)
               (_%E125061125070%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125059125066%_)))
               (_%E125060125084%_
                (lambda ()
                  (if (gx#stx-pair? _%e125059125066%_)
                      (let ((_%e125062125074%_
                             (gx#syntax-e _%e125059125066%_)))
                        (let ((_%hd125063125077%_ (##car _%e125062125074%_))
                              (_%tl125064125079%_ (##cdr _%e125062125074%_)))
                          (let ((_%body125082%_ _%tl125064125079%_))
                            (if (gx#stx-list? _%body125082%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body125082%_)
                                 (gx#stx-source _%stx125058%_))
                                (_%E125061125070%_)))))
                      (_%E125061125070%_)))))
          (_%E125060125084%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx125056%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx125056%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx125002%_)
        (let* ((_%e125003125016%_ _%stx125002%_)
               (_%E125005125020%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125003125016%_)))
               (_%E125004125052%_
                (lambda ()
                  (if (gx#stx-pair? _%e125003125016%_)
                      (let ((_%e125006125024%_
                             (gx#syntax-e _%e125003125016%_)))
                        (let ((_%hd125007125027%_ (##car _%e125006125024%_))
                              (_%tl125008125029%_ (##cdr _%e125006125024%_)))
                          (if (gx#stx-pair? _%tl125008125029%_)
                              (let ((_%e125009125032%_
                                     (gx#syntax-e _%tl125008125029%_)))
                                (let ((_%hd125010125035%_
                                       (##car _%e125009125032%_))
                                      (_%tl125011125037%_
                                       (##cdr _%e125009125032%_)))
                                  (let ((_%ann125040%_ _%hd125010125035%_))
                                    (if (gx#stx-pair? _%tl125011125037%_)
                                        (let ((_%e125012125042%_
                                               (gx#syntax-e
                                                _%tl125011125037%_)))
                                          (let ((_%hd125013125045%_
                                                 (##car _%e125012125042%_))
                                                (_%tl125014125047%_
                                                 (##cdr _%e125012125042%_)))
                                            (let ((_%expr125050%_
                                                   _%hd125013125045%_))
                                              (if (gx#stx-null?
                                                   _%tl125014125047%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann125040%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr125050%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx125002%_))
                                                  (_%E125005125020%_)))))
                                        (_%E125005125020%_)))))
                              (_%E125005125020%_))))
                      (_%E125005125020%_)))))
          (_%E125004125052%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx124726%_ _%body124727%_)
        (letrec ((_%expand-special124729%_
                  (lambda (_%hd124997%_ _%K124998%_ _%rest124999%_ _%r125000%_)
                    (_%K124998%_
                     '()
                     (cons (_%expand-internal124730%_
                            _%hd124997%_
                            _%rest124999%_)
                           _%r125000%_))))
                 (_%expand-internal124730%_
                  (lambda (_%hd124993%_ _%rest124994%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal124732%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd124993%_ _%rest124994%_))
                          (gx#stx-source _%stx124726%_))
                         _%expand-internal-special124731%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj125352
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj125352)
                       __obj125352))))
                 (_%expand-internal-special124731%_
                  (lambda (_%hd124888%_ _%K124889%_ _%rest124890%_ _%r124891%_)
                    (let* ((_%e124892124917%_ _%hd124888%_)
                           (_%E124912124921%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124892124917%_)))
                           (_%E124908124933%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124892124917%_)
                                  (let ((_%e124913124925%_
                                         (gx#syntax-e _%e124892124917%_)))
                                    (let ((_%hd124914124928%_
                                           (##car _%e124913124925%_))
                                          (_%tl124915124930%_
                                           (##cdr _%e124913124925%_)))
                                      (if (and (gx#identifier?
                                                _%hd124914124928%_)
                                               (gx#core-identifier=?
                                                _%hd124914124928%_
                                                '%#declare))
                                          (_%K124889%_
                                           _%rest124890%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd124888%_)
                                                 _%r124891%_))
                                          (_%E124912124921%_))))
                                  (_%E124912124921%_))))
                           (_%E124904124945%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124892124917%_)
                                  (let ((_%e124909124937%_
                                         (gx#syntax-e _%e124892124917%_)))
                                    (let ((_%hd124910124940%_
                                           (##car _%e124909124937%_))
                                          (_%tl124911124942%_
                                           (##cdr _%e124909124937%_)))
                                      (if (and (gx#identifier?
                                                _%hd124910124940%_)
                                               (gx#core-identifier=?
                                                _%hd124910124940%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd124888%_)
                                            (_%K124889%_
                                             _%rest124890%_
                                             _%r124891%_))
                                          (_%E124908124933%_))))
                                  (_%E124908124933%_))))
                           (_%E124894124957%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124892124917%_)
                                  (let ((_%e124905124949%_
                                         (gx#syntax-e _%e124892124917%_)))
                                    (let ((_%hd124906124952%_
                                           (##car _%e124905124949%_))
                                          (_%tl124907124954%_
                                           (##cdr _%e124905124949%_)))
                                      (if (and (gx#identifier?
                                                _%hd124906124952%_)
                                               (gx#core-identifier=?
                                                _%hd124906124952%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd124888%_)
                                            (_%K124889%_
                                             _%rest124890%_
                                             _%r124891%_))
                                          (_%E124904124945%_))))
                                  (_%E124904124945%_))))
                           (_%E124893124989%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124892124917%_)
                                  (let ((_%e124895124961%_
                                         (gx#syntax-e _%e124892124917%_)))
                                    (let ((_%hd124896124964%_
                                           (##car _%e124895124961%_))
                                          (_%tl124897124966%_
                                           (##cdr _%e124895124961%_)))
                                      (if (and (gx#identifier?
                                                _%hd124896124964%_)
                                               (gx#core-identifier=?
                                                _%hd124896124964%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl124897124966%_)
                                              (let ((_%e124898124969%_
                                                     (gx#syntax-e
                                                      _%tl124897124966%_)))
                                                (let ((_%hd124899124972%_
                                                       (##car _%e124898124969%_))
                                                      (_%tl124900124974%_
                                                       (##cdr _%e124898124969%_)))
                                                  (let ((_%hd-bind124977%_
                                                         _%hd124899124972%_))
                                                    (if (gx#stx-pair?
                                                         _%tl124900124974%_)
                                                        (let ((_%e124901124979%_
                                                               (gx#syntax-e
                                                                _%tl124900124974%_)))
                                                          (let ((_%hd124902124982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e124901124979%_))
                        (_%tl124903124984%_ (##cdr _%e124901124979%_)))
                    (let ((_%expr124987%_ _%hd124902124982%_))
                      (if (gx#stx-null? _%tl124903124984%_)
                          (if (gx#core-bind-values? _%hd-bind124977%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind124977%_)
                                (_%K124889%_
                                 _%rest124890%_
                                 (cons _%hd124888%_ _%r124891%_)))
                              (_%E124894124957%_))
                          (_%E124894124957%_)))))
                (_%E124894124957%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124894124957%_))
                                          (_%E124894124957%_))))
                                  (_%E124894124957%_)))))
                      (_%E124893124989%_))))
                 (_%wrap-internal124732%_
                  (lambda (_%rbody124734%_)
                    (let _%lp124736%_ ((_%rest124738%_ _%rbody124734%_)
                                       (_%decls124739%_ '())
                                       (_%bind124740%_ '())
                                       (_%body124741%_ '()))
                      (let* ((_%e124742124749%_ _%rest124738%_)
                             (_%E124744124798%_
                              (lambda ()
                                (let* ((_%body124793%_
                                        (let* ((_%body124752124762%_
                                                _%body124741%_)
                                               (_%else124755124770%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body124741%_)
                                                   (gx#stx-source
                                                    _%stx124726%_)))))
                                          (let ((_%K124760124790%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx124726%_)))
                                                (_%K124757124776%_
                                                 (lambda (_%expr124774%_)
                                                   _%expr124774%_)))
                                            (let ((_%try-match124754124786%_
                                                   (lambda ()
                                                     (if (pair? _%body124752124762%_)
                                                         (let ((_%tl124759124781%_
                                                                (##cdr _%body124752124762%_))
                                                               (_%hd124758124779%_
                                                                (##car _%body124752124762%_)))
                                                           (if (null? _%tl124759124781%_)
                                                               (let ((_%expr124784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd124758124779%_))
                         (_%K124757124776%_ _%expr124784%_))
                       (_%else124755124770%_)))
                 (_%else124755124770%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body124752124762%_)
                                                  (_%K124760124790%_)
                                                  (_%try-match124754124786%_))))))
                                       (_%body124795%_
                                        (if (null? _%bind124740%_)
                                            _%body124793%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind124740%_
                                                         (cons _%body124793%_
                                                               '())))
                                             (gx#stx-source _%stx124726%_)))))
                                  (if (null? _%decls124739%_)
                                      _%body124795%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls124739%_
                                                   (cons _%body124795%_ '())))
                                       (gx#stx-source _%stx124726%_))))))
                             (_%E124743124884%_
                              (lambda ()
                                (if (gx#stx-pair? _%e124742124749%_)
                                    (let ((_%e124745124802%_
                                           (gx#syntax-e _%e124742124749%_)))
                                      (let ((_%hd124746124805%_
                                             (##car _%e124745124802%_))
                                            (_%tl124747124807%_
                                             (##cdr _%e124745124802%_)))
                                        (let* ((_%hd124810%_
                                                _%hd124746124805%_)
                                               (_%rest124812%_
                                                _%tl124747124807%_)
                                               (_%e124813124830%_ _%hd124810%_)
                                               (_%E124825124834%_
                                                (lambda ()
                                                  (if (null? _%bind124740%_)
                                                      (_%lp124736%_
                                                       _%rest124812%_
                                                       _%decls124739%_
                                                       _%bind124740%_
                                                       (cons _%hd124810%_
                                                             _%body124741%_))
                                                      (_%lp124736%_
                                                       _%rest124812%_
                                                       _%decls124739%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd124810%_ '()))
                     _%bind124740%_)
               _%body124741%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E124815124848%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e124813124830%_)
                                                      (let ((_%e124826124838%_
                                                             (gx#syntax-e
                                                              _%e124813124830%_)))
                                                        (let ((_%hd124827124841%_
                                                               (##car _%e124826124838%_))
                                                              (_%tl124828124843%_
                                                               (##cdr _%e124826124838%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd124827124841%_)
                           (gx#core-identifier=?
                            _%hd124827124841%_
                            '%#declare))
                      (let ((_%xdecls124846%_ _%tl124828124843%_))
                        (_%lp124736%_
                         _%rest124812%_
                         (gx#stx-foldr cons _%decls124739%_ _%xdecls124846%_)
                         _%bind124740%_
                         _%body124741%_))
                      (_%E124825124834%_))))
              (_%E124825124834%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E124814124880%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e124813124830%_)
                                                      (let ((_%e124816124852%_
                                                             (gx#syntax-e
                                                              _%e124813124830%_)))
                                                        (let ((_%hd124817124855%_
                                                               (##car _%e124816124852%_))
                                                              (_%tl124818124857%_
                                                               (##cdr _%e124816124852%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd124817124855%_)
                           (gx#core-identifier=?
                            _%hd124817124855%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl124818124857%_)
                          (let ((_%e124819124860%_
                                 (gx#syntax-e _%tl124818124857%_)))
                            (let ((_%hd124820124863%_
                                   (##car _%e124819124860%_))
                                  (_%tl124821124865%_
                                   (##cdr _%e124819124860%_)))
                              (let ((_%hd-bind124868%_ _%hd124820124863%_))
                                (if (gx#stx-pair? _%tl124821124865%_)
                                    (let ((_%e124822124870%_
                                           (gx#syntax-e _%tl124821124865%_)))
                                      (let ((_%hd124823124873%_
                                             (##car _%e124822124870%_))
                                            (_%tl124824124875%_
                                             (##cdr _%e124822124870%_)))
                                        (let ((_%expr124878%_
                                               _%hd124823124873%_))
                                          (if (gx#stx-null? _%tl124824124875%_)
                                              (_%lp124736%_
                                               _%rest124812%_
                                               _%decls124739%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind124868%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr124878%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind124740%_)
                                               _%body124741%_)
                                              (_%E124815124848%_)))))
                                    (_%E124815124848%_)))))
                          (_%E124815124848%_))
                      (_%E124815124848%_))))
              (_%E124815124848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E124814124880%_))))
                                    (_%E124744124798%_)))))
                        (_%E124743124884%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body124727%_)
            (gx#stx-source _%stx124726%_))
           _%expand-special124729%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx124664%_)
        (let* ((_%e124665124672%_ _%stx124664%_)
               (_%E124667124676%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124665124672%_)))
               (_%E124666124722%_
                (lambda ()
                  (if (gx#stx-pair? _%e124665124672%_)
                      (let ((_%e124668124680%_
                             (gx#syntax-e _%e124665124672%_)))
                        (let ((_%hd124669124683%_ (##car _%e124668124680%_))
                              (_%tl124670124685%_ (##cdr _%e124668124680%_)))
                          (let ((_%body124688%_ _%tl124670124685%_))
                            (if (gx#stx-list? _%body124688%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl124690%_)
                                     (let* ((_%e124691124698%_ _%decl124690%_)
                                            (_%E124693124702%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e124691124698%_)))
                                            (_%E124692124718%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e124691124698%_)
                                                   (let ((_%e124694124706%_
                                                          (gx#syntax-e
                                                           _%e124691124698%_)))
                                                     (let ((_%hd124695124709%_
                                                            (##car _%e124694124706%_))
                                                           (_%tl124696124711%_
                                                            (##cdr _%e124694124706%_)))
                                                       (let* ((_%head124714%_
                                                               _%hd124695124709%_)
                                                              (_%args124716%_
                                                               _%tl124696124711%_))
                                                         (if (gx#stx-list?
                                                              _%args124716%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl124690%_)
                                                             (_%E124693124702%_)))))
                                                   (_%E124693124702%_)))))
                                       (_%E124692124718%_)))
                                   _%body124688%_))
                                 (gx#stx-source _%stx124664%_))
                                (_%E124667124676%_)))))
                      (_%E124667124676%_)))))
          (_%E124666124722%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx124568%_)
        (let* ((_%e124569124576%_ _%stx124568%_)
               (_%E124571124580%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124569124576%_)))
               (_%E124570124660%_
                (lambda ()
                  (if (gx#stx-pair? _%e124569124576%_)
                      (let ((_%e124572124584%_
                             (gx#syntax-e _%e124569124576%_)))
                        (let ((_%hd124573124587%_ (##car _%e124572124584%_))
                              (_%tl124574124589%_ (##cdr _%e124572124584%_)))
                          (let ((_%body124592%_ _%tl124574124589%_))
                            (let _%lp124594%_ ((_%rest124596%_ _%body124592%_)
                                               (_%r124597%_ '()))
                              (let* ((_%e124598124612%_ _%rest124596%_)
                                     (_%E124610124616%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx124568%_)))
                                     (_%E124600124620%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e124598124612%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r124597%_))
                                             (gx#stx-source _%stx124568%_))
                                            (_%E124610124616%_))))
                                     (_%E124599124656%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e124598124612%_)
                                            (let ((_%e124601124624%_
                                                   (gx#syntax-e
                                                    _%e124598124612%_)))
                                              (let ((_%hd124602124627%_
                                                     (##car _%e124601124624%_))
                                                    (_%tl124603124629%_
                                                     (##cdr _%e124601124624%_)))
                                                (if (gx#stx-pair?
                                                     _%hd124602124627%_)
                                                    (let ((_%e124604124632%_
                                                           (gx#syntax-e
                                                            _%hd124602124627%_)))
                                                      (let ((_%hd124605124635%_
                                                             (##car _%e124604124632%_))
                                                            (_%tl124606124637%_
                                                             (##cdr _%e124604124632%_)))
                                                        (let ((_%id124640%_
                                                               _%hd124605124635%_))
                                                          (if (gx#stx-pair?
                                                               _%tl124606124637%_)
                                                              (let ((_%e124607124642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl124606124637%_)))
                        (let ((_%hd124608124645%_ (##car _%e124607124642%_))
                              (_%tl124609124647%_ (##cdr _%e124607124642%_)))
                          (let ((_%eid124650%_ _%hd124608124645%_))
                            (if (gx#stx-null? _%tl124609124647%_)
                                (let ((_%rest124652%_ _%tl124603124629%_))
                                  (if (and (gx#identifier? _%id124640%_)
                                           (gx#identifier? _%eid124650%_))
                                      (let ((_%eid124654%_
                                             (gx#stx-e _%eid124650%_)))
                                        (gx#core-bind-extern!__0
                                         _%id124640%_
                                         _%eid124654%_)
                                        (_%lp124594%_
                                         _%rest124652%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id124640%_)
                                                     (cons _%eid124654%_ '()))
                                               _%r124597%_)))
                                      (_%E124600124620%_)))
                                (_%E124600124620%_)))))
                      (_%E124600124620%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E124600124620%_))))
                                            (_%E124600124620%_)))))
                                (_%E124599124656%_))))))
                      (_%E124571124580%_)))))
          (_%E124570124660%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx124514%_)
        (let* ((_%e124515124528%_ _%stx124514%_)
               (_%E124517124532%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124515124528%_)))
               (_%E124516124564%_
                (lambda ()
                  (if (gx#stx-pair? _%e124515124528%_)
                      (let ((_%e124518124536%_
                             (gx#syntax-e _%e124515124528%_)))
                        (let ((_%hd124519124539%_ (##car _%e124518124536%_))
                              (_%tl124520124541%_ (##cdr _%e124518124536%_)))
                          (if (gx#stx-pair? _%tl124520124541%_)
                              (let ((_%e124521124544%_
                                     (gx#syntax-e _%tl124520124541%_)))
                                (let ((_%hd124522124547%_
                                       (##car _%e124521124544%_))
                                      (_%tl124523124549%_
                                       (##cdr _%e124521124544%_)))
                                  (let ((_%hd124552%_ _%hd124522124547%_))
                                    (if (gx#stx-pair? _%tl124523124549%_)
                                        (let ((_%e124524124554%_
                                               (gx#syntax-e
                                                _%tl124523124549%_)))
                                          (let ((_%hd124525124557%_
                                                 (##car _%e124524124554%_))
                                                (_%tl124526124559%_
                                                 (##cdr _%e124524124554%_)))
                                            (let ((_%expr124562%_
                                                   _%hd124525124557%_))
                                              (if (gx#stx-null?
                                                   _%tl124526124559%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd124552%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd124552%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd124552%_)
                             (cons (gx#core-expand-expression _%expr124562%_)
                                   '())))
                 (gx#stx-source _%stx124514%_)))
              (_%E124517124532%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124517124532%_)))))
                                        (_%E124517124532%_)))))
                              (_%E124517124532%_))))
                      (_%E124517124532%_)))))
          (_%E124516124564%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx124458%_)
        (let* ((_%e124459124472%_ _%stx124458%_)
               (_%E124461124476%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124459124472%_)))
               (_%E124460124510%_
                (lambda ()
                  (if (gx#stx-pair? _%e124459124472%_)
                      (let ((_%e124462124480%_
                             (gx#syntax-e _%e124459124472%_)))
                        (let ((_%hd124463124483%_ (##car _%e124462124480%_))
                              (_%tl124464124485%_ (##cdr _%e124462124480%_)))
                          (if (gx#stx-pair? _%tl124464124485%_)
                              (let ((_%e124465124488%_
                                     (gx#syntax-e _%tl124464124485%_)))
                                (let ((_%hd124466124491%_
                                       (##car _%e124465124488%_))
                                      (_%tl124467124493%_
                                       (##cdr _%e124465124488%_)))
                                  (let ((_%id124496%_ _%hd124466124491%_))
                                    (if (gx#stx-pair? _%tl124467124493%_)
                                        (let ((_%e124468124498%_
                                               (gx#syntax-e
                                                _%tl124467124493%_)))
                                          (let ((_%hd124469124501%_
                                                 (##car _%e124468124498%_))
                                                (_%tl124470124503%_
                                                 (##cdr _%e124468124498%_)))
                                            (let ((_%binding-id124506%_
                                                   _%hd124469124501%_))
                                              (if (gx#stx-null?
                                                   _%tl124470124503%_)
                                                  (if (and (gx#identifier?
                                                            _%id124496%_)
                                                           (gx#identifier?
                                                            _%binding-id124506%_))
                                                      (let ((_%eid124508%_
                                                             (gx#stx-e
                                                              _%binding-id124506%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id124496%_
                                                         _%eid124508%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id124496%_)
                             (cons _%eid124508%_ '())))))
              (_%E124461124476%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124461124476%_)))))
                                        (_%E124461124476%_)))))
                              (_%E124461124476%_))))
                      (_%E124461124476%_)))))
          (_%E124460124510%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx124401%_)
        (let* ((_%e124402124415%_ _%stx124401%_)
               (_%E124404124419%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124402124415%_)))
               (_%E124403124454%_
                (lambda ()
                  (if (gx#stx-pair? _%e124402124415%_)
                      (let ((_%e124405124423%_
                             (gx#syntax-e _%e124402124415%_)))
                        (let ((_%hd124406124426%_ (##car _%e124405124423%_))
                              (_%tl124407124428%_ (##cdr _%e124405124423%_)))
                          (if (gx#stx-pair? _%tl124407124428%_)
                              (let ((_%e124408124431%_
                                     (gx#syntax-e _%tl124407124428%_)))
                                (let ((_%hd124409124434%_
                                       (##car _%e124408124431%_))
                                      (_%tl124410124436%_
                                       (##cdr _%e124408124431%_)))
                                  (let ((_%id124439%_ _%hd124409124434%_))
                                    (if (gx#stx-pair? _%tl124410124436%_)
                                        (let ((_%e124411124441%_
                                               (gx#syntax-e
                                                _%tl124410124436%_)))
                                          (let ((_%hd124412124444%_
                                                 (##car _%e124411124441%_))
                                                (_%tl124413124446%_
                                                 (##cdr _%e124411124441%_)))
                                            (let ((_%expr124449%_
                                                   _%hd124412124444%_))
                                              (if (gx#stx-null?
                                                   _%tl124413124446%_)
                                                  (if (gx#identifier?
                                                       _%id124439%_)
                                                      (let ((_g125360_
                                                             (gx#core-expand-expression+1
                                                              _%expr124449%_)))
                                                        (begin
                                                          (let ((_g125361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g125360_)
                             (##vector-length _g125360_)
                             1)))
                    (if (not (##fx= _g125361_ 2))
                        (error "Context expects 2 values" _g125361_)))
                  (let ((_%e-stx124451%_ (##vector-ref _g125360_ 0))
                        (_%e124452%_ (##vector-ref _g125360_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id124439%_ _%e124452%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id124439%_)
                                   (cons _%e-stx124451%_ '())))
                       (gx#stx-source _%stx124401%_))))))
              (_%E124404124419%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124404124419%_)))))
                                        (_%E124404124419%_)))))
                              (_%E124404124419%_))))
                      (_%E124404124419%_)))))
          (_%E124403124454%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx124345%_)
        (let* ((_%e124346124359%_ _%stx124345%_)
               (_%E124348124363%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124346124359%_)))
               (_%E124347124397%_
                (lambda ()
                  (if (gx#stx-pair? _%e124346124359%_)
                      (let ((_%e124349124367%_
                             (gx#syntax-e _%e124346124359%_)))
                        (let ((_%hd124350124370%_ (##car _%e124349124367%_))
                              (_%tl124351124372%_ (##cdr _%e124349124367%_)))
                          (if (gx#stx-pair? _%tl124351124372%_)
                              (let ((_%e124352124375%_
                                     (gx#syntax-e _%tl124351124372%_)))
                                (let ((_%hd124353124378%_
                                       (##car _%e124352124375%_))
                                      (_%tl124354124380%_
                                       (##cdr _%e124352124375%_)))
                                  (let ((_%id124383%_ _%hd124353124378%_))
                                    (if (gx#stx-pair? _%tl124354124380%_)
                                        (let ((_%e124355124385%_
                                               (gx#syntax-e
                                                _%tl124354124380%_)))
                                          (let ((_%hd124356124388%_
                                                 (##car _%e124355124385%_))
                                                (_%tl124357124390%_
                                                 (##cdr _%e124355124385%_)))
                                            (let ((_%alias-id124393%_
                                                   _%hd124356124388%_))
                                              (if (gx#stx-null?
                                                   _%tl124357124390%_)
                                                  (if (and (gx#identifier?
                                                            _%id124383%_)
                                                           (gx#identifier?
                                                            _%alias-id124393%_))
                                                      (let ((_%alias-id124395%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id124393%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id124383%_
                                                         _%alias-id124395%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id124383%_)
                             (cons _%alias-id124395%_ '())))))
              (_%E124348124363%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124348124363%_)))))
                                        (_%E124348124363%_)))))
                              (_%E124348124363%_))))
                      (_%E124348124363%_)))))
          (_%E124347124397%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx124288%_ _%wrap?124289%_)
        (let* ((_%e124290124300%_ _%stx124288%_)
               (_%E124292124304%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124290124300%_)))
               (_%E124291124331%_
                (lambda ()
                  (if (gx#stx-pair? _%e124290124300%_)
                      (let ((_%e124293124308%_
                             (gx#syntax-e _%e124290124300%_)))
                        (let ((_%hd124294124311%_ (##car _%e124293124308%_))
                              (_%tl124295124313%_ (##cdr _%e124293124308%_)))
                          (if (gx#stx-pair? _%tl124295124313%_)
                              (let ((_%e124296124316%_
                                     (gx#syntax-e _%tl124295124313%_)))
                                (let ((_%hd124297124319%_
                                       (##car _%e124296124316%_))
                                      (_%tl124298124321%_
                                       (##cdr _%e124296124316%_)))
                                  (let* ((_%hd124324%_ _%hd124297124319%_)
                                         (_%body124326%_ _%tl124298124321%_))
                                    (if (gx#core-bind-values? _%hd124324%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd124324%_)
                                           (let ((_%body124329%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd124324%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx124288%_
                                                               _%body124326%_)
                                                              '()))))
                                             (if _%wrap?124289%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body124329%_)
                                                  (gx#stx-source
                                                   _%stx124288%_))
                                                 _%body124329%_)))
                                         gx#current-expander-context
                                         (let ((__obj125353
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj125353)
                                           __obj125353))
                                        (_%E124292124304%_)))))
                              (_%E124292124304%_))))
                      (_%E124292124304%_)))))
          (_%E124291124331%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx124338%_)
        (let ((_%wrap?124340%_ '#t))
          (gx#core-expand-lambda%__% _%stx124338%_ _%wrap?124340%_))))
    (define gx#core-expand-lambda%
      (lambda _g125363_
        (let ((_g125362_ (##length _g125363_)))
          (cond ((##fx= _g125362_ 1)
                 (apply gx#core-expand-lambda%__0 _g125363_))
                ((##fx= _g125362_ 2)
                 (apply gx#core-expand-lambda%__% _g125363_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g125363_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx124252%_)
        (let* ((_%e124253124260%_ _%stx124252%_)
               (_%E124255124264%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124253124260%_)))
               (_%E124254124283%_
                (lambda ()
                  (if (gx#stx-pair? _%e124253124260%_)
                      (let ((_%e124256124268%_
                             (gx#syntax-e _%e124253124260%_)))
                        (let ((_%hd124257124271%_ (##car _%e124256124268%_))
                              (_%tl124258124273%_ (##cdr _%e124256124268%_)))
                          (let ((_%clauses124276%_ _%tl124258124273%_))
                            (if (gx#stx-list? _%clauses124276%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause124278%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause124278%_)
                                       (let ((_%$e124280%_
                                              (gx#stx-source
                                               _%clause124278%_)))
                                         (if _%$e124280%_
                                             _%$e124280%_
                                             (gx#stx-source _%stx124252%_))))
                                      '#f))
                                   _%clauses124276%_))
                                 (gx#stx-source _%stx124252%_))
                                (_%E124255124264%_)))))
                      (_%E124255124264%_)))))
          (_%E124254124283%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx124206%_)
        (let* ((_%e124207124217%_ _%stx124206%_)
               (_%E124209124221%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124207124217%_)))
               (_%E124208124248%_
                (lambda ()
                  (if (gx#stx-pair? _%e124207124217%_)
                      (let ((_%e124210124225%_
                             (gx#syntax-e _%e124207124217%_)))
                        (let ((_%hd124211124228%_ (##car _%e124210124225%_))
                              (_%tl124212124230%_ (##cdr _%e124210124225%_)))
                          (if (gx#stx-pair? _%tl124212124230%_)
                              (let ((_%e124213124233%_
                                     (gx#syntax-e _%tl124212124230%_)))
                                (let ((_%hd124214124236%_
                                       (##car _%e124213124233%_))
                                      (_%tl124215124238%_
                                       (##cdr _%e124213124233%_)))
                                  (let* ((_%hd124241%_ _%hd124214124236%_)
                                         (_%body124243%_ _%tl124215124238%_))
                                    (if (gx#core-expand-let-bind? _%hd124241%_)
                                        (let ((_%expressions124245%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd124241%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd124241%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd124241%_
                                                           _%expressions124245%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx124206%_
                         _%body124243%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx124206%_)))
                                           gx#current-expander-context
                                           (let ((__obj125354
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj125354)
                                             __obj125354)))
                                        (_%E124209124221%_)))))
                              (_%E124209124221%_))))
                      (_%E124209124221%_)))))
          (_%E124208124248%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx124151%_ _%form124152%_)
        (let* ((_%e124153124163%_ _%stx124151%_)
               (_%E124155124167%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124153124163%_)))
               (_%E124154124192%_
                (lambda ()
                  (if (gx#stx-pair? _%e124153124163%_)
                      (let ((_%e124156124171%_
                             (gx#syntax-e _%e124153124163%_)))
                        (let ((_%hd124157124174%_ (##car _%e124156124171%_))
                              (_%tl124158124176%_ (##cdr _%e124156124171%_)))
                          (if (gx#stx-pair? _%tl124158124176%_)
                              (let ((_%e124159124179%_
                                     (gx#syntax-e _%tl124158124176%_)))
                                (let ((_%hd124160124182%_
                                       (##car _%e124159124179%_))
                                      (_%tl124161124184%_
                                       (##cdr _%e124159124179%_)))
                                  (let* ((_%hd124187%_ _%hd124160124182%_)
                                         (_%body124189%_ _%tl124161124184%_))
                                    (if (gx#core-expand-let-bind? _%hd124187%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd124187%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form124152%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd124187%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd124187%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx124151%_
                                                               _%body124189%_)
                                                              '())))
                                            (gx#stx-source _%stx124151%_)))
                                         gx#current-expander-context
                                         (let ((__obj125355
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj125355)
                                           __obj125355))
                                        (_%E124155124167%_)))))
                              (_%E124155124167%_))))
                      (_%E124155124167%_)))))
          (_%E124154124192%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx124199%_)
        (let ((_%form124201%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx124199%_ _%form124201%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g125365_
        (let ((_g125364_ (##length _g125365_)))
          (cond ((##fx= _g125364_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g125365_))
                ((##fx= _g125364_ 2)
                 (apply gx#core-expand-letrec-values%__% _g125365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g125365_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx124148%_)
        (gx#core-expand-letrec-values%__% _%stx124148%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx124105%_)
        (if (gx#stx-list? _%stx124105%_)
            (gx#stx-andmap
             (lambda (_%bind124107%_)
               (let* ((_%e124108124118%_ _%bind124107%_)
                      (_%E124110124122%_ (lambda () '#f))
                      (_%E124109124144%_
                       (lambda ()
                         (if (gx#stx-pair? _%e124108124118%_)
                             (let ((_%e124111124126%_
                                    (gx#syntax-e _%e124108124118%_)))
                               (let ((_%hd124112124129%_
                                      (##car _%e124111124126%_))
                                     (_%tl124113124131%_
                                      (##cdr _%e124111124126%_)))
                                 (let ((_%hd124134%_ _%hd124112124129%_))
                                   (if (gx#stx-pair? _%tl124113124131%_)
                                       (let ((_%e124114124136%_
                                              (gx#syntax-e
                                               _%tl124113124131%_)))
                                         (let ((_%hd124115124139%_
                                                (##car _%e124114124136%_))
                                               (_%tl124116124141%_
                                                (##cdr _%e124114124136%_)))
                                           (if (gx#stx-null?
                                                _%tl124116124141%_)
                                               (gx#core-bind-values?
                                                _%hd124134%_)
                                               (_%E124110124122%_))))
                                       (_%E124110124122%_)))))
                             (_%E124110124122%_)))))
                 (_%E124109124144%_)))
             _%stx124105%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind124064%_)
        (let* ((_%e124065124075%_ _%bind124064%_)
               (_%E124067124079%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124065124075%_)))
               (_%E124066124101%_
                (lambda ()
                  (if (gx#stx-pair? _%e124065124075%_)
                      (let ((_%e124068124083%_
                             (gx#syntax-e _%e124065124075%_)))
                        (let ((_%hd124069124086%_ (##car _%e124068124083%_))
                              (_%tl124070124088%_ (##cdr _%e124068124083%_)))
                          (if (gx#stx-pair? _%tl124070124088%_)
                              (let ((_%e124071124091%_
                                     (gx#syntax-e _%tl124070124088%_)))
                                (let ((_%hd124072124094%_
                                       (##car _%e124071124091%_))
                                      (_%tl124073124096%_
                                       (##cdr _%e124071124091%_)))
                                  (let ((_%expr124099%_ _%hd124072124094%_))
                                    (if (gx#stx-null? _%tl124073124096%_)
                                        (gx#core-expand-expression
                                         _%expr124099%_)
                                        (_%E124067124079%_)))))
                              (_%E124067124079%_))))
                      (_%E124067124079%_)))))
          (_%E124066124101%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind124023%_)
        (let* ((_%e124024124034%_ _%bind124023%_)
               (_%E124026124038%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124024124034%_)))
               (_%E124025124060%_
                (lambda ()
                  (if (gx#stx-pair? _%e124024124034%_)
                      (let ((_%e124027124042%_
                             (gx#syntax-e _%e124024124034%_)))
                        (let ((_%hd124028124045%_ (##car _%e124027124042%_))
                              (_%tl124029124047%_ (##cdr _%e124027124042%_)))
                          (let ((_%hd124050%_ _%hd124028124045%_))
                            (if (gx#stx-pair? _%tl124029124047%_)
                                (let ((_%e124030124052%_
                                       (gx#syntax-e _%tl124029124047%_)))
                                  (let ((_%hd124031124055%_
                                         (##car _%e124030124052%_))
                                        (_%tl124032124057%_
                                         (##cdr _%e124030124052%_)))
                                    (if (gx#stx-null? _%tl124032124057%_)
                                        (gx#core-bind-values!__0 _%hd124050%_)
                                        (_%E124026124038%_))))
                                (_%E124026124038%_)))))
                      (_%E124026124038%_)))))
          (_%E124025124060%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind123981%_ _%expr123982%_)
        (let* ((_%e123983123993%_ _%bind123981%_)
               (_%E123985123997%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123983123993%_)))
               (_%E123984124019%_
                (lambda ()
                  (if (gx#stx-pair? _%e123983123993%_)
                      (let ((_%e123986124001%_
                             (gx#syntax-e _%e123983123993%_)))
                        (let ((_%hd123987124004%_ (##car _%e123986124001%_))
                              (_%tl123988124006%_ (##cdr _%e123986124001%_)))
                          (let ((_%hd124009%_ _%hd123987124004%_))
                            (if (gx#stx-pair? _%tl123988124006%_)
                                (let ((_%e123989124011%_
                                       (gx#syntax-e _%tl123988124006%_)))
                                  (let ((_%hd123990124014%_
                                         (##car _%e123989124011%_))
                                        (_%tl123991124016%_
                                         (##cdr _%e123989124011%_)))
                                    (if (gx#stx-null? _%tl123991124016%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd124009%_)
                                              (cons _%expr123982%_ '()))
                                        (_%E123985123997%_))))
                                (_%E123985123997%_)))))
                      (_%E123985123997%_)))))
          (_%E123984124019%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx123935%_)
        (let* ((_%e123936123946%_ _%stx123935%_)
               (_%E123938123950%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123936123946%_)))
               (_%E123937123977%_
                (lambda ()
                  (if (gx#stx-pair? _%e123936123946%_)
                      (let ((_%e123939123954%_
                             (gx#syntax-e _%e123936123946%_)))
                        (let ((_%hd123940123957%_ (##car _%e123939123954%_))
                              (_%tl123941123959%_ (##cdr _%e123939123954%_)))
                          (if (gx#stx-pair? _%tl123941123959%_)
                              (let ((_%e123942123962%_
                                     (gx#syntax-e _%tl123941123959%_)))
                                (let ((_%hd123943123965%_
                                       (##car _%e123942123962%_))
                                      (_%tl123944123967%_
                                       (##cdr _%e123942123962%_)))
                                  (let* ((_%hd123970%_ _%hd123943123965%_)
                                         (_%body123972%_ _%tl123944123967%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd123970%_)
                                        (let ((_%expanders123974%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd123970%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd123970%_
                                              _%expanders123974%_)
                                             (gx#core-expand-local-block
                                              _%stx123935%_
                                              _%body123972%_))
                                           gx#current-expander-context
                                           (let ((__obj125356
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj125356)
                                             __obj125356)))
                                        (_%E123938123950%_)))))
                              (_%E123938123950%_))))
                      (_%E123938123950%_)))))
          (_%E123937123977%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx123884%_)
        (let* ((_%e123885123895%_ _%stx123884%_)
               (_%E123887123899%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123885123895%_)))
               (_%E123886123931%_
                (lambda ()
                  (if (gx#stx-pair? _%e123885123895%_)
                      (let ((_%e123888123903%_
                             (gx#syntax-e _%e123885123895%_)))
                        (let ((_%hd123889123906%_ (##car _%e123888123903%_))
                              (_%tl123890123908%_ (##cdr _%e123888123903%_)))
                          (if (gx#stx-pair? _%tl123890123908%_)
                              (let ((_%e123891123911%_
                                     (gx#syntax-e _%tl123890123908%_)))
                                (let ((_%hd123892123914%_
                                       (##car _%e123891123911%_))
                                      (_%tl123893123916%_
                                       (##cdr _%e123891123911%_)))
                                  (let* ((_%hd123919%_ _%hd123892123914%_)
                                         (_%body123921%_ _%tl123893123916%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd123919%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd123919%_
                                            (make-list
                                             (gx#stx-length _%hd123919%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g123923123926%_
                                                     _%g123924123928%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g123923123926%_
                                               _%g123924123928%_
                                               '#t))
                                            _%hd123919%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd123919%_))
                                           (gx#core-expand-local-block
                                            _%stx123884%_
                                            _%body123921%_))
                                         gx#current-expander-context
                                         (let ((__obj125357
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj125357)
                                           __obj125357))
                                        (_%E123887123899%_)))))
                              (_%E123887123899%_))))
                      (_%E123887123899%_)))))
          (_%E123886123931%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx123841%_)
        (if (gx#stx-list? _%stx123841%_)
            (gx#stx-andmap
             (lambda (_%bind123843%_)
               (let* ((_%e123844123854%_ _%bind123843%_)
                      (_%E123846123858%_ (lambda () '#f))
                      (_%E123845123880%_
                       (lambda ()
                         (if (gx#stx-pair? _%e123844123854%_)
                             (let ((_%e123847123862%_
                                    (gx#syntax-e _%e123844123854%_)))
                               (let ((_%hd123848123865%_
                                      (##car _%e123847123862%_))
                                     (_%tl123849123867%_
                                      (##cdr _%e123847123862%_)))
                                 (let ((_%hd123870%_ _%hd123848123865%_))
                                   (if (gx#stx-pair? _%tl123849123867%_)
                                       (let ((_%e123850123872%_
                                              (gx#syntax-e
                                               _%tl123849123867%_)))
                                         (let ((_%hd123851123875%_
                                                (##car _%e123850123872%_))
                                               (_%tl123852123877%_
                                                (##cdr _%e123850123872%_)))
                                           (if (gx#stx-null?
                                                _%tl123852123877%_)
                                               (gx#identifier? _%hd123870%_)
                                               (_%E123846123858%_))))
                                       (_%E123846123858%_)))))
                             (_%E123846123858%_)))))
                 (_%E123845123880%_)))
             _%stx123841%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind123797%_)
        (let* ((_%e123798123808%_ _%bind123797%_)
               (_%E123800123812%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123798123808%_)))
               (_%E123799123837%_
                (lambda ()
                  (if (gx#stx-pair? _%e123798123808%_)
                      (let ((_%e123801123816%_
                             (gx#syntax-e _%e123798123808%_)))
                        (let ((_%hd123802123819%_ (##car _%e123801123816%_))
                              (_%tl123803123821%_ (##cdr _%e123801123816%_)))
                          (if (gx#stx-pair? _%tl123803123821%_)
                              (let ((_%e123804123824%_
                                     (gx#syntax-e _%tl123803123821%_)))
                                (let ((_%hd123805123827%_
                                       (##car _%e123804123824%_))
                                      (_%tl123806123829%_
                                       (##cdr _%e123804123824%_)))
                                  (let ((_%expr123832%_ _%hd123805123827%_))
                                    (if (gx#stx-null? _%tl123806123829%_)
                                        (let ((_g125366_
                                               (gx#core-expand-expression+1
                                                _%expr123832%_)))
                                          (begin
                                            (let ((_g125367_
                                                   (if (##values? _g125366_)
                                                       (##vector-length
                                                        _g125366_)
                                                       1)))
                                              (if (not (##fx= _g125367_ 2))
                                                  (error "Context expects 2 values"
                                                         _g125367_)))
                                            (let ((_%_123834%_
                                                   (##vector-ref _g125366_ 0))
                                                  (_%e123835%_
                                                   (##vector-ref _g125366_ 1)))
                                              _%e123835%_)))
                                        (_%E123800123812%_)))))
                              (_%E123800123812%_))))
                      (_%E123800123812%_)))))
          (_%E123799123837%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind123742%_ _%e123743%_ _%rebind?123744%_)
        (let* ((_%e123745123755%_ _%bind123742%_)
               (_%E123747123759%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123745123755%_)))
               (_%E123746123781%_
                (lambda ()
                  (if (gx#stx-pair? _%e123745123755%_)
                      (let ((_%e123748123763%_
                             (gx#syntax-e _%e123745123755%_)))
                        (let ((_%hd123749123766%_ (##car _%e123748123763%_))
                              (_%tl123750123768%_ (##cdr _%e123748123763%_)))
                          (let ((_%id123771%_ _%hd123749123766%_))
                            (if (gx#stx-pair? _%tl123750123768%_)
                                (let ((_%e123751123773%_
                                       (gx#syntax-e _%tl123750123768%_)))
                                  (let ((_%hd123752123776%_
                                         (##car _%e123751123773%_))
                                        (_%tl123753123778%_
                                         (##cdr _%e123751123773%_)))
                                    (if (gx#stx-null? _%tl123753123778%_)
                                        (gx#core-bind-syntax!__1
                                         _%id123771%_
                                         _%e123743%_
                                         _%rebind?123744%_)
                                        (_%E123747123759%_))))
                                (_%E123747123759%_)))))
                      (_%E123747123759%_)))))
          (_%E123746123781%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind123788%_ _%e123789%_)
        (let ((_%rebind?123791%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind123788%_
           _%e123789%_
           _%rebind?123791%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g125369_
        (let ((_g125368_ (##length _g125369_)))
          (cond ((##fx= _g125368_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g125369_))
                ((##fx= _g125368_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g125369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g125369_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx123700%_)
        (let* ((_%e123701123711%_ _%stx123700%_)
               (_%E123703123715%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123701123711%_)))
               (_%E123702123737%_
                (lambda ()
                  (if (gx#stx-pair? _%e123701123711%_)
                      (let ((_%e123704123719%_
                             (gx#syntax-e _%e123701123711%_)))
                        (let ((_%hd123705123722%_ (##car _%e123704123719%_))
                              (_%tl123706123724%_ (##cdr _%e123704123719%_)))
                          (if (gx#stx-pair? _%tl123706123724%_)
                              (let ((_%e123707123727%_
                                     (gx#syntax-e _%tl123706123724%_)))
                                (let ((_%hd123708123730%_
                                       (##car _%e123707123727%_))
                                      (_%tl123709123732%_
                                       (##cdr _%e123707123727%_)))
                                  (let ((_%expr123735%_ _%hd123708123730%_))
                                    (if (gx#stx-null? _%tl123709123732%_)
                                        (gx#core-expand-expression
                                         _%expr123735%_)
                                        (_%E123703123715%_)))))
                              (_%E123703123715%_))))
                      (_%E123703123715%_)))))
          (_%E123702123737%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx123659%_)
        (let* ((_%e123660123670%_ _%stx123659%_)
               (_%E123662123674%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123660123670%_)))
               (_%E123661123696%_
                (lambda ()
                  (if (gx#stx-pair? _%e123660123670%_)
                      (let ((_%e123663123678%_
                             (gx#syntax-e _%e123660123670%_)))
                        (let ((_%hd123664123681%_ (##car _%e123663123678%_))
                              (_%tl123665123683%_ (##cdr _%e123663123678%_)))
                          (if (gx#stx-pair? _%tl123665123683%_)
                              (let ((_%e123666123686%_
                                     (gx#syntax-e _%tl123665123683%_)))
                                (let ((_%hd123667123689%_
                                       (##car _%e123666123686%_))
                                      (_%tl123668123691%_
                                       (##cdr _%e123666123686%_)))
                                  (let ((_%e123694%_ _%hd123667123689%_))
                                    (if (gx#stx-null? _%tl123668123691%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e123694%_)
                                                     '()))
                                         (gx#stx-source _%stx123659%_))
                                        (_%E123662123674%_)))))
                              (_%E123662123674%_))))
                      (_%E123662123674%_)))))
          (_%E123661123696%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx123618%_)
        (let* ((_%e123619123629%_ _%stx123618%_)
               (_%E123621123633%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123619123629%_)))
               (_%E123620123655%_
                (lambda ()
                  (if (gx#stx-pair? _%e123619123629%_)
                      (let ((_%e123622123637%_
                             (gx#syntax-e _%e123619123629%_)))
                        (let ((_%hd123623123640%_ (##car _%e123622123637%_))
                              (_%tl123624123642%_ (##cdr _%e123622123637%_)))
                          (if (gx#stx-pair? _%tl123624123642%_)
                              (let ((_%e123625123645%_
                                     (gx#syntax-e _%tl123624123642%_)))
                                (let ((_%hd123626123648%_
                                       (##car _%e123625123645%_))
                                      (_%tl123627123650%_
                                       (##cdr _%e123625123645%_)))
                                  (let ((_%e123653%_ _%hd123626123648%_))
                                    (if (gx#stx-null? _%tl123627123650%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e123653%_)
                                                     '()))
                                         (gx#stx-source _%stx123618%_))
                                        (_%E123621123633%_)))))
                              (_%E123621123633%_))))
                      (_%E123621123633%_)))))
          (_%E123620123655%_))))
    (define gx#core-expand-call%
      (lambda (_%stx123575%_)
        (let* ((_%e123576123586%_ _%stx123575%_)
               (_%E123578123590%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123576123586%_)))
               (_%E123577123614%_
                (lambda ()
                  (if (gx#stx-pair? _%e123576123586%_)
                      (let ((_%e123579123594%_
                             (gx#syntax-e _%e123576123586%_)))
                        (let ((_%hd123580123597%_ (##car _%e123579123594%_))
                              (_%tl123581123599%_ (##cdr _%e123579123594%_)))
                          (if (gx#stx-pair? _%tl123581123599%_)
                              (let ((_%e123582123602%_
                                     (gx#syntax-e _%tl123581123599%_)))
                                (let ((_%hd123583123605%_
                                       (##car _%e123582123602%_))
                                      (_%tl123584123607%_
                                       (##cdr _%e123582123602%_)))
                                  (let* ((_%rator123610%_ _%hd123583123605%_)
                                         (_%args123612%_ _%tl123584123607%_))
                                    (if (gx#stx-list? _%args123612%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator123610%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args123612%_))
                                         (gx#stx-source _%stx123575%_))
                                        (_%E123578123590%_)))))
                              (_%E123578123590%_))))
                      (_%E123578123590%_)))))
          (_%E123577123614%_))))
    (define gx#core-expand-if%
      (lambda (_%stx123508%_)
        (let* ((_%e123509123525%_ _%stx123508%_)
               (_%E123511123529%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123509123525%_)))
               (_%E123510123571%_
                (lambda ()
                  (if (gx#stx-pair? _%e123509123525%_)
                      (let ((_%e123512123533%_
                             (gx#syntax-e _%e123509123525%_)))
                        (let ((_%hd123513123536%_ (##car _%e123512123533%_))
                              (_%tl123514123538%_ (##cdr _%e123512123533%_)))
                          (if (gx#stx-pair? _%tl123514123538%_)
                              (let ((_%e123515123541%_
                                     (gx#syntax-e _%tl123514123538%_)))
                                (let ((_%hd123516123544%_
                                       (##car _%e123515123541%_))
                                      (_%tl123517123546%_
                                       (##cdr _%e123515123541%_)))
                                  (let ((_%test123549%_ _%hd123516123544%_))
                                    (if (gx#stx-pair? _%tl123517123546%_)
                                        (let ((_%e123518123551%_
                                               (gx#syntax-e
                                                _%tl123517123546%_)))
                                          (let ((_%hd123519123554%_
                                                 (##car _%e123518123551%_))
                                                (_%tl123520123556%_
                                                 (##cdr _%e123518123551%_)))
                                            (let ((_%K123559%_
                                                   _%hd123519123554%_))
                                              (if (gx#stx-pair?
                                                   _%tl123520123556%_)
                                                  (let ((_%e123521123561%_
                                                         (gx#syntax-e
                                                          _%tl123520123556%_)))
                                                    (let ((_%hd123522123564%_
                                                           (##car _%e123521123561%_))
                                                          (_%tl123523123566%_
                                                           (##cdr _%e123521123561%_)))
                                                      (let ((_%E123569%_
                                                             _%hd123522123564%_))
                                                        (if (gx#stx-null?
                                                             _%tl123523123566%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test123549%_)
                                 (cons (gx#core-expand-expression _%K123559%_)
                                       (cons (gx#core-expand-expression
                                              _%E123569%_)
                                             '()))))
                     (gx#stx-source _%stx123508%_))
                    (_%E123511123529%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123511123529%_)))))
                                        (_%E123511123529%_)))))
                              (_%E123511123529%_))))
                      (_%E123511123529%_)))))
          (_%E123510123571%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx123467%_)
        (let* ((_%e123468123478%_ _%stx123467%_)
               (_%E123470123482%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123468123478%_)))
               (_%E123469123504%_
                (lambda ()
                  (if (gx#stx-pair? _%e123468123478%_)
                      (let ((_%e123471123486%_
                             (gx#syntax-e _%e123468123478%_)))
                        (let ((_%hd123472123489%_ (##car _%e123471123486%_))
                              (_%tl123473123491%_ (##cdr _%e123471123486%_)))
                          (if (gx#stx-pair? _%tl123473123491%_)
                              (let ((_%e123474123494%_
                                     (gx#syntax-e _%tl123473123491%_)))
                                (let ((_%hd123475123497%_
                                       (##car _%e123474123494%_))
                                      (_%tl123476123499%_
                                       (##cdr _%e123474123494%_)))
                                  (let ((_%id123502%_ _%hd123475123497%_))
                                    (if (gx#stx-null? _%tl123476123499%_)
                                        (if (gx#identifier? _%id123502%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id123502%_
                                                          _%stx123467%_)
                                                         '()))
                                             (gx#stx-source _%stx123467%_))
                                            (_%E123470123482%_))
                                        (_%E123470123482%_)))))
                              (_%E123470123482%_))))
                      (_%E123470123482%_)))))
          (_%E123469123504%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx123413%_)
        (let* ((_%e123414123427%_ _%stx123413%_)
               (_%E123416123431%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123414123427%_)))
               (_%E123415123463%_
                (lambda ()
                  (if (gx#stx-pair? _%e123414123427%_)
                      (let ((_%e123417123435%_
                             (gx#syntax-e _%e123414123427%_)))
                        (let ((_%hd123418123438%_ (##car _%e123417123435%_))
                              (_%tl123419123440%_ (##cdr _%e123417123435%_)))
                          (if (gx#stx-pair? _%tl123419123440%_)
                              (let ((_%e123420123443%_
                                     (gx#syntax-e _%tl123419123440%_)))
                                (let ((_%hd123421123446%_
                                       (##car _%e123420123443%_))
                                      (_%tl123422123448%_
                                       (##cdr _%e123420123443%_)))
                                  (let ((_%id123451%_ _%hd123421123446%_))
                                    (if (gx#stx-pair? _%tl123422123448%_)
                                        (let ((_%e123423123453%_
                                               (gx#syntax-e
                                                _%tl123422123448%_)))
                                          (let ((_%hd123424123456%_
                                                 (##car _%e123423123453%_))
                                                (_%tl123425123458%_
                                                 (##cdr _%e123423123453%_)))
                                            (let ((_%expr123461%_
                                                   _%hd123424123456%_))
                                              (if (gx#stx-null?
                                                   _%tl123425123458%_)
                                                  (if (gx#identifier?
                                                       _%id123451%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id123451%_
                            _%stx123413%_)
                           (cons (gx#core-expand-expression _%expr123461%_)
                                 '())))
               (gx#stx-source _%stx123413%_))
              (_%E123416123431%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123416123431%_)))))
                                        (_%E123416123431%_)))))
                              (_%E123416123431%_))))
                      (_%E123416123431%_)))))
          (_%E123415123463%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx123258%_)
        (letrec ((_%generate123260%_
                  (lambda (_%body123290%_)
                    (let _%lp123292%_ ((_%rest123294%_ _%body123290%_)
                                       (_%ns123295%_
                                        (gx#core-context-namespace__0))
                                       (_%r123296%_ '()))
                      (let* ((_%e123297123312%_ _%rest123294%_)
                             (_%E123310123316%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e123297123312%_)))
                             (_%E123306123320%_
                              (lambda ()
                                (if (gx#stx-null? _%e123297123312%_)
                                    (reverse _%r123296%_)
                                    (_%E123310123316%_))))
                             (_%E123299123377%_
                              (lambda ()
                                (if (gx#stx-pair? _%e123297123312%_)
                                    (let ((_%e123307123324%_
                                           (gx#syntax-e _%e123297123312%_)))
                                      (let ((_%hd123308123327%_
                                             (##car _%e123307123324%_))
                                            (_%tl123309123329%_
                                             (##cdr _%e123307123324%_)))
                                        (let* ((_%hd123332%_
                                                _%hd123308123327%_)
                                               (_%rest123334%_
                                                _%tl123309123329%_))
                                          (if (gx#identifier? _%hd123332%_)
                                              (_%lp123292%_
                                               _%rest123334%_
                                               _%ns123295%_
                                               (cons (cons _%hd123332%_
                                                           (cons (if _%ns123295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd123332%_
                              _%ns123295%_
                              '"#"
                              _%hd123332%_)
                             _%hd123332%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r123296%_))
                                              (let* ((_%e123335123345%_
                                                      _%hd123332%_)
                                                     (_%E123337123349%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e123335123345%_)))
                                                     (_%E123336123373%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e123335123345%_)
                                                            (let ((_%e123338123353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e123335123345%_)))
                      (let ((_%hd123339123356%_ (##car _%e123338123353%_))
                            (_%tl123340123358%_ (##cdr _%e123338123353%_)))
                        (let ((_%id123361%_ _%hd123339123356%_))
                          (if (gx#stx-pair? _%tl123340123358%_)
                              (let ((_%e123341123363%_
                                     (gx#syntax-e _%tl123340123358%_)))
                                (let ((_%hd123342123366%_
                                       (##car _%e123341123363%_))
                                      (_%tl123343123368%_
                                       (##cdr _%e123341123363%_)))
                                  (let ((_%eid123371%_ _%hd123342123366%_))
                                    (if (gx#stx-null? _%tl123343123368%_)
                                        (if (and (gx#identifier? _%id123361%_)
                                                 (gx#identifier?
                                                  _%eid123371%_))
                                            (_%lp123292%_
                                             _%rest123334%_
                                             _%ns123295%_
                                             (cons (cons _%id123361%_
                                                         (cons _%eid123371%_
                                                               '()))
                                                   _%r123296%_))
                                            (_%E123337123349%_))
                                        (_%E123337123349%_)))))
                              (_%E123337123349%_)))))
                    (_%E123337123349%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E123336123373%_))))))
                                    (_%E123306123320%_))))
                             (_%E123298123409%_
                              (lambda ()
                                (if (gx#stx-pair? _%e123297123312%_)
                                    (let ((_%e123300123381%_
                                           (gx#syntax-e _%e123297123312%_)))
                                      (let ((_%hd123301123384%_
                                             (##car _%e123300123381%_))
                                            (_%tl123302123386%_
                                             (##cdr _%e123300123381%_)))
                                        (if (eq? (gx#stx-e _%hd123301123384%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl123302123386%_)
                                                (let ((_%e123303123389%_
                                                       (gx#syntax-e
                                                        _%tl123302123386%_)))
                                                  (let ((_%hd123304123392%_
                                                         (##car _%e123303123389%_))
                                                        (_%tl123305123394%_
                                                         (##cdr _%e123303123389%_)))
                                                    (let* ((_%ns123397%_
                                                            _%hd123304123392%_)
                                                           (_%rest123399%_
                                                            _%tl123305123394%_)
                                                           (_%ns123407%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns123397%_)
                        (symbol->string (gx#stx-e _%ns123397%_))
                        (if (or (gx#stx-string? _%ns123397%_)
                                (gx#stx-false? _%ns123397%_))
                            (gx#stx-e _%ns123397%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx123258%_
                             _%ns123397%_)))))
              (_%lp123292%_ _%rest123399%_ _%ns123407%_ _%r123296%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E123299123377%_))
                                            (_%E123299123377%_))))
                                    (_%E123299123377%_)))))
                        (_%E123298123409%_))))))
          (let* ((_%e123261123268%_ _%stx123258%_)
                 (_%E123263123272%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123261123268%_)))
                 (_%E123262123286%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123261123268%_)
                        (let ((_%e123264123276%_
                               (gx#syntax-e _%e123261123268%_)))
                          (let ((_%hd123265123279%_ (##car _%e123264123276%_))
                                (_%tl123266123281%_ (##cdr _%e123264123276%_)))
                            (let ((_%body123284%_ _%tl123266123281%_))
                              (if (gx#stx-list? _%body123284%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate123260%_ _%body123284%_))
                                  (_%E123263123272%_)))))
                        (_%E123263123272%_)))))
            (_%E123262123286%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx123204%_)
        (let* ((_%e123205123218%_ _%stx123204%_)
               (_%E123207123222%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123205123218%_)))
               (_%E123206123254%_
                (lambda ()
                  (if (gx#stx-pair? _%e123205123218%_)
                      (let ((_%e123208123226%_
                             (gx#syntax-e _%e123205123218%_)))
                        (let ((_%hd123209123229%_ (##car _%e123208123226%_))
                              (_%tl123210123231%_ (##cdr _%e123208123226%_)))
                          (if (gx#stx-pair? _%tl123210123231%_)
                              (let ((_%e123211123234%_
                                     (gx#syntax-e _%tl123210123231%_)))
                                (let ((_%hd123212123237%_
                                       (##car _%e123211123234%_))
                                      (_%tl123213123239%_
                                       (##cdr _%e123211123234%_)))
                                  (let ((_%hd123242%_ _%hd123212123237%_))
                                    (if (gx#stx-pair? _%tl123213123239%_)
                                        (let ((_%e123214123244%_
                                               (gx#syntax-e
                                                _%tl123213123239%_)))
                                          (let ((_%hd123215123247%_
                                                 (##car _%e123214123244%_))
                                                (_%tl123216123249%_
                                                 (##cdr _%e123214123244%_)))
                                            (let ((_%expr123252%_
                                                   _%hd123215123247%_))
                                              (if (gx#stx-null?
                                                   _%tl123216123249%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd123242%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd123242%_)
                          (cons _%expr123252%_ '())))
              (_%E123207123222%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123207123222%_)))))
                                        (_%E123207123222%_)))))
                              (_%E123207123222%_))))
                      (_%E123207123222%_)))))
          (_%E123206123254%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx123150%_)
        (let* ((_%e123151123164%_ _%stx123150%_)
               (_%E123153123168%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123151123164%_)))
               (_%E123152123200%_
                (lambda ()
                  (if (gx#stx-pair? _%e123151123164%_)
                      (let ((_%e123154123172%_
                             (gx#syntax-e _%e123151123164%_)))
                        (let ((_%hd123155123175%_ (##car _%e123154123172%_))
                              (_%tl123156123177%_ (##cdr _%e123154123172%_)))
                          (if (gx#stx-pair? _%tl123156123177%_)
                              (let ((_%e123157123180%_
                                     (gx#syntax-e _%tl123156123177%_)))
                                (let ((_%hd123158123183%_
                                       (##car _%e123157123180%_))
                                      (_%tl123159123185%_
                                       (##cdr _%e123157123180%_)))
                                  (let ((_%hd123188%_ _%hd123158123183%_))
                                    (if (gx#stx-pair? _%tl123159123185%_)
                                        (let ((_%e123160123190%_
                                               (gx#syntax-e
                                                _%tl123159123185%_)))
                                          (let ((_%hd123161123193%_
                                                 (##car _%e123160123190%_))
                                                (_%tl123162123195%_
                                                 (##cdr _%e123160123190%_)))
                                            (let ((_%expr123198%_
                                                   _%hd123161123193%_))
                                              (if (gx#stx-null?
                                                   _%tl123162123195%_)
                                                  (if (gx#identifier?
                                                       _%hd123188%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd123188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr123198%_ '())))
              (_%E123153123168%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123153123168%_)))))
                                        (_%E123153123168%_)))))
                              (_%E123153123168%_))))
                      (_%E123153123168%_)))))
          (_%E123152123200%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx123096%_)
        (let* ((_%e123097123110%_ _%stx123096%_)
               (_%E123099123114%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123097123110%_)))
               (_%E123098123146%_
                (lambda ()
                  (if (gx#stx-pair? _%e123097123110%_)
                      (let ((_%e123100123118%_
                             (gx#syntax-e _%e123097123110%_)))
                        (let ((_%hd123101123121%_ (##car _%e123100123118%_))
                              (_%tl123102123123%_ (##cdr _%e123100123118%_)))
                          (if (gx#stx-pair? _%tl123102123123%_)
                              (let ((_%e123103123126%_
                                     (gx#syntax-e _%tl123102123123%_)))
                                (let ((_%hd123104123129%_
                                       (##car _%e123103123126%_))
                                      (_%tl123105123131%_
                                       (##cdr _%e123103123126%_)))
                                  (let ((_%id123134%_ _%hd123104123129%_))
                                    (if (gx#stx-pair? _%tl123105123131%_)
                                        (let ((_%e123106123136%_
                                               (gx#syntax-e
                                                _%tl123105123131%_)))
                                          (let ((_%hd123107123139%_
                                                 (##car _%e123106123136%_))
                                                (_%tl123108123141%_
                                                 (##cdr _%e123106123136%_)))
                                            (let ((_%alias-id123144%_
                                                   _%hd123107123139%_))
                                              (if (gx#stx-null?
                                                   _%tl123108123141%_)
                                                  (if (and (gx#identifier?
                                                            _%id123134%_)
                                                           (gx#identifier?
                                                            _%alias-id123144%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id123134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id123144%_ '())))
              (_%E123099123114%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123099123114%_)))))
                                        (_%E123099123114%_)))))
                              (_%E123099123114%_))))
                      (_%E123099123114%_)))))
          (_%E123098123146%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx123053%_)
        (let* ((_%e123054123064%_ _%stx123053%_)
               (_%E123056123068%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123054123064%_)))
               (_%E123055123092%_
                (lambda ()
                  (if (gx#stx-pair? _%e123054123064%_)
                      (let ((_%e123057123072%_
                             (gx#syntax-e _%e123054123064%_)))
                        (let ((_%hd123058123075%_ (##car _%e123057123072%_))
                              (_%tl123059123077%_ (##cdr _%e123057123072%_)))
                          (if (gx#stx-pair? _%tl123059123077%_)
                              (let ((_%e123060123080%_
                                     (gx#syntax-e _%tl123059123077%_)))
                                (let ((_%hd123061123083%_
                                       (##car _%e123060123080%_))
                                      (_%tl123062123085%_
                                       (##cdr _%e123060123080%_)))
                                  (let* ((_%hd123088%_ _%hd123061123083%_)
                                         (_%body123090%_ _%tl123062123085%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd123088%_)
                                             (gx#stx-list? _%body123090%_)
                                             (not (gx#stx-null?
                                                   _%body123090%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd123088%_)
                                         _%body123090%_)
                                        (_%E123056123068%_)))))
                              (_%E123056123068%_))))
                      (_%E123056123068%_)))))
          (_%E123055123092%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx122989%_)
        (letrec ((_%generate122991%_
                  (lambda (_%clause123021%_)
                    (let* ((_%e123022123029%_ _%clause123021%_)
                           (_%E123024123033%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx122989%_
                               _%clause123021%_)))
                           (_%E123023123049%_
                            (lambda ()
                              (if (gx#stx-pair? _%e123022123029%_)
                                  (let ((_%e123025123037%_
                                         (gx#syntax-e _%e123022123029%_)))
                                    (let ((_%hd123026123040%_
                                           (##car _%e123025123037%_))
                                          (_%tl123027123042%_
                                           (##cdr _%e123025123037%_)))
                                      (let* ((_%hd123045%_ _%hd123026123040%_)
                                             (_%body123047%_
                                              _%tl123027123042%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd123045%_)
                                                 (gx#stx-list? _%body123047%_)
                                                 (not (gx#stx-null?
                                                       _%body123047%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd123045%_)
                                                   _%body123047%_)
                                             (gx#stx-source _%clause123021%_))
                                            (_%E123024123033%_)))))
                                  (_%E123024123033%_)))))
                      (_%E123023123049%_)))))
          (let* ((_%e122992122999%_ _%stx122989%_)
                 (_%E122994123003%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122992122999%_)))
                 (_%E122993123017%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122992122999%_)
                        (let ((_%e122995123007%_
                               (gx#syntax-e _%e122992122999%_)))
                          (let ((_%hd122996123010%_ (##car _%e122995123007%_))
                                (_%tl122997123012%_ (##cdr _%e122995123007%_)))
                            (let ((_%clauses123015%_ _%tl122997123012%_))
                              (if (gx#stx-list? _%clauses123015%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate122991%_
                                    _%clauses123015%_))
                                  (_%E122994123003%_)))))
                        (_%E122994123003%_)))))
            (_%E122993123017%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx122890%_ _%form122891%_)
        (letrec ((_%generate122893%_
                  (lambda (_%bind122936%_)
                    (let* ((_%e122937122947%_ _%bind122936%_)
                           (_%E122939122951%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx122890%_
                               _%bind122936%_)))
                           (_%E122938122975%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122937122947%_)
                                  (let ((_%e122940122955%_
                                         (gx#syntax-e _%e122937122947%_)))
                                    (let ((_%hd122941122958%_
                                           (##car _%e122940122955%_))
                                          (_%tl122942122960%_
                                           (##cdr _%e122940122955%_)))
                                      (let ((_%ids122963%_ _%hd122941122958%_))
                                        (if (gx#stx-pair? _%tl122942122960%_)
                                            (let ((_%e122943122965%_
                                                   (gx#syntax-e
                                                    _%tl122942122960%_)))
                                              (let ((_%hd122944122968%_
                                                     (##car _%e122943122965%_))
                                                    (_%tl122945122970%_
                                                     (##cdr _%e122943122965%_)))
                                                (let ((_%expr122973%_
                                                       _%hd122944122968%_))
                                                  (if (gx#stx-null?
                                                       _%tl122945122970%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids122963%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids122963%_)
                        (cons _%expr122973%_ '()))
                  (_%E122939122951%_))
              (_%E122939122951%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E122939122951%_)))))
                                  (_%E122939122951%_)))))
                      (_%E122938122975%_)))))
          (let* ((_%e122894122904%_ _%stx122890%_)
                 (_%E122896122908%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122894122904%_)))
                 (_%E122895122932%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122894122904%_)
                        (let ((_%e122897122912%_
                               (gx#syntax-e _%e122894122904%_)))
                          (let ((_%hd122898122915%_ (##car _%e122897122912%_))
                                (_%tl122899122917%_ (##cdr _%e122897122912%_)))
                            (if (gx#stx-pair? _%tl122899122917%_)
                                (let ((_%e122900122920%_
                                       (gx#syntax-e _%tl122899122917%_)))
                                  (let ((_%hd122901122923%_
                                         (##car _%e122900122920%_))
                                        (_%tl122902122925%_
                                         (##cdr _%e122900122920%_)))
                                    (let* ((_%hd122928%_ _%hd122901122923%_)
                                           (_%body122930%_ _%tl122902122925%_))
                                      (if (and (gx#stx-list? _%hd122928%_)
                                               (gx#stx-list? _%body122930%_)
                                               (not (gx#stx-null?
                                                     _%body122930%_)))
                                          (gx#core-cons*
                                           _%form122891%_
                                           (gx#stx-map1
                                            _%generate122893%_
                                            _%hd122928%_)
                                           _%body122930%_)
                                          (_%E122896122908%_)))))
                                (_%E122896122908%_))))
                        (_%E122896122908%_)))))
            (_%E122895122932%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx122982%_)
        (let ((_%form122984%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx122982%_ _%form122984%_))))
    (define gx#macro-expand-let-values
      (lambda _g125371_
        (let ((_g125370_ (##length _g125371_)))
          (cond ((##fx= _g125370_ 1)
                 (apply gx#macro-expand-let-values__0 _g125371_))
                ((##fx= _g125370_ 2)
                 (apply gx#macro-expand-let-values__% _g125371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g125371_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx122887%_)
        (gx#macro-expand-let-values__% _%stx122887%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx122885%_)
        (gx#macro-expand-let-values__% _%stx122885%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx122776%_)
        (let* ((_%e122777122803%_ _%stx122776%_)
               (_%E122789122807%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122777122803%_)))
               (_%E122779122849%_
                (lambda ()
                  (if (gx#stx-pair? _%e122777122803%_)
                      (let ((_%e122790122811%_
                             (gx#syntax-e _%e122777122803%_)))
                        (let ((_%hd122791122814%_ (##car _%e122790122811%_))
                              (_%tl122792122816%_ (##cdr _%e122790122811%_)))
                          (if (gx#stx-pair? _%tl122792122816%_)
                              (let ((_%e122793122819%_
                                     (gx#syntax-e _%tl122792122816%_)))
                                (let ((_%hd122794122822%_
                                       (##car _%e122793122819%_))
                                      (_%tl122795122824%_
                                       (##cdr _%e122793122819%_)))
                                  (let ((_%test122827%_ _%hd122794122822%_))
                                    (if (gx#stx-pair? _%tl122795122824%_)
                                        (let ((_%e122796122829%_
                                               (gx#syntax-e
                                                _%tl122795122824%_)))
                                          (let ((_%hd122797122832%_
                                                 (##car _%e122796122829%_))
                                                (_%tl122798122834%_
                                                 (##cdr _%e122796122829%_)))
                                            (let ((_%K122837%_
                                                   _%hd122797122832%_))
                                              (if (gx#stx-pair?
                                                   _%tl122798122834%_)
                                                  (let ((_%e122799122839%_
                                                         (gx#syntax-e
                                                          _%tl122798122834%_)))
                                                    (let ((_%hd122800122842%_
                                                           (##car _%e122799122839%_))
                                                          (_%tl122801122844%_
                                                           (##cdr _%e122799122839%_)))
                                                      (let ((_%E122847%_
                                                             _%hd122800122842%_))
                                                        (if (gx#stx-null?
                                                             _%tl122801122844%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test122827%_
                                                             _%K122837%_
                                                             _%E122847%_)
                                                            (_%E122789122807%_)))))
                                                  (_%E122789122807%_)))))
                                        (_%E122789122807%_)))))
                              (_%E122789122807%_))))
                      (_%E122789122807%_))))
               (_%E122778122881%_
                (lambda ()
                  (if (gx#stx-pair? _%e122777122803%_)
                      (let ((_%e122780122853%_
                             (gx#syntax-e _%e122777122803%_)))
                        (let ((_%hd122781122856%_ (##car _%e122780122853%_))
                              (_%tl122782122858%_ (##cdr _%e122780122853%_)))
                          (if (gx#stx-pair? _%tl122782122858%_)
                              (let ((_%e122783122861%_
                                     (gx#syntax-e _%tl122782122858%_)))
                                (let ((_%hd122784122864%_
                                       (##car _%e122783122861%_))
                                      (_%tl122785122866%_
                                       (##cdr _%e122783122861%_)))
                                  (let ((_%test122869%_ _%hd122784122864%_))
                                    (if (gx#stx-pair? _%tl122785122866%_)
                                        (let ((_%e122786122871%_
                                               (gx#syntax-e
                                                _%tl122785122866%_)))
                                          (let ((_%hd122787122874%_
                                                 (##car _%e122786122871%_))
                                                (_%tl122788122876%_
                                                 (##cdr _%e122786122871%_)))
                                            (let ((_%K122879%_
                                                   _%hd122787122874%_))
                                              (if (gx#stx-null?
                                                   _%tl122788122876%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test122869%_
                                                   _%K122879%_
                                                   '#!void)
                                                  (_%E122779122849%_)))))
                                        (_%E122779122849%_)))))
                              (_%E122779122849%_))))
                      (_%E122779122849%_)))))
          (_%E122778122881%_))))
    (define gx#free-identifier=?
      (lambda (_%xid122761%_ _%yid122762%_)
        (let ((_%xe122764%_ (gx#resolve-identifier__0 _%xid122761%_))
              (_%ye122765%_ (gx#resolve-identifier__0 _%yid122762%_)))
          (if (and _%xe122764%_ _%ye122765%_)
              (let ((_%$e122768%_ (eq? _%xe122764%_ _%ye122765%_)))
                (if _%$e122768%_
                    _%$e122768%_
                    (if (##structure-instance-of? _%xe122764%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye122765%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe122764%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye122765%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe122764%_ _%ye122765%_)
                  '#f
                  (gx#stx-eq? _%xid122761%_ _%yid122762%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid122742%_ _%yid122743%_)
        (letrec ((_%context122745%_
                  (lambda (_%e122759%_)
                    (if (##structure-direct-instance-of?
                         _%e122759%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e122759%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks122746%_
                  (lambda (_%e122754%_)
                    (if (symbol? _%e122754%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e122754%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e122754%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e122754%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap122747%_
                  (lambda (_%e122752%_)
                    (if (symbol? _%e122752%_)
                        _%e122752%_
                        (gx#syntax-local-unwrap _%e122752%_)))))
          (let ((_%x122749%_ (_%unwrap122747%_ _%xid122742%_))
                (_%y122750%_ (_%unwrap122747%_ _%yid122743%_)))
            (if (gx#stx-eq? _%x122749%_ _%y122750%_)
                (if (eq? (_%context122745%_ _%x122749%_)
                         (_%context122745%_ _%y122750%_))
                    (equal? (_%marks122746%_ _%x122749%_)
                            (_%marks122746%_ _%y122750%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx122740%_)
        (if (gx#identifier? _%stx122740%_)
            (gx#core-identifier=? _%stx122740%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx122738%_)
        (if (gx#identifier? _%stx122738%_)
            (gx#core-identifier=? _%stx122738%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx122681%_ _%where122682%_)
        (let _%lp122684%_ ((_%rest122686%_ (gx#syntax->list _%stx122681%_)))
          (let* ((_%rest122687122695%_ _%rest122686%_)
                 (_%else122689122703%_ (lambda () '#t))
                 (_%K122691122716%_
                  (lambda (_%rest122706%_ _%hd122707%_)
                    (if (gx#identifier? _%hd122707%_)
                        (if (__find (lambda (_%g122709122711%_)
                                      (gx#bound-identifier=?
                                       _%g122709122711%_
                                       _%hd122707%_))
                                    _%rest122706%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where122682%_
                             _%hd122707%_)
                            (_%lp122684%_ _%rest122706%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where122682%_
                         _%hd122707%_)))))
            (if (pair? _%rest122687122695%_)
                (let ((_%hd122692122719%_ (##car _%rest122687122695%_))
                      (_%tl122693122721%_ (##cdr _%rest122687122695%_)))
                  (let* ((_%hd122724%_ _%hd122692122719%_)
                         (_%rest122726%_ _%tl122693122721%_))
                    (_%K122691122716%_ _%rest122726%_ _%hd122724%_)))
                (_%else122689122703%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx122731%_)
        (let ((_%where122733%_ _%stx122731%_))
          (gx#check-duplicate-identifiers__% _%stx122731%_ _%where122733%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g125373_
        (let ((_g125372_ (##length _g125373_)))
          (cond ((##fx= _g125372_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g125373_))
                ((##fx= _g125372_ 2)
                 (apply gx#check-duplicate-identifiers__% _g125373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g125373_))))))
    (define gx#core-bind-values?
      (lambda (_%stx122673%_)
        (gx#stx-andmap
         (lambda (_%x122675%_)
           (let ((_%$e122677%_ (gx#identifier? _%x122675%_)))
             (if _%$e122677%_ _%$e122677%_ (gx#stx-false? _%x122675%_))))
         _%stx122673%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx122637%_ _%rebind?122638%_ _%phi122639%_ _%ctx122640%_)
        (gx#stx-for-each1
         (lambda (_%id122642%_)
           (if (gx#identifier? _%id122642%_)
               (gx#core-bind-runtime!__%
                _%id122642%_
                _%rebind?122638%_
                _%phi122639%_
                _%ctx122640%_)
               '#!void))
         _%stx122637%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx122647%_)
        (let* ((_%rebind?122649%_ '#f)
               (_%phi122651%_ (gx#current-expander-phi))
               (_%ctx122653%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx122647%_
           _%rebind?122649%_
           _%phi122651%_
           _%ctx122653%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx122655%_ _%rebind?122656%_)
        (let* ((_%phi122658%_ (gx#current-expander-phi))
               (_%ctx122660%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx122655%_
           _%rebind?122656%_
           _%phi122658%_
           _%ctx122660%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx122662%_ _%rebind?122663%_ _%phi122664%_)
        (let ((_%ctx122666%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx122662%_
           _%rebind?122663%_
           _%phi122664%_
           _%ctx122666%_))))
    (define gx#core-bind-values!
      (lambda _g125375_
        (let ((_g125374_ (##length _g125375_)))
          (cond ((##fx= _g125374_ 1) (apply gx#core-bind-values!__0 _g125375_))
                ((##fx= _g125374_ 2) (apply gx#core-bind-values!__1 _g125375_))
                ((##fx= _g125374_ 3) (apply gx#core-bind-values!__2 _g125375_))
                ((##fx= _g125374_ 4) (apply gx#core-bind-values!__% _g125375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g125375_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx122632%_)
        (gx#stx-map1
         (lambda (_%x122634%_)
           (if (gx#identifier? _%x122634%_)
               (gx#core-quote-syntax__0 _%x122634%_)
               '#f))
         _%stx122632%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx122625%_)
        (if (gx#identifier? _%stx122625%_)
            (let* ((_%bind122627%_ (gx#resolve-identifier__0 _%stx122625%_))
                   (_%$e122629%_ (not _%bind122627%_)))
              (if _%$e122629%_
                  _%$e122629%_
                  (##structure-instance-of?
                   _%bind122627%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id122614%_ _%form122615%_)
        (let ((_%bind122617%_ (gx#resolve-identifier__0 _%id122614%_)))
          (if (##structure-instance-of? _%bind122617%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id122614%_)
              (if (not _%bind122617%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id122614%_)))
                      (gx#core-quote-syntax__0 _%id122614%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form122615%_
                       _%id122614%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form122615%_
                   _%id122614%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id122569%_ _%rebind?122570%_ _%phi122571%_ _%ctx122572%_)
        (let* ((_%key122574%_ (gx#core-identifier-key _%id122569%_))
               (_%eid122576%_
                (gx#make-binding-id__%
                 _%key122574%_
                 '#f
                 _%phi122571%_
                 _%ctx122572%_))
               (_%bind122582%_
                (if (##structure-instance-of?
                     _%ctx122572%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid122576%_
                     _%key122574%_
                     _%phi122571%_
                     _%ctx122572%_)
                    (if (##structure-instance-of?
                         _%ctx122572%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid122576%_
                         _%key122574%_
                         _%phi122571%_)
                        (if (##structure-instance-of?
                             _%ctx122572%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid122576%_
                             _%key122574%_
                             _%phi122571%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid122576%_
                             _%key122574%_
                             _%phi122571%_))))))
          (gx#bind-identifier!__%
           _%id122569%_
           _%bind122582%_
           _%rebind?122570%_
           _%phi122571%_
           _%ctx122572%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id122588%_)
        (let* ((_%rebind?122590%_ '#f)
               (_%phi122592%_ (gx#current-expander-phi))
               (_%ctx122594%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id122588%_
           _%rebind?122590%_
           _%phi122592%_
           _%ctx122594%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id122596%_ _%rebind?122597%_)
        (let* ((_%phi122599%_ (gx#current-expander-phi))
               (_%ctx122601%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id122596%_
           _%rebind?122597%_
           _%phi122599%_
           _%ctx122601%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id122603%_ _%rebind?122604%_ _%phi122605%_)
        (let ((_%ctx122607%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id122603%_
           _%rebind?122604%_
           _%phi122605%_
           _%ctx122607%_))))
    (define gx#core-bind-runtime!
      (lambda _g125377_
        (let ((_g125376_ (##length _g125377_)))
          (cond ((##fx= _g125376_ 1)
                 (apply gx#core-bind-runtime!__0 _g125377_))
                ((##fx= _g125376_ 2)
                 (apply gx#core-bind-runtime!__1 _g125377_))
                ((##fx= _g125376_ 3)
                 (apply gx#core-bind-runtime!__2 _g125377_))
                ((##fx= _g125376_ 4)
                 (apply gx#core-bind-runtime!__% _g125377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g125377_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id122521%_
               _%eid122522%_
               _%rebind?122523%_
               _%phi122524%_
               _%ctx122525%_)
        (let* ((_%key122527%_ (gx#core-identifier-key _%id122521%_))
               (_%bind122532%_
                (if (##structure-instance-of?
                     _%ctx122525%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid122522%_
                     _%key122527%_
                     _%phi122524%_
                     _%ctx122525%_)
                    (if (##structure-instance-of?
                         _%ctx122525%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid122522%_
                         _%key122527%_
                         _%phi122524%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid122522%_
                         _%key122527%_
                         _%phi122524%_)))))
          (gx#bind-identifier!__%
           _%id122521%_
           _%bind122532%_
           _%rebind?122523%_
           _%phi122524%_
           _%ctx122525%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id122538%_ _%eid122539%_)
        (let* ((_%rebind?122541%_ '#f)
               (_%phi122543%_ (gx#current-expander-phi))
               (_%ctx122545%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id122538%_
           _%eid122539%_
           _%rebind?122541%_
           _%phi122543%_
           _%ctx122545%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id122547%_ _%eid122548%_ _%rebind?122549%_)
        (let* ((_%phi122551%_ (gx#current-expander-phi))
               (_%ctx122553%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id122547%_
           _%eid122548%_
           _%rebind?122549%_
           _%phi122551%_
           _%ctx122553%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id122555%_ _%eid122556%_ _%rebind?122557%_ _%phi122558%_)
        (let ((_%ctx122560%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id122555%_
           _%eid122556%_
           _%rebind?122557%_
           _%phi122558%_
           _%ctx122560%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g125379_
        (let ((_g125378_ (##length _g125379_)))
          (cond ((##fx= _g125378_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g125379_))
                ((##fx= _g125378_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g125379_))
                ((##fx= _g125378_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g125379_))
                ((##fx= _g125378_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g125379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g125379_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id122481%_
               _%eid122482%_
               _%rebind?122483%_
               _%phi122484%_
               _%ctx122485%_)
        (gx#bind-identifier!__%
         _%id122481%_
         (##structure
          gx#extern-binding::t
          _%eid122482%_
          (gx#core-identifier-key _%id122481%_)
          _%phi122484%_)
         _%rebind?122483%_
         _%phi122484%_
         _%ctx122485%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id122490%_ _%eid122491%_)
        (let* ((_%rebind?122493%_ '#f)
               (_%phi122495%_ (gx#current-expander-phi))
               (_%ctx122497%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id122490%_
           _%eid122491%_
           _%rebind?122493%_
           _%phi122495%_
           _%ctx122497%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id122499%_ _%eid122500%_ _%rebind?122501%_)
        (let* ((_%phi122503%_ (gx#current-expander-phi))
               (_%ctx122505%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id122499%_
           _%eid122500%_
           _%rebind?122501%_
           _%phi122503%_
           _%ctx122505%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id122507%_ _%eid122508%_ _%rebind?122509%_ _%phi122510%_)
        (let ((_%ctx122512%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id122507%_
           _%eid122508%_
           _%rebind?122509%_
           _%phi122510%_
           _%ctx122512%_))))
    (define gx#core-bind-extern!
      (lambda _g125381_
        (let ((_g125380_ (##length _g125381_)))
          (cond ((##fx= _g125380_ 2) (apply gx#core-bind-extern!__0 _g125381_))
                ((##fx= _g125380_ 3) (apply gx#core-bind-extern!__1 _g125381_))
                ((##fx= _g125380_ 4) (apply gx#core-bind-extern!__2 _g125381_))
                ((##fx= _g125380_ 5) (apply gx#core-bind-extern!__% _g125381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g125381_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id122435%_
               _%e122436%_
               _%rebind?122437%_
               _%phi122438%_
               _%ctx122439%_)
        (gx#bind-identifier!__%
         _%id122435%_
         (let ((_%key122444%_ (gx#core-identifier-key _%id122435%_))
               (_%e122445%_
                (if (or (##structure-instance-of? _%e122436%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e122436%_
                         'gx#expander-context::t))
                    _%e122436%_
                    (##structure
                     gx#user-expander::t
                     _%e122436%_
                     _%ctx122439%_
                     _%phi122438%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key122444%_
             '#t
             _%phi122438%_
             _%ctx122439%_)
            _%key122444%_
            _%phi122438%_
            _%e122445%_))
         _%rebind?122437%_
         _%phi122438%_
         _%ctx122439%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id122450%_ _%e122451%_)
        (let* ((_%rebind?122453%_ '#f)
               (_%phi122455%_ (gx#current-expander-phi))
               (_%ctx122457%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id122450%_
           _%e122451%_
           _%rebind?122453%_
           _%phi122455%_
           _%ctx122457%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id122459%_ _%e122460%_ _%rebind?122461%_)
        (let* ((_%phi122463%_ (gx#current-expander-phi))
               (_%ctx122465%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id122459%_
           _%e122460%_
           _%rebind?122461%_
           _%phi122463%_
           _%ctx122465%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id122467%_ _%e122468%_ _%rebind?122469%_ _%phi122470%_)
        (let ((_%ctx122472%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id122467%_
           _%e122468%_
           _%rebind?122469%_
           _%phi122470%_
           _%ctx122472%_))))
    (define gx#core-bind-syntax!
      (lambda _g125383_
        (let ((_g125382_ (##length _g125383_)))
          (cond ((##fx= _g125382_ 2) (apply gx#core-bind-syntax!__0 _g125383_))
                ((##fx= _g125382_ 3) (apply gx#core-bind-syntax!__1 _g125383_))
                ((##fx= _g125382_ 4) (apply gx#core-bind-syntax!__2 _g125383_))
                ((##fx= _g125382_ 5) (apply gx#core-bind-syntax!__% _g125383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g125383_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id122418%_ _%e122419%_ _%rebind?122420%_)
        (gx#core-bind-syntax!__%
         _%id122418%_
         _%e122419%_
         _%rebind?122420%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id122425%_ _%e122426%_)
        (let ((_%rebind?122428%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id122425%_
           _%e122426%_
           _%rebind?122428%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g125385_
        (let ((_g125384_ (##length _g125385_)))
          (cond ((##fx= _g125384_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g125385_))
                ((##fx= _g125384_ 3)
                 (apply gx#core-bind-root-syntax!__% _g125385_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g125385_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id122376%_
               _%alias-id122377%_
               _%rebind?122378%_
               _%phi122379%_
               _%ctx122380%_)
        (gx#bind-identifier!__%
         _%id122376%_
         (let ((_%key122382%_ (gx#core-identifier-key _%id122376%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key122382%_
             '#t
             _%phi122379%_
             _%ctx122380%_)
            _%key122382%_
            _%phi122379%_
            _%alias-id122377%_))
         _%rebind?122378%_
         _%phi122379%_
         _%ctx122380%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id122387%_ _%alias-id122388%_)
        (let* ((_%rebind?122390%_ '#f)
               (_%phi122392%_ (gx#current-expander-phi))
               (_%ctx122394%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id122387%_
           _%alias-id122388%_
           _%rebind?122390%_
           _%phi122392%_
           _%ctx122394%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id122396%_ _%alias-id122397%_ _%rebind?122398%_)
        (let* ((_%phi122400%_ (gx#current-expander-phi))
               (_%ctx122402%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id122396%_
           _%alias-id122397%_
           _%rebind?122398%_
           _%phi122400%_
           _%ctx122402%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id122404%_ _%alias-id122405%_ _%rebind?122406%_ _%phi122407%_)
        (let ((_%ctx122409%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id122404%_
           _%alias-id122405%_
           _%rebind?122406%_
           _%phi122407%_
           _%ctx122409%_))))
    (define gx#core-bind-alias!
      (lambda _g125387_
        (let ((_g125386_ (##length _g125387_)))
          (cond ((##fx= _g125386_ 2) (apply gx#core-bind-alias!__0 _g125387_))
                ((##fx= _g125386_ 3) (apply gx#core-bind-alias!__1 _g125387_))
                ((##fx= _g125386_ 4) (apply gx#core-bind-alias!__2 _g125387_))
                ((##fx= _g125386_ 5) (apply gx#core-bind-alias!__% _g125387_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g125387_))))))
    (define gx#make-binding-id__%
      (lambda (_%key122326%_ _%syntax?122327%_ _%phi122328%_ _%ctx122329%_)
        (if (uninterned-symbol? _%key122326%_)
            (##gensym 'L)
            (if (pair? _%key122326%_)
                (gensym (##car _%key122326%_))
                (if (##structure-instance-of? _%ctx122329%_ 'gx#top-context::t)
                    (let ((_%ns122334%_
                           (gx#core-context-namespace__% _%ctx122329%_)))
                      (if (and (fxzero? _%phi122328%_) (not _%syntax?122327%_))
                          (if _%ns122334%_
                              (make-symbol__1 _%ns122334%_ '"#" _%key122326%_)
                              _%key122326%_)
                          (if _%syntax?122327%_
                              (make-symbol__1
                               (let ((_%$e122338%_ _%ns122334%_))
                                 (if _%$e122338%_ _%$e122338%_ '""))
                               '"[:"
                               (number->string _%phi122328%_)
                               '":]#"
                               _%key122326%_)
                              (make-symbol__1
                               (let ((_%$e122342%_ _%ns122334%_))
                                 (if _%$e122342%_ _%$e122342%_ '""))
                               '"["
                               (number->string _%phi122328%_)
                               '"]#"
                               _%key122326%_))))
                    (gensym _%key122326%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key122349%_)
        (let* ((_%syntax?122351%_ '#f)
               (_%phi122353%_ (gx#current-expander-phi))
               (_%ctx122355%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key122349%_
           _%syntax?122351%_
           _%phi122353%_
           _%ctx122355%_))))
    (define gx#make-binding-id__1
      (lambda (_%key122357%_ _%syntax?122358%_)
        (let* ((_%phi122360%_ (gx#current-expander-phi))
               (_%ctx122362%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key122357%_
           _%syntax?122358%_
           _%phi122360%_
           _%ctx122362%_))))
    (define gx#make-binding-id__2
      (lambda (_%key122364%_ _%syntax?122365%_ _%phi122366%_)
        (let ((_%ctx122368%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key122364%_
           _%syntax?122365%_
           _%phi122366%_
           _%ctx122368%_))))
    (define gx#make-binding-id
      (lambda _g125389_
        (let ((_g125388_ (##length _g125389_)))
          (cond ((##fx= _g125388_ 1) (apply gx#make-binding-id__0 _g125389_))
                ((##fx= _g125388_ 2) (apply gx#make-binding-id__1 _g125389_))
                ((##fx= _g125388_ 3) (apply gx#make-binding-id__2 _g125389_))
                ((##fx= _g125388_ 4) (apply gx#make-binding-id__% _g125389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g125389_))))))))
