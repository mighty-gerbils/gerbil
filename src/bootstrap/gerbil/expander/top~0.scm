(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1733687559)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx125298%_)
        (letrec ((_%expand-special125300%_
                  (lambda (_%hd125302%_ _%K125303%_ _%rest125304%_ _%r125305%_)
                    (_%K125303%_
                     _%rest125304%_
                     (cons (gx#core-expand-top _%hd125302%_) _%r125305%_)))))
          (gx#core-expand-block__0 _%stx125298%_ _%expand-special125300%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx125051%_)
        (letrec ((_%expand-special125053%_
                  (lambda (_%hd125173%_ _%K125174%_ _%rest125175%_ _%r125176%_)
                    (let* ((_%K125180%_
                            (lambda (_%e125178%_)
                              (_%K125174%_
                               _%rest125175%_
                               (cons _%e125178%_ _%r125176%_))))
                           (_%e125181125210%_ _%hd125173%_)
                           (_%E125205125214%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e125181125210%_)))
                           (_%E125201125226%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125181125210%_)
                                  (let ((_%e125206125218%_
                                         (gx#syntax-e _%e125181125210%_)))
                                    (let ((_%hd125207125221%_
                                           (##car _%e125206125218%_))
                                          (_%tl125208125223%_
                                           (##cdr _%e125206125218%_)))
                                      (if (and (gx#identifier?
                                                _%hd125207125221%_)
                                               (gx#core-identifier=?
                                                _%hd125207125221%_
                                                '%#define-runtime))
                                          (_%K125180%_
                                           (gx#core-expand-define-runtime%
                                            _%hd125173%_))
                                          (_%E125205125214%_))))
                                  (_%E125205125214%_))))
                           (_%E125197125238%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125181125210%_)
                                  (let ((_%e125202125230%_
                                         (gx#syntax-e _%e125181125210%_)))
                                    (let ((_%hd125203125233%_
                                           (##car _%e125202125230%_))
                                          (_%tl125204125235%_
                                           (##cdr _%e125202125230%_)))
                                      (if (and (gx#identifier?
                                                _%hd125203125233%_)
                                               (gx#core-identifier=?
                                                _%hd125203125233%_
                                                '%#define-alias))
                                          (_%K125180%_
                                           (gx#core-expand-define-alias%
                                            _%hd125173%_))
                                          (_%E125201125226%_))))
                                  (_%E125201125226%_))))
                           (_%E125187125250%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125181125210%_)
                                  (let ((_%e125198125242%_
                                         (gx#syntax-e _%e125181125210%_)))
                                    (let ((_%hd125199125245%_
                                           (##car _%e125198125242%_))
                                          (_%tl125200125247%_
                                           (##cdr _%e125198125242%_)))
                                      (if (and (gx#identifier?
                                                _%hd125199125245%_)
                                               (gx#core-identifier=?
                                                _%hd125199125245%_
                                                '%#define-syntax))
                                          (_%K125180%_
                                           (gx#core-expand-define-syntax%
                                            _%hd125173%_))
                                          (_%E125197125238%_))))
                                  (_%E125197125238%_))))
                           (_%E125183125282%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125181125210%_)
                                  (let ((_%e125188125254%_
                                         (gx#syntax-e _%e125181125210%_)))
                                    (let ((_%hd125189125257%_
                                           (##car _%e125188125254%_))
                                          (_%tl125190125259%_
                                           (##cdr _%e125188125254%_)))
                                      (if (and (gx#identifier?
                                                _%hd125189125257%_)
                                               (gx#core-identifier=?
                                                _%hd125189125257%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl125190125259%_)
                                              (let ((_%e125191125262%_
                                                     (gx#syntax-e
                                                      _%tl125190125259%_)))
                                                (let ((_%hd125192125265%_
                                                       (##car _%e125191125262%_))
                                                      (_%tl125193125267%_
                                                       (##cdr _%e125191125262%_)))
                                                  (let ((_%hd-bind125270%_
                                                         _%hd125192125265%_))
                                                    (if (gx#stx-pair?
                                                         _%tl125193125267%_)
                                                        (let ((_%e125194125272%_
                                                               (gx#syntax-e
                                                                _%tl125193125267%_)))
                                                          (let ((_%hd125195125275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e125194125272%_))
                        (_%tl125196125277%_ (##cdr _%e125194125272%_)))
                    (let ((_%expr125280%_ _%hd125195125275%_))
                      (if (gx#stx-null? _%tl125196125277%_)
                          (if (gx#core-bind-values? _%hd-bind125270%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind125270%_)
                                (_%K125180%_ _%hd125173%_))
                              (_%E125187125250%_))
                          (_%E125187125250%_)))))
                (_%E125187125250%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125187125250%_))
                                          (_%E125187125250%_))))
                                  (_%E125187125250%_))))
                           (_%E125182125294%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125181125210%_)
                                  (let ((_%e125184125286%_
                                         (gx#syntax-e _%e125181125210%_)))
                                    (let ((_%hd125185125289%_
                                           (##car _%e125184125286%_))
                                          (_%tl125186125291%_
                                           (##cdr _%e125184125286%_)))
                                      (if (and (gx#identifier?
                                                _%hd125185125289%_)
                                               (gx#core-identifier=?
                                                _%hd125185125289%_
                                                '%#begin-syntax))
                                          (_%K125180%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd125173%_))
                                          (_%E125183125282%_))))
                                  (_%E125183125282%_)))))
                      (_%E125182125294%_))))
                 (_%eval-body125054%_
                  (lambda (_%rbody125062%_)
                    (let _%lp125064%_ ((_%rest125066%_ _%rbody125062%_)
                                       (_%body125067%_ '())
                                       (_%ebody125068%_ '()))
                      (let* ((_%rest125069125077%_ _%rest125066%_)
                             (_%else125071125085%_
                              (lambda ()
                                (values _%body125067%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody125068%_)
                                          (gx#stx-source _%stx125051%_))))))
                             (_%K125073125161%_
                              (lambda (_%rest125088%_ _%hd125089%_)
                                (let* ((_%e125090125107%_ _%hd125089%_)
                                       (_%E125102125111%_
                                        (lambda ()
                                          (_%lp125064%_
                                           _%rest125088%_
                                           (cons _%hd125089%_ _%body125067%_)
                                           (cons _%hd125089%_
                                                 _%ebody125068%_))))
                                       (_%E125092125123%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e125090125107%_)
                                              (let ((_%e125103125115%_
                                                     (gx#syntax-e
                                                      _%e125090125107%_)))
                                                (let ((_%hd125104125118%_
                                                       (##car _%e125103125115%_))
                                                      (_%tl125105125120%_
                                                       (##cdr _%e125103125115%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd125104125118%_)
                                                           (gx#core-identifier=?
                                                            _%hd125104125118%_
                                                            '%#begin-syntax))
                                                      (_%lp125064%_
                                                       _%rest125088%_
                                                       (cons _%hd125089%_
                                                             _%body125067%_)
                                                       _%ebody125068%_)
                                                      (_%E125102125111%_))))
                                              (_%E125102125111%_))))
                                       (_%E125091125157%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e125090125107%_)
                                              (let ((_%e125093125127%_
                                                     (gx#syntax-e
                                                      _%e125090125107%_)))
                                                (let ((_%hd125094125130%_
                                                       (##car _%e125093125127%_))
                                                      (_%tl125095125132%_
                                                       (##cdr _%e125093125127%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd125094125130%_)
                                                           (gx#core-identifier=?
                                                            _%hd125094125130%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl125095125132%_)
                                                          (let ((_%e125096125135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl125095125132%_)))
                    (let ((_%hd125097125138%_ (##car _%e125096125135%_))
                          (_%tl125098125140%_ (##cdr _%e125096125135%_)))
                      (let ((_%hd-bind125143%_ _%hd125097125138%_))
                        (if (gx#stx-pair? _%tl125098125140%_)
                            (let ((_%e125099125145%_
                                   (gx#syntax-e _%tl125098125140%_)))
                              (let ((_%hd125100125148%_
                                     (##car _%e125099125145%_))
                                    (_%tl125101125150%_
                                     (##cdr _%e125099125145%_)))
                                (let ((_%expr125153%_ _%hd125100125148%_))
                                  (if (gx#stx-null? _%tl125101125150%_)
                                      (let ((_%ehd125155%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind125143%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr125153%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd125089%_))))
                                        (_%lp125064%_
                                         _%rest125088%_
                                         (cons _%ehd125155%_ _%body125067%_)
                                         (cons _%ehd125155%_ _%ebody125068%_)))
                                      (_%E125092125123%_)))))
                            (_%E125092125123%_)))))
                  (_%E125092125123%_))
              (_%E125092125123%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125092125123%_)))))
                                  (_%E125091125157%_)))))
                        (if (pair? _%rest125069125077%_)
                            (let ((_%hd125074125164%_
                                   (##car _%rest125069125077%_))
                                  (_%tl125075125166%_
                                   (##cdr _%rest125069125077%_)))
                              (let* ((_%hd125169%_ _%hd125074125164%_)
                                     (_%rest125171%_ _%tl125075125166%_))
                                (_%K125073125161%_
                                 _%rest125171%_
                                 _%hd125169%_)))
                            (_%else125071125085%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody125057%_
                     (gx#core-expand-block__1
                      _%stx125051%_
                      _%expand-special125053%_
                      '#f))
                    (_g125321_ (_%eval-body125054%_ _%rbody125057%_)))
               (begin
                 (let ((_g125322_
                        (if (##values? _g125321_)
                            (##vector-length _g125321_)
                            1)))
                   (if (not (##fx= _g125322_ 2))
                       (error "Context expects 2 values" _g125322_)))
                 (let ((_%expanded-body125059%_ (##vector-ref _g125321_ 0))
                       (_%value125060%_ (##vector-ref _g125321_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body125059%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value125060%_ '())))
                    (gx#stx-source _%stx125051%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx125021%_)
        (let* ((_%e125022125029%_ _%stx125021%_)
               (_%E125024125033%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125022125029%_)))
               (_%E125023125047%_
                (lambda ()
                  (if (gx#stx-pair? _%e125022125029%_)
                      (let ((_%e125025125037%_
                             (gx#syntax-e _%e125022125029%_)))
                        (let ((_%hd125026125040%_ (##car _%e125025125037%_))
                              (_%tl125027125042%_ (##cdr _%e125025125037%_)))
                          (let ((_%body125045%_ _%tl125027125042%_))
                            (if (gx#stx-list? _%body125045%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body125045%_)
                                 (gx#stx-source _%stx125021%_))
                                (_%E125024125033%_)))))
                      (_%E125024125033%_)))))
          (_%E125023125047%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx125019%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx125019%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx124965%_)
        (let* ((_%e124966124979%_ _%stx124965%_)
               (_%E124968124983%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124966124979%_)))
               (_%E124967125015%_
                (lambda ()
                  (if (gx#stx-pair? _%e124966124979%_)
                      (let ((_%e124969124987%_
                             (gx#syntax-e _%e124966124979%_)))
                        (let ((_%hd124970124990%_ (##car _%e124969124987%_))
                              (_%tl124971124992%_ (##cdr _%e124969124987%_)))
                          (if (gx#stx-pair? _%tl124971124992%_)
                              (let ((_%e124972124995%_
                                     (gx#syntax-e _%tl124971124992%_)))
                                (let ((_%hd124973124998%_
                                       (##car _%e124972124995%_))
                                      (_%tl124974125000%_
                                       (##cdr _%e124972124995%_)))
                                  (let ((_%ann125003%_ _%hd124973124998%_))
                                    (if (gx#stx-pair? _%tl124974125000%_)
                                        (let ((_%e124975125005%_
                                               (gx#syntax-e
                                                _%tl124974125000%_)))
                                          (let ((_%hd124976125008%_
                                                 (##car _%e124975125005%_))
                                                (_%tl124977125010%_
                                                 (##cdr _%e124975125005%_)))
                                            (let ((_%expr125013%_
                                                   _%hd124976125008%_))
                                              (if (gx#stx-null?
                                                   _%tl124977125010%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann125003%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr125013%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx124965%_))
                                                  (_%E124968124983%_)))))
                                        (_%E124968124983%_)))))
                              (_%E124968124983%_))))
                      (_%E124968124983%_)))))
          (_%E124967125015%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx124689%_ _%body124690%_)
        (letrec ((_%expand-special124692%_
                  (lambda (_%hd124960%_ _%K124961%_ _%rest124962%_ _%r124963%_)
                    (_%K124961%_
                     '()
                     (cons (_%expand-internal124693%_
                            _%hd124960%_
                            _%rest124962%_)
                           _%r124963%_))))
                 (_%expand-internal124693%_
                  (lambda (_%hd124956%_ _%rest124957%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal124695%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd124956%_ _%rest124957%_))
                          (gx#stx-source _%stx124689%_))
                         _%expand-internal-special124694%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj125315
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj125315)
                       __obj125315))))
                 (_%expand-internal-special124694%_
                  (lambda (_%hd124851%_ _%K124852%_ _%rest124853%_ _%r124854%_)
                    (let* ((_%e124855124880%_ _%hd124851%_)
                           (_%E124875124884%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124855124880%_)))
                           (_%E124871124896%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124855124880%_)
                                  (let ((_%e124876124888%_
                                         (gx#syntax-e _%e124855124880%_)))
                                    (let ((_%hd124877124891%_
                                           (##car _%e124876124888%_))
                                          (_%tl124878124893%_
                                           (##cdr _%e124876124888%_)))
                                      (if (and (gx#identifier?
                                                _%hd124877124891%_)
                                               (gx#core-identifier=?
                                                _%hd124877124891%_
                                                '%#declare))
                                          (_%K124852%_
                                           _%rest124853%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd124851%_)
                                                 _%r124854%_))
                                          (_%E124875124884%_))))
                                  (_%E124875124884%_))))
                           (_%E124867124908%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124855124880%_)
                                  (let ((_%e124872124900%_
                                         (gx#syntax-e _%e124855124880%_)))
                                    (let ((_%hd124873124903%_
                                           (##car _%e124872124900%_))
                                          (_%tl124874124905%_
                                           (##cdr _%e124872124900%_)))
                                      (if (and (gx#identifier?
                                                _%hd124873124903%_)
                                               (gx#core-identifier=?
                                                _%hd124873124903%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd124851%_)
                                            (_%K124852%_
                                             _%rest124853%_
                                             _%r124854%_))
                                          (_%E124871124896%_))))
                                  (_%E124871124896%_))))
                           (_%E124857124920%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124855124880%_)
                                  (let ((_%e124868124912%_
                                         (gx#syntax-e _%e124855124880%_)))
                                    (let ((_%hd124869124915%_
                                           (##car _%e124868124912%_))
                                          (_%tl124870124917%_
                                           (##cdr _%e124868124912%_)))
                                      (if (and (gx#identifier?
                                                _%hd124869124915%_)
                                               (gx#core-identifier=?
                                                _%hd124869124915%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd124851%_)
                                            (_%K124852%_
                                             _%rest124853%_
                                             _%r124854%_))
                                          (_%E124867124908%_))))
                                  (_%E124867124908%_))))
                           (_%E124856124952%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124855124880%_)
                                  (let ((_%e124858124924%_
                                         (gx#syntax-e _%e124855124880%_)))
                                    (let ((_%hd124859124927%_
                                           (##car _%e124858124924%_))
                                          (_%tl124860124929%_
                                           (##cdr _%e124858124924%_)))
                                      (if (and (gx#identifier?
                                                _%hd124859124927%_)
                                               (gx#core-identifier=?
                                                _%hd124859124927%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl124860124929%_)
                                              (let ((_%e124861124932%_
                                                     (gx#syntax-e
                                                      _%tl124860124929%_)))
                                                (let ((_%hd124862124935%_
                                                       (##car _%e124861124932%_))
                                                      (_%tl124863124937%_
                                                       (##cdr _%e124861124932%_)))
                                                  (let ((_%hd-bind124940%_
                                                         _%hd124862124935%_))
                                                    (if (gx#stx-pair?
                                                         _%tl124863124937%_)
                                                        (let ((_%e124864124942%_
                                                               (gx#syntax-e
                                                                _%tl124863124937%_)))
                                                          (let ((_%hd124865124945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e124864124942%_))
                        (_%tl124866124947%_ (##cdr _%e124864124942%_)))
                    (let ((_%expr124950%_ _%hd124865124945%_))
                      (if (gx#stx-null? _%tl124866124947%_)
                          (if (gx#core-bind-values? _%hd-bind124940%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind124940%_)
                                (_%K124852%_
                                 _%rest124853%_
                                 (cons _%hd124851%_ _%r124854%_)))
                              (_%E124857124920%_))
                          (_%E124857124920%_)))))
                (_%E124857124920%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124857124920%_))
                                          (_%E124857124920%_))))
                                  (_%E124857124920%_)))))
                      (_%E124856124952%_))))
                 (_%wrap-internal124695%_
                  (lambda (_%rbody124697%_)
                    (let _%lp124699%_ ((_%rest124701%_ _%rbody124697%_)
                                       (_%decls124702%_ '())
                                       (_%bind124703%_ '())
                                       (_%body124704%_ '()))
                      (let* ((_%e124705124712%_ _%rest124701%_)
                             (_%E124707124761%_
                              (lambda ()
                                (let* ((_%body124756%_
                                        (let* ((_%body124715124725%_
                                                _%body124704%_)
                                               (_%else124718124733%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body124704%_)
                                                   (gx#stx-source
                                                    _%stx124689%_)))))
                                          (let ((_%K124723124753%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx124689%_)))
                                                (_%K124720124739%_
                                                 (lambda (_%expr124737%_)
                                                   _%expr124737%_)))
                                            (let ((_%try-match124717124749%_
                                                   (lambda ()
                                                     (if (pair? _%body124715124725%_)
                                                         (let ((_%tl124722124744%_
                                                                (##cdr _%body124715124725%_))
                                                               (_%hd124721124742%_
                                                                (##car _%body124715124725%_)))
                                                           (if (null? _%tl124722124744%_)
                                                               (let ((_%expr124747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd124721124742%_))
                         (_%K124720124739%_ _%expr124747%_))
                       (_%else124718124733%_)))
                 (_%else124718124733%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body124715124725%_)
                                                  (_%K124723124753%_)
                                                  (_%try-match124717124749%_))))))
                                       (_%body124758%_
                                        (if (null? _%bind124703%_)
                                            _%body124756%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind124703%_
                                                         (cons _%body124756%_
                                                               '())))
                                             (gx#stx-source _%stx124689%_)))))
                                  (if (null? _%decls124702%_)
                                      _%body124758%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls124702%_
                                                   (cons _%body124758%_ '())))
                                       (gx#stx-source _%stx124689%_))))))
                             (_%E124706124847%_
                              (lambda ()
                                (if (gx#stx-pair? _%e124705124712%_)
                                    (let ((_%e124708124765%_
                                           (gx#syntax-e _%e124705124712%_)))
                                      (let ((_%hd124709124768%_
                                             (##car _%e124708124765%_))
                                            (_%tl124710124770%_
                                             (##cdr _%e124708124765%_)))
                                        (let* ((_%hd124773%_
                                                _%hd124709124768%_)
                                               (_%rest124775%_
                                                _%tl124710124770%_)
                                               (_%e124776124793%_ _%hd124773%_)
                                               (_%E124788124797%_
                                                (lambda ()
                                                  (if (null? _%bind124703%_)
                                                      (_%lp124699%_
                                                       _%rest124775%_
                                                       _%decls124702%_
                                                       _%bind124703%_
                                                       (cons _%hd124773%_
                                                             _%body124704%_))
                                                      (_%lp124699%_
                                                       _%rest124775%_
                                                       _%decls124702%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd124773%_ '()))
                     _%bind124703%_)
               _%body124704%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E124778124811%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e124776124793%_)
                                                      (let ((_%e124789124801%_
                                                             (gx#syntax-e
                                                              _%e124776124793%_)))
                                                        (let ((_%hd124790124804%_
                                                               (##car _%e124789124801%_))
                                                              (_%tl124791124806%_
                                                               (##cdr _%e124789124801%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd124790124804%_)
                           (gx#core-identifier=?
                            _%hd124790124804%_
                            '%#declare))
                      (let ((_%xdecls124809%_ _%tl124791124806%_))
                        (_%lp124699%_
                         _%rest124775%_
                         (gx#stx-foldr cons _%decls124702%_ _%xdecls124809%_)
                         _%bind124703%_
                         _%body124704%_))
                      (_%E124788124797%_))))
              (_%E124788124797%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E124777124843%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e124776124793%_)
                                                      (let ((_%e124779124815%_
                                                             (gx#syntax-e
                                                              _%e124776124793%_)))
                                                        (let ((_%hd124780124818%_
                                                               (##car _%e124779124815%_))
                                                              (_%tl124781124820%_
                                                               (##cdr _%e124779124815%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd124780124818%_)
                           (gx#core-identifier=?
                            _%hd124780124818%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl124781124820%_)
                          (let ((_%e124782124823%_
                                 (gx#syntax-e _%tl124781124820%_)))
                            (let ((_%hd124783124826%_
                                   (##car _%e124782124823%_))
                                  (_%tl124784124828%_
                                   (##cdr _%e124782124823%_)))
                              (let ((_%hd-bind124831%_ _%hd124783124826%_))
                                (if (gx#stx-pair? _%tl124784124828%_)
                                    (let ((_%e124785124833%_
                                           (gx#syntax-e _%tl124784124828%_)))
                                      (let ((_%hd124786124836%_
                                             (##car _%e124785124833%_))
                                            (_%tl124787124838%_
                                             (##cdr _%e124785124833%_)))
                                        (let ((_%expr124841%_
                                               _%hd124786124836%_))
                                          (if (gx#stx-null? _%tl124787124838%_)
                                              (_%lp124699%_
                                               _%rest124775%_
                                               _%decls124702%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind124831%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr124841%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind124703%_)
                                               _%body124704%_)
                                              (_%E124778124811%_)))))
                                    (_%E124778124811%_)))))
                          (_%E124778124811%_))
                      (_%E124778124811%_))))
              (_%E124778124811%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E124777124843%_))))
                                    (_%E124707124761%_)))))
                        (_%E124706124847%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body124690%_)
            (gx#stx-source _%stx124689%_))
           _%expand-special124692%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx124627%_)
        (let* ((_%e124628124635%_ _%stx124627%_)
               (_%E124630124639%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124628124635%_)))
               (_%E124629124685%_
                (lambda ()
                  (if (gx#stx-pair? _%e124628124635%_)
                      (let ((_%e124631124643%_
                             (gx#syntax-e _%e124628124635%_)))
                        (let ((_%hd124632124646%_ (##car _%e124631124643%_))
                              (_%tl124633124648%_ (##cdr _%e124631124643%_)))
                          (let ((_%body124651%_ _%tl124633124648%_))
                            (if (gx#stx-list? _%body124651%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl124653%_)
                                     (let* ((_%e124654124661%_ _%decl124653%_)
                                            (_%E124656124665%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e124654124661%_)))
                                            (_%E124655124681%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e124654124661%_)
                                                   (let ((_%e124657124669%_
                                                          (gx#syntax-e
                                                           _%e124654124661%_)))
                                                     (let ((_%hd124658124672%_
                                                            (##car _%e124657124669%_))
                                                           (_%tl124659124674%_
                                                            (##cdr _%e124657124669%_)))
                                                       (let* ((_%head124677%_
                                                               _%hd124658124672%_)
                                                              (_%args124679%_
                                                               _%tl124659124674%_))
                                                         (if (gx#stx-list?
                                                              _%args124679%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl124653%_)
                                                             (_%E124656124665%_)))))
                                                   (_%E124656124665%_)))))
                                       (_%E124655124681%_)))
                                   _%body124651%_))
                                 (gx#stx-source _%stx124627%_))
                                (_%E124630124639%_)))))
                      (_%E124630124639%_)))))
          (_%E124629124685%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx124531%_)
        (let* ((_%e124532124539%_ _%stx124531%_)
               (_%E124534124543%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124532124539%_)))
               (_%E124533124623%_
                (lambda ()
                  (if (gx#stx-pair? _%e124532124539%_)
                      (let ((_%e124535124547%_
                             (gx#syntax-e _%e124532124539%_)))
                        (let ((_%hd124536124550%_ (##car _%e124535124547%_))
                              (_%tl124537124552%_ (##cdr _%e124535124547%_)))
                          (let ((_%body124555%_ _%tl124537124552%_))
                            (let _%lp124557%_ ((_%rest124559%_ _%body124555%_)
                                               (_%r124560%_ '()))
                              (let* ((_%e124561124575%_ _%rest124559%_)
                                     (_%E124573124579%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx124531%_)))
                                     (_%E124563124583%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e124561124575%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r124560%_))
                                             (gx#stx-source _%stx124531%_))
                                            (_%E124573124579%_))))
                                     (_%E124562124619%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e124561124575%_)
                                            (let ((_%e124564124587%_
                                                   (gx#syntax-e
                                                    _%e124561124575%_)))
                                              (let ((_%hd124565124590%_
                                                     (##car _%e124564124587%_))
                                                    (_%tl124566124592%_
                                                     (##cdr _%e124564124587%_)))
                                                (if (gx#stx-pair?
                                                     _%hd124565124590%_)
                                                    (let ((_%e124567124595%_
                                                           (gx#syntax-e
                                                            _%hd124565124590%_)))
                                                      (let ((_%hd124568124598%_
                                                             (##car _%e124567124595%_))
                                                            (_%tl124569124600%_
                                                             (##cdr _%e124567124595%_)))
                                                        (let ((_%id124603%_
                                                               _%hd124568124598%_))
                                                          (if (gx#stx-pair?
                                                               _%tl124569124600%_)
                                                              (let ((_%e124570124605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl124569124600%_)))
                        (let ((_%hd124571124608%_ (##car _%e124570124605%_))
                              (_%tl124572124610%_ (##cdr _%e124570124605%_)))
                          (let ((_%eid124613%_ _%hd124571124608%_))
                            (if (gx#stx-null? _%tl124572124610%_)
                                (let ((_%rest124615%_ _%tl124566124592%_))
                                  (if (and (gx#identifier? _%id124603%_)
                                           (gx#identifier? _%eid124613%_))
                                      (let ((_%eid124617%_
                                             (gx#stx-e _%eid124613%_)))
                                        (gx#core-bind-extern!__0
                                         _%id124603%_
                                         _%eid124617%_)
                                        (_%lp124557%_
                                         _%rest124615%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id124603%_)
                                                     (cons _%eid124617%_ '()))
                                               _%r124560%_)))
                                      (_%E124563124583%_)))
                                (_%E124563124583%_)))))
                      (_%E124563124583%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E124563124583%_))))
                                            (_%E124563124583%_)))))
                                (_%E124562124619%_))))))
                      (_%E124534124543%_)))))
          (_%E124533124623%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx124477%_)
        (let* ((_%e124478124491%_ _%stx124477%_)
               (_%E124480124495%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124478124491%_)))
               (_%E124479124527%_
                (lambda ()
                  (if (gx#stx-pair? _%e124478124491%_)
                      (let ((_%e124481124499%_
                             (gx#syntax-e _%e124478124491%_)))
                        (let ((_%hd124482124502%_ (##car _%e124481124499%_))
                              (_%tl124483124504%_ (##cdr _%e124481124499%_)))
                          (if (gx#stx-pair? _%tl124483124504%_)
                              (let ((_%e124484124507%_
                                     (gx#syntax-e _%tl124483124504%_)))
                                (let ((_%hd124485124510%_
                                       (##car _%e124484124507%_))
                                      (_%tl124486124512%_
                                       (##cdr _%e124484124507%_)))
                                  (let ((_%hd124515%_ _%hd124485124510%_))
                                    (if (gx#stx-pair? _%tl124486124512%_)
                                        (let ((_%e124487124517%_
                                               (gx#syntax-e
                                                _%tl124486124512%_)))
                                          (let ((_%hd124488124520%_
                                                 (##car _%e124487124517%_))
                                                (_%tl124489124522%_
                                                 (##cdr _%e124487124517%_)))
                                            (let ((_%expr124525%_
                                                   _%hd124488124520%_))
                                              (if (gx#stx-null?
                                                   _%tl124489124522%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd124515%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd124515%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd124515%_)
                             (cons (gx#core-expand-expression _%expr124525%_)
                                   '())))
                 (gx#stx-source _%stx124477%_)))
              (_%E124480124495%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124480124495%_)))))
                                        (_%E124480124495%_)))))
                              (_%E124480124495%_))))
                      (_%E124480124495%_)))))
          (_%E124479124527%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx124421%_)
        (let* ((_%e124422124435%_ _%stx124421%_)
               (_%E124424124439%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124422124435%_)))
               (_%E124423124473%_
                (lambda ()
                  (if (gx#stx-pair? _%e124422124435%_)
                      (let ((_%e124425124443%_
                             (gx#syntax-e _%e124422124435%_)))
                        (let ((_%hd124426124446%_ (##car _%e124425124443%_))
                              (_%tl124427124448%_ (##cdr _%e124425124443%_)))
                          (if (gx#stx-pair? _%tl124427124448%_)
                              (let ((_%e124428124451%_
                                     (gx#syntax-e _%tl124427124448%_)))
                                (let ((_%hd124429124454%_
                                       (##car _%e124428124451%_))
                                      (_%tl124430124456%_
                                       (##cdr _%e124428124451%_)))
                                  (let ((_%id124459%_ _%hd124429124454%_))
                                    (if (gx#stx-pair? _%tl124430124456%_)
                                        (let ((_%e124431124461%_
                                               (gx#syntax-e
                                                _%tl124430124456%_)))
                                          (let ((_%hd124432124464%_
                                                 (##car _%e124431124461%_))
                                                (_%tl124433124466%_
                                                 (##cdr _%e124431124461%_)))
                                            (let ((_%binding-id124469%_
                                                   _%hd124432124464%_))
                                              (if (gx#stx-null?
                                                   _%tl124433124466%_)
                                                  (if (and (gx#identifier?
                                                            _%id124459%_)
                                                           (gx#identifier?
                                                            _%binding-id124469%_))
                                                      (let ((_%eid124471%_
                                                             (gx#stx-e
                                                              _%binding-id124469%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id124459%_
                                                         _%eid124471%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id124459%_)
                             (cons _%eid124471%_ '())))))
              (_%E124424124439%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124424124439%_)))))
                                        (_%E124424124439%_)))))
                              (_%E124424124439%_))))
                      (_%E124424124439%_)))))
          (_%E124423124473%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx124364%_)
        (let* ((_%e124365124378%_ _%stx124364%_)
               (_%E124367124382%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124365124378%_)))
               (_%E124366124417%_
                (lambda ()
                  (if (gx#stx-pair? _%e124365124378%_)
                      (let ((_%e124368124386%_
                             (gx#syntax-e _%e124365124378%_)))
                        (let ((_%hd124369124389%_ (##car _%e124368124386%_))
                              (_%tl124370124391%_ (##cdr _%e124368124386%_)))
                          (if (gx#stx-pair? _%tl124370124391%_)
                              (let ((_%e124371124394%_
                                     (gx#syntax-e _%tl124370124391%_)))
                                (let ((_%hd124372124397%_
                                       (##car _%e124371124394%_))
                                      (_%tl124373124399%_
                                       (##cdr _%e124371124394%_)))
                                  (let ((_%id124402%_ _%hd124372124397%_))
                                    (if (gx#stx-pair? _%tl124373124399%_)
                                        (let ((_%e124374124404%_
                                               (gx#syntax-e
                                                _%tl124373124399%_)))
                                          (let ((_%hd124375124407%_
                                                 (##car _%e124374124404%_))
                                                (_%tl124376124409%_
                                                 (##cdr _%e124374124404%_)))
                                            (let ((_%expr124412%_
                                                   _%hd124375124407%_))
                                              (if (gx#stx-null?
                                                   _%tl124376124409%_)
                                                  (if (gx#identifier?
                                                       _%id124402%_)
                                                      (let ((_g125323_
                                                             (gx#core-expand-expression+1
                                                              _%expr124412%_)))
                                                        (begin
                                                          (let ((_g125324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g125323_)
                             (##vector-length _g125323_)
                             1)))
                    (if (not (##fx= _g125324_ 2))
                        (error "Context expects 2 values" _g125324_)))
                  (let ((_%e-stx124414%_ (##vector-ref _g125323_ 0))
                        (_%e124415%_ (##vector-ref _g125323_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id124402%_ _%e124415%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id124402%_)
                                   (cons _%e-stx124414%_ '())))
                       (gx#stx-source _%stx124364%_))))))
              (_%E124367124382%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124367124382%_)))))
                                        (_%E124367124382%_)))))
                              (_%E124367124382%_))))
                      (_%E124367124382%_)))))
          (_%E124366124417%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx124308%_)
        (let* ((_%e124309124322%_ _%stx124308%_)
               (_%E124311124326%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124309124322%_)))
               (_%E124310124360%_
                (lambda ()
                  (if (gx#stx-pair? _%e124309124322%_)
                      (let ((_%e124312124330%_
                             (gx#syntax-e _%e124309124322%_)))
                        (let ((_%hd124313124333%_ (##car _%e124312124330%_))
                              (_%tl124314124335%_ (##cdr _%e124312124330%_)))
                          (if (gx#stx-pair? _%tl124314124335%_)
                              (let ((_%e124315124338%_
                                     (gx#syntax-e _%tl124314124335%_)))
                                (let ((_%hd124316124341%_
                                       (##car _%e124315124338%_))
                                      (_%tl124317124343%_
                                       (##cdr _%e124315124338%_)))
                                  (let ((_%id124346%_ _%hd124316124341%_))
                                    (if (gx#stx-pair? _%tl124317124343%_)
                                        (let ((_%e124318124348%_
                                               (gx#syntax-e
                                                _%tl124317124343%_)))
                                          (let ((_%hd124319124351%_
                                                 (##car _%e124318124348%_))
                                                (_%tl124320124353%_
                                                 (##cdr _%e124318124348%_)))
                                            (let ((_%alias-id124356%_
                                                   _%hd124319124351%_))
                                              (if (gx#stx-null?
                                                   _%tl124320124353%_)
                                                  (if (and (gx#identifier?
                                                            _%id124346%_)
                                                           (gx#identifier?
                                                            _%alias-id124356%_))
                                                      (let ((_%alias-id124358%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id124356%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id124346%_
                                                         _%alias-id124358%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id124346%_)
                             (cons _%alias-id124358%_ '())))))
              (_%E124311124326%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124311124326%_)))))
                                        (_%E124311124326%_)))))
                              (_%E124311124326%_))))
                      (_%E124311124326%_)))))
          (_%E124310124360%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx124251%_ _%wrap?124252%_)
        (let* ((_%e124253124263%_ _%stx124251%_)
               (_%E124255124267%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124253124263%_)))
               (_%E124254124294%_
                (lambda ()
                  (if (gx#stx-pair? _%e124253124263%_)
                      (let ((_%e124256124271%_
                             (gx#syntax-e _%e124253124263%_)))
                        (let ((_%hd124257124274%_ (##car _%e124256124271%_))
                              (_%tl124258124276%_ (##cdr _%e124256124271%_)))
                          (if (gx#stx-pair? _%tl124258124276%_)
                              (let ((_%e124259124279%_
                                     (gx#syntax-e _%tl124258124276%_)))
                                (let ((_%hd124260124282%_
                                       (##car _%e124259124279%_))
                                      (_%tl124261124284%_
                                       (##cdr _%e124259124279%_)))
                                  (let* ((_%hd124287%_ _%hd124260124282%_)
                                         (_%body124289%_ _%tl124261124284%_))
                                    (if (gx#core-bind-values? _%hd124287%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd124287%_)
                                           (let ((_%body124292%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd124287%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx124251%_
                                                               _%body124289%_)
                                                              '()))))
                                             (if _%wrap?124252%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body124292%_)
                                                  (gx#stx-source
                                                   _%stx124251%_))
                                                 _%body124292%_)))
                                         gx#current-expander-context
                                         (let ((__obj125316
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj125316)
                                           __obj125316))
                                        (_%E124255124267%_)))))
                              (_%E124255124267%_))))
                      (_%E124255124267%_)))))
          (_%E124254124294%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx124301%_)
        (let ((_%wrap?124303%_ '#t))
          (gx#core-expand-lambda%__% _%stx124301%_ _%wrap?124303%_))))
    (define gx#core-expand-lambda%
      (lambda _g125326_
        (let ((_g125325_ (##length _g125326_)))
          (cond ((##fx= _g125325_ 1)
                 (apply gx#core-expand-lambda%__0 _g125326_))
                ((##fx= _g125325_ 2)
                 (apply gx#core-expand-lambda%__% _g125326_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g125326_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx124215%_)
        (let* ((_%e124216124223%_ _%stx124215%_)
               (_%E124218124227%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124216124223%_)))
               (_%E124217124246%_
                (lambda ()
                  (if (gx#stx-pair? _%e124216124223%_)
                      (let ((_%e124219124231%_
                             (gx#syntax-e _%e124216124223%_)))
                        (let ((_%hd124220124234%_ (##car _%e124219124231%_))
                              (_%tl124221124236%_ (##cdr _%e124219124231%_)))
                          (let ((_%clauses124239%_ _%tl124221124236%_))
                            (if (gx#stx-list? _%clauses124239%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause124241%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause124241%_)
                                       (let ((_%$e124243%_
                                              (gx#stx-source
                                               _%clause124241%_)))
                                         (if _%$e124243%_
                                             _%$e124243%_
                                             (gx#stx-source _%stx124215%_))))
                                      '#f))
                                   _%clauses124239%_))
                                 (gx#stx-source _%stx124215%_))
                                (_%E124218124227%_)))))
                      (_%E124218124227%_)))))
          (_%E124217124246%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx124169%_)
        (let* ((_%e124170124180%_ _%stx124169%_)
               (_%E124172124184%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124170124180%_)))
               (_%E124171124211%_
                (lambda ()
                  (if (gx#stx-pair? _%e124170124180%_)
                      (let ((_%e124173124188%_
                             (gx#syntax-e _%e124170124180%_)))
                        (let ((_%hd124174124191%_ (##car _%e124173124188%_))
                              (_%tl124175124193%_ (##cdr _%e124173124188%_)))
                          (if (gx#stx-pair? _%tl124175124193%_)
                              (let ((_%e124176124196%_
                                     (gx#syntax-e _%tl124175124193%_)))
                                (let ((_%hd124177124199%_
                                       (##car _%e124176124196%_))
                                      (_%tl124178124201%_
                                       (##cdr _%e124176124196%_)))
                                  (let* ((_%hd124204%_ _%hd124177124199%_)
                                         (_%body124206%_ _%tl124178124201%_))
                                    (if (gx#core-expand-let-bind? _%hd124204%_)
                                        (let ((_%expressions124208%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd124204%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd124204%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd124204%_
                                                           _%expressions124208%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx124169%_
                         _%body124206%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx124169%_)))
                                           gx#current-expander-context
                                           (let ((__obj125317
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj125317)
                                             __obj125317)))
                                        (_%E124172124184%_)))))
                              (_%E124172124184%_))))
                      (_%E124172124184%_)))))
          (_%E124171124211%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx124114%_ _%form124115%_)
        (let* ((_%e124116124126%_ _%stx124114%_)
               (_%E124118124130%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124116124126%_)))
               (_%E124117124155%_
                (lambda ()
                  (if (gx#stx-pair? _%e124116124126%_)
                      (let ((_%e124119124134%_
                             (gx#syntax-e _%e124116124126%_)))
                        (let ((_%hd124120124137%_ (##car _%e124119124134%_))
                              (_%tl124121124139%_ (##cdr _%e124119124134%_)))
                          (if (gx#stx-pair? _%tl124121124139%_)
                              (let ((_%e124122124142%_
                                     (gx#syntax-e _%tl124121124139%_)))
                                (let ((_%hd124123124145%_
                                       (##car _%e124122124142%_))
                                      (_%tl124124124147%_
                                       (##cdr _%e124122124142%_)))
                                  (let* ((_%hd124150%_ _%hd124123124145%_)
                                         (_%body124152%_ _%tl124124124147%_))
                                    (if (gx#core-expand-let-bind? _%hd124150%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd124150%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form124115%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd124150%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd124150%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx124114%_
                                                               _%body124152%_)
                                                              '())))
                                            (gx#stx-source _%stx124114%_)))
                                         gx#current-expander-context
                                         (let ((__obj125318
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj125318)
                                           __obj125318))
                                        (_%E124118124130%_)))))
                              (_%E124118124130%_))))
                      (_%E124118124130%_)))))
          (_%E124117124155%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx124162%_)
        (let ((_%form124164%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx124162%_ _%form124164%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g125328_
        (let ((_g125327_ (##length _g125328_)))
          (cond ((##fx= _g125327_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g125328_))
                ((##fx= _g125327_ 2)
                 (apply gx#core-expand-letrec-values%__% _g125328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g125328_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx124111%_)
        (gx#core-expand-letrec-values%__% _%stx124111%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx124068%_)
        (if (gx#stx-list? _%stx124068%_)
            (gx#stx-andmap
             (lambda (_%bind124070%_)
               (let* ((_%e124071124081%_ _%bind124070%_)
                      (_%E124073124085%_ (lambda () '#f))
                      (_%E124072124107%_
                       (lambda ()
                         (if (gx#stx-pair? _%e124071124081%_)
                             (let ((_%e124074124089%_
                                    (gx#syntax-e _%e124071124081%_)))
                               (let ((_%hd124075124092%_
                                      (##car _%e124074124089%_))
                                     (_%tl124076124094%_
                                      (##cdr _%e124074124089%_)))
                                 (let ((_%hd124097%_ _%hd124075124092%_))
                                   (if (gx#stx-pair? _%tl124076124094%_)
                                       (let ((_%e124077124099%_
                                              (gx#syntax-e
                                               _%tl124076124094%_)))
                                         (let ((_%hd124078124102%_
                                                (##car _%e124077124099%_))
                                               (_%tl124079124104%_
                                                (##cdr _%e124077124099%_)))
                                           (if (gx#stx-null?
                                                _%tl124079124104%_)
                                               (gx#core-bind-values?
                                                _%hd124097%_)
                                               (_%E124073124085%_))))
                                       (_%E124073124085%_)))))
                             (_%E124073124085%_)))))
                 (_%E124072124107%_)))
             _%stx124068%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind124027%_)
        (let* ((_%e124028124038%_ _%bind124027%_)
               (_%E124030124042%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124028124038%_)))
               (_%E124029124064%_
                (lambda ()
                  (if (gx#stx-pair? _%e124028124038%_)
                      (let ((_%e124031124046%_
                             (gx#syntax-e _%e124028124038%_)))
                        (let ((_%hd124032124049%_ (##car _%e124031124046%_))
                              (_%tl124033124051%_ (##cdr _%e124031124046%_)))
                          (if (gx#stx-pair? _%tl124033124051%_)
                              (let ((_%e124034124054%_
                                     (gx#syntax-e _%tl124033124051%_)))
                                (let ((_%hd124035124057%_
                                       (##car _%e124034124054%_))
                                      (_%tl124036124059%_
                                       (##cdr _%e124034124054%_)))
                                  (let ((_%expr124062%_ _%hd124035124057%_))
                                    (if (gx#stx-null? _%tl124036124059%_)
                                        (gx#core-expand-expression
                                         _%expr124062%_)
                                        (_%E124030124042%_)))))
                              (_%E124030124042%_))))
                      (_%E124030124042%_)))))
          (_%E124029124064%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind123986%_)
        (let* ((_%e123987123997%_ _%bind123986%_)
               (_%E123989124001%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123987123997%_)))
               (_%E123988124023%_
                (lambda ()
                  (if (gx#stx-pair? _%e123987123997%_)
                      (let ((_%e123990124005%_
                             (gx#syntax-e _%e123987123997%_)))
                        (let ((_%hd123991124008%_ (##car _%e123990124005%_))
                              (_%tl123992124010%_ (##cdr _%e123990124005%_)))
                          (let ((_%hd124013%_ _%hd123991124008%_))
                            (if (gx#stx-pair? _%tl123992124010%_)
                                (let ((_%e123993124015%_
                                       (gx#syntax-e _%tl123992124010%_)))
                                  (let ((_%hd123994124018%_
                                         (##car _%e123993124015%_))
                                        (_%tl123995124020%_
                                         (##cdr _%e123993124015%_)))
                                    (if (gx#stx-null? _%tl123995124020%_)
                                        (gx#core-bind-values!__0 _%hd124013%_)
                                        (_%E123989124001%_))))
                                (_%E123989124001%_)))))
                      (_%E123989124001%_)))))
          (_%E123988124023%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind123944%_ _%expr123945%_)
        (let* ((_%e123946123956%_ _%bind123944%_)
               (_%E123948123960%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123946123956%_)))
               (_%E123947123982%_
                (lambda ()
                  (if (gx#stx-pair? _%e123946123956%_)
                      (let ((_%e123949123964%_
                             (gx#syntax-e _%e123946123956%_)))
                        (let ((_%hd123950123967%_ (##car _%e123949123964%_))
                              (_%tl123951123969%_ (##cdr _%e123949123964%_)))
                          (let ((_%hd123972%_ _%hd123950123967%_))
                            (if (gx#stx-pair? _%tl123951123969%_)
                                (let ((_%e123952123974%_
                                       (gx#syntax-e _%tl123951123969%_)))
                                  (let ((_%hd123953123977%_
                                         (##car _%e123952123974%_))
                                        (_%tl123954123979%_
                                         (##cdr _%e123952123974%_)))
                                    (if (gx#stx-null? _%tl123954123979%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd123972%_)
                                              (cons _%expr123945%_ '()))
                                        (_%E123948123960%_))))
                                (_%E123948123960%_)))))
                      (_%E123948123960%_)))))
          (_%E123947123982%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx123898%_)
        (let* ((_%e123899123909%_ _%stx123898%_)
               (_%E123901123913%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123899123909%_)))
               (_%E123900123940%_
                (lambda ()
                  (if (gx#stx-pair? _%e123899123909%_)
                      (let ((_%e123902123917%_
                             (gx#syntax-e _%e123899123909%_)))
                        (let ((_%hd123903123920%_ (##car _%e123902123917%_))
                              (_%tl123904123922%_ (##cdr _%e123902123917%_)))
                          (if (gx#stx-pair? _%tl123904123922%_)
                              (let ((_%e123905123925%_
                                     (gx#syntax-e _%tl123904123922%_)))
                                (let ((_%hd123906123928%_
                                       (##car _%e123905123925%_))
                                      (_%tl123907123930%_
                                       (##cdr _%e123905123925%_)))
                                  (let* ((_%hd123933%_ _%hd123906123928%_)
                                         (_%body123935%_ _%tl123907123930%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd123933%_)
                                        (let ((_%expanders123937%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd123933%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd123933%_
                                              _%expanders123937%_)
                                             (gx#core-expand-local-block
                                              _%stx123898%_
                                              _%body123935%_))
                                           gx#current-expander-context
                                           (let ((__obj125319
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj125319)
                                             __obj125319)))
                                        (_%E123901123913%_)))))
                              (_%E123901123913%_))))
                      (_%E123901123913%_)))))
          (_%E123900123940%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx123847%_)
        (let* ((_%e123848123858%_ _%stx123847%_)
               (_%E123850123862%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123848123858%_)))
               (_%E123849123894%_
                (lambda ()
                  (if (gx#stx-pair? _%e123848123858%_)
                      (let ((_%e123851123866%_
                             (gx#syntax-e _%e123848123858%_)))
                        (let ((_%hd123852123869%_ (##car _%e123851123866%_))
                              (_%tl123853123871%_ (##cdr _%e123851123866%_)))
                          (if (gx#stx-pair? _%tl123853123871%_)
                              (let ((_%e123854123874%_
                                     (gx#syntax-e _%tl123853123871%_)))
                                (let ((_%hd123855123877%_
                                       (##car _%e123854123874%_))
                                      (_%tl123856123879%_
                                       (##cdr _%e123854123874%_)))
                                  (let* ((_%hd123882%_ _%hd123855123877%_)
                                         (_%body123884%_ _%tl123856123879%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd123882%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd123882%_
                                            (make-list
                                             (gx#stx-length _%hd123882%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g123886123889%_
                                                     _%g123887123891%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g123886123889%_
                                               _%g123887123891%_
                                               '#t))
                                            _%hd123882%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd123882%_))
                                           (gx#core-expand-local-block
                                            _%stx123847%_
                                            _%body123884%_))
                                         gx#current-expander-context
                                         (let ((__obj125320
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj125320)
                                           __obj125320))
                                        (_%E123850123862%_)))))
                              (_%E123850123862%_))))
                      (_%E123850123862%_)))))
          (_%E123849123894%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx123804%_)
        (if (gx#stx-list? _%stx123804%_)
            (gx#stx-andmap
             (lambda (_%bind123806%_)
               (let* ((_%e123807123817%_ _%bind123806%_)
                      (_%E123809123821%_ (lambda () '#f))
                      (_%E123808123843%_
                       (lambda ()
                         (if (gx#stx-pair? _%e123807123817%_)
                             (let ((_%e123810123825%_
                                    (gx#syntax-e _%e123807123817%_)))
                               (let ((_%hd123811123828%_
                                      (##car _%e123810123825%_))
                                     (_%tl123812123830%_
                                      (##cdr _%e123810123825%_)))
                                 (let ((_%hd123833%_ _%hd123811123828%_))
                                   (if (gx#stx-pair? _%tl123812123830%_)
                                       (let ((_%e123813123835%_
                                              (gx#syntax-e
                                               _%tl123812123830%_)))
                                         (let ((_%hd123814123838%_
                                                (##car _%e123813123835%_))
                                               (_%tl123815123840%_
                                                (##cdr _%e123813123835%_)))
                                           (if (gx#stx-null?
                                                _%tl123815123840%_)
                                               (gx#identifier? _%hd123833%_)
                                               (_%E123809123821%_))))
                                       (_%E123809123821%_)))))
                             (_%E123809123821%_)))))
                 (_%E123808123843%_)))
             _%stx123804%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind123760%_)
        (let* ((_%e123761123771%_ _%bind123760%_)
               (_%E123763123775%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123761123771%_)))
               (_%E123762123800%_
                (lambda ()
                  (if (gx#stx-pair? _%e123761123771%_)
                      (let ((_%e123764123779%_
                             (gx#syntax-e _%e123761123771%_)))
                        (let ((_%hd123765123782%_ (##car _%e123764123779%_))
                              (_%tl123766123784%_ (##cdr _%e123764123779%_)))
                          (if (gx#stx-pair? _%tl123766123784%_)
                              (let ((_%e123767123787%_
                                     (gx#syntax-e _%tl123766123784%_)))
                                (let ((_%hd123768123790%_
                                       (##car _%e123767123787%_))
                                      (_%tl123769123792%_
                                       (##cdr _%e123767123787%_)))
                                  (let ((_%expr123795%_ _%hd123768123790%_))
                                    (if (gx#stx-null? _%tl123769123792%_)
                                        (let ((_g125329_
                                               (gx#core-expand-expression+1
                                                _%expr123795%_)))
                                          (begin
                                            (let ((_g125330_
                                                   (if (##values? _g125329_)
                                                       (##vector-length
                                                        _g125329_)
                                                       1)))
                                              (if (not (##fx= _g125330_ 2))
                                                  (error "Context expects 2 values"
                                                         _g125330_)))
                                            (let ((_%_123797%_
                                                   (##vector-ref _g125329_ 0))
                                                  (_%e123798%_
                                                   (##vector-ref _g125329_ 1)))
                                              _%e123798%_)))
                                        (_%E123763123775%_)))))
                              (_%E123763123775%_))))
                      (_%E123763123775%_)))))
          (_%E123762123800%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind123705%_ _%e123706%_ _%rebind?123707%_)
        (let* ((_%e123708123718%_ _%bind123705%_)
               (_%E123710123722%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123708123718%_)))
               (_%E123709123744%_
                (lambda ()
                  (if (gx#stx-pair? _%e123708123718%_)
                      (let ((_%e123711123726%_
                             (gx#syntax-e _%e123708123718%_)))
                        (let ((_%hd123712123729%_ (##car _%e123711123726%_))
                              (_%tl123713123731%_ (##cdr _%e123711123726%_)))
                          (let ((_%id123734%_ _%hd123712123729%_))
                            (if (gx#stx-pair? _%tl123713123731%_)
                                (let ((_%e123714123736%_
                                       (gx#syntax-e _%tl123713123731%_)))
                                  (let ((_%hd123715123739%_
                                         (##car _%e123714123736%_))
                                        (_%tl123716123741%_
                                         (##cdr _%e123714123736%_)))
                                    (if (gx#stx-null? _%tl123716123741%_)
                                        (gx#core-bind-syntax!__1
                                         _%id123734%_
                                         _%e123706%_
                                         _%rebind?123707%_)
                                        (_%E123710123722%_))))
                                (_%E123710123722%_)))))
                      (_%E123710123722%_)))))
          (_%E123709123744%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind123751%_ _%e123752%_)
        (let ((_%rebind?123754%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind123751%_
           _%e123752%_
           _%rebind?123754%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g125332_
        (let ((_g125331_ (##length _g125332_)))
          (cond ((##fx= _g125331_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g125332_))
                ((##fx= _g125331_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g125332_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g125332_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx123663%_)
        (let* ((_%e123664123674%_ _%stx123663%_)
               (_%E123666123678%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123664123674%_)))
               (_%E123665123700%_
                (lambda ()
                  (if (gx#stx-pair? _%e123664123674%_)
                      (let ((_%e123667123682%_
                             (gx#syntax-e _%e123664123674%_)))
                        (let ((_%hd123668123685%_ (##car _%e123667123682%_))
                              (_%tl123669123687%_ (##cdr _%e123667123682%_)))
                          (if (gx#stx-pair? _%tl123669123687%_)
                              (let ((_%e123670123690%_
                                     (gx#syntax-e _%tl123669123687%_)))
                                (let ((_%hd123671123693%_
                                       (##car _%e123670123690%_))
                                      (_%tl123672123695%_
                                       (##cdr _%e123670123690%_)))
                                  (let ((_%expr123698%_ _%hd123671123693%_))
                                    (if (gx#stx-null? _%tl123672123695%_)
                                        (gx#core-expand-expression
                                         _%expr123698%_)
                                        (_%E123666123678%_)))))
                              (_%E123666123678%_))))
                      (_%E123666123678%_)))))
          (_%E123665123700%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx123622%_)
        (let* ((_%e123623123633%_ _%stx123622%_)
               (_%E123625123637%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123623123633%_)))
               (_%E123624123659%_
                (lambda ()
                  (if (gx#stx-pair? _%e123623123633%_)
                      (let ((_%e123626123641%_
                             (gx#syntax-e _%e123623123633%_)))
                        (let ((_%hd123627123644%_ (##car _%e123626123641%_))
                              (_%tl123628123646%_ (##cdr _%e123626123641%_)))
                          (if (gx#stx-pair? _%tl123628123646%_)
                              (let ((_%e123629123649%_
                                     (gx#syntax-e _%tl123628123646%_)))
                                (let ((_%hd123630123652%_
                                       (##car _%e123629123649%_))
                                      (_%tl123631123654%_
                                       (##cdr _%e123629123649%_)))
                                  (let ((_%e123657%_ _%hd123630123652%_))
                                    (if (gx#stx-null? _%tl123631123654%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e123657%_)
                                                     '()))
                                         (gx#stx-source _%stx123622%_))
                                        (_%E123625123637%_)))))
                              (_%E123625123637%_))))
                      (_%E123625123637%_)))))
          (_%E123624123659%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx123581%_)
        (let* ((_%e123582123592%_ _%stx123581%_)
               (_%E123584123596%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123582123592%_)))
               (_%E123583123618%_
                (lambda ()
                  (if (gx#stx-pair? _%e123582123592%_)
                      (let ((_%e123585123600%_
                             (gx#syntax-e _%e123582123592%_)))
                        (let ((_%hd123586123603%_ (##car _%e123585123600%_))
                              (_%tl123587123605%_ (##cdr _%e123585123600%_)))
                          (if (gx#stx-pair? _%tl123587123605%_)
                              (let ((_%e123588123608%_
                                     (gx#syntax-e _%tl123587123605%_)))
                                (let ((_%hd123589123611%_
                                       (##car _%e123588123608%_))
                                      (_%tl123590123613%_
                                       (##cdr _%e123588123608%_)))
                                  (let ((_%e123616%_ _%hd123589123611%_))
                                    (if (gx#stx-null? _%tl123590123613%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e123616%_)
                                                     '()))
                                         (gx#stx-source _%stx123581%_))
                                        (_%E123584123596%_)))))
                              (_%E123584123596%_))))
                      (_%E123584123596%_)))))
          (_%E123583123618%_))))
    (define gx#core-expand-call%
      (lambda (_%stx123538%_)
        (let* ((_%e123539123549%_ _%stx123538%_)
               (_%E123541123553%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123539123549%_)))
               (_%E123540123577%_
                (lambda ()
                  (if (gx#stx-pair? _%e123539123549%_)
                      (let ((_%e123542123557%_
                             (gx#syntax-e _%e123539123549%_)))
                        (let ((_%hd123543123560%_ (##car _%e123542123557%_))
                              (_%tl123544123562%_ (##cdr _%e123542123557%_)))
                          (if (gx#stx-pair? _%tl123544123562%_)
                              (let ((_%e123545123565%_
                                     (gx#syntax-e _%tl123544123562%_)))
                                (let ((_%hd123546123568%_
                                       (##car _%e123545123565%_))
                                      (_%tl123547123570%_
                                       (##cdr _%e123545123565%_)))
                                  (let* ((_%rator123573%_ _%hd123546123568%_)
                                         (_%args123575%_ _%tl123547123570%_))
                                    (if (gx#stx-list? _%args123575%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator123573%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args123575%_))
                                         (gx#stx-source _%stx123538%_))
                                        (_%E123541123553%_)))))
                              (_%E123541123553%_))))
                      (_%E123541123553%_)))))
          (_%E123540123577%_))))
    (define gx#core-expand-if%
      (lambda (_%stx123471%_)
        (let* ((_%e123472123488%_ _%stx123471%_)
               (_%E123474123492%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123472123488%_)))
               (_%E123473123534%_
                (lambda ()
                  (if (gx#stx-pair? _%e123472123488%_)
                      (let ((_%e123475123496%_
                             (gx#syntax-e _%e123472123488%_)))
                        (let ((_%hd123476123499%_ (##car _%e123475123496%_))
                              (_%tl123477123501%_ (##cdr _%e123475123496%_)))
                          (if (gx#stx-pair? _%tl123477123501%_)
                              (let ((_%e123478123504%_
                                     (gx#syntax-e _%tl123477123501%_)))
                                (let ((_%hd123479123507%_
                                       (##car _%e123478123504%_))
                                      (_%tl123480123509%_
                                       (##cdr _%e123478123504%_)))
                                  (let ((_%test123512%_ _%hd123479123507%_))
                                    (if (gx#stx-pair? _%tl123480123509%_)
                                        (let ((_%e123481123514%_
                                               (gx#syntax-e
                                                _%tl123480123509%_)))
                                          (let ((_%hd123482123517%_
                                                 (##car _%e123481123514%_))
                                                (_%tl123483123519%_
                                                 (##cdr _%e123481123514%_)))
                                            (let ((_%K123522%_
                                                   _%hd123482123517%_))
                                              (if (gx#stx-pair?
                                                   _%tl123483123519%_)
                                                  (let ((_%e123484123524%_
                                                         (gx#syntax-e
                                                          _%tl123483123519%_)))
                                                    (let ((_%hd123485123527%_
                                                           (##car _%e123484123524%_))
                                                          (_%tl123486123529%_
                                                           (##cdr _%e123484123524%_)))
                                                      (let ((_%E123532%_
                                                             _%hd123485123527%_))
                                                        (if (gx#stx-null?
                                                             _%tl123486123529%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test123512%_)
                                 (cons (gx#core-expand-expression _%K123522%_)
                                       (cons (gx#core-expand-expression
                                              _%E123532%_)
                                             '()))))
                     (gx#stx-source _%stx123471%_))
                    (_%E123474123492%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123474123492%_)))))
                                        (_%E123474123492%_)))))
                              (_%E123474123492%_))))
                      (_%E123474123492%_)))))
          (_%E123473123534%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx123430%_)
        (let* ((_%e123431123441%_ _%stx123430%_)
               (_%E123433123445%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123431123441%_)))
               (_%E123432123467%_
                (lambda ()
                  (if (gx#stx-pair? _%e123431123441%_)
                      (let ((_%e123434123449%_
                             (gx#syntax-e _%e123431123441%_)))
                        (let ((_%hd123435123452%_ (##car _%e123434123449%_))
                              (_%tl123436123454%_ (##cdr _%e123434123449%_)))
                          (if (gx#stx-pair? _%tl123436123454%_)
                              (let ((_%e123437123457%_
                                     (gx#syntax-e _%tl123436123454%_)))
                                (let ((_%hd123438123460%_
                                       (##car _%e123437123457%_))
                                      (_%tl123439123462%_
                                       (##cdr _%e123437123457%_)))
                                  (let ((_%id123465%_ _%hd123438123460%_))
                                    (if (gx#stx-null? _%tl123439123462%_)
                                        (if (gx#identifier? _%id123465%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id123465%_
                                                          _%stx123430%_)
                                                         '()))
                                             (gx#stx-source _%stx123430%_))
                                            (_%E123433123445%_))
                                        (_%E123433123445%_)))))
                              (_%E123433123445%_))))
                      (_%E123433123445%_)))))
          (_%E123432123467%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx123376%_)
        (let* ((_%e123377123390%_ _%stx123376%_)
               (_%E123379123394%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123377123390%_)))
               (_%E123378123426%_
                (lambda ()
                  (if (gx#stx-pair? _%e123377123390%_)
                      (let ((_%e123380123398%_
                             (gx#syntax-e _%e123377123390%_)))
                        (let ((_%hd123381123401%_ (##car _%e123380123398%_))
                              (_%tl123382123403%_ (##cdr _%e123380123398%_)))
                          (if (gx#stx-pair? _%tl123382123403%_)
                              (let ((_%e123383123406%_
                                     (gx#syntax-e _%tl123382123403%_)))
                                (let ((_%hd123384123409%_
                                       (##car _%e123383123406%_))
                                      (_%tl123385123411%_
                                       (##cdr _%e123383123406%_)))
                                  (let ((_%id123414%_ _%hd123384123409%_))
                                    (if (gx#stx-pair? _%tl123385123411%_)
                                        (let ((_%e123386123416%_
                                               (gx#syntax-e
                                                _%tl123385123411%_)))
                                          (let ((_%hd123387123419%_
                                                 (##car _%e123386123416%_))
                                                (_%tl123388123421%_
                                                 (##cdr _%e123386123416%_)))
                                            (let ((_%expr123424%_
                                                   _%hd123387123419%_))
                                              (if (gx#stx-null?
                                                   _%tl123388123421%_)
                                                  (if (gx#identifier?
                                                       _%id123414%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id123414%_
                            _%stx123376%_)
                           (cons (gx#core-expand-expression _%expr123424%_)
                                 '())))
               (gx#stx-source _%stx123376%_))
              (_%E123379123394%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123379123394%_)))))
                                        (_%E123379123394%_)))))
                              (_%E123379123394%_))))
                      (_%E123379123394%_)))))
          (_%E123378123426%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx123221%_)
        (letrec ((_%generate123223%_
                  (lambda (_%body123253%_)
                    (let _%lp123255%_ ((_%rest123257%_ _%body123253%_)
                                       (_%ns123258%_
                                        (gx#core-context-namespace__0))
                                       (_%r123259%_ '()))
                      (let* ((_%e123260123275%_ _%rest123257%_)
                             (_%E123273123279%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e123260123275%_)))
                             (_%E123269123283%_
                              (lambda ()
                                (if (gx#stx-null? _%e123260123275%_)
                                    (reverse _%r123259%_)
                                    (_%E123273123279%_))))
                             (_%E123262123340%_
                              (lambda ()
                                (if (gx#stx-pair? _%e123260123275%_)
                                    (let ((_%e123270123287%_
                                           (gx#syntax-e _%e123260123275%_)))
                                      (let ((_%hd123271123290%_
                                             (##car _%e123270123287%_))
                                            (_%tl123272123292%_
                                             (##cdr _%e123270123287%_)))
                                        (let* ((_%hd123295%_
                                                _%hd123271123290%_)
                                               (_%rest123297%_
                                                _%tl123272123292%_))
                                          (if (gx#identifier? _%hd123295%_)
                                              (_%lp123255%_
                                               _%rest123297%_
                                               _%ns123258%_
                                               (cons (cons _%hd123295%_
                                                           (cons (if _%ns123258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd123295%_
                              _%ns123258%_
                              '"#"
                              _%hd123295%_)
                             _%hd123295%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r123259%_))
                                              (let* ((_%e123298123308%_
                                                      _%hd123295%_)
                                                     (_%E123300123312%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e123298123308%_)))
                                                     (_%E123299123336%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e123298123308%_)
                                                            (let ((_%e123301123316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e123298123308%_)))
                      (let ((_%hd123302123319%_ (##car _%e123301123316%_))
                            (_%tl123303123321%_ (##cdr _%e123301123316%_)))
                        (let ((_%id123324%_ _%hd123302123319%_))
                          (if (gx#stx-pair? _%tl123303123321%_)
                              (let ((_%e123304123326%_
                                     (gx#syntax-e _%tl123303123321%_)))
                                (let ((_%hd123305123329%_
                                       (##car _%e123304123326%_))
                                      (_%tl123306123331%_
                                       (##cdr _%e123304123326%_)))
                                  (let ((_%eid123334%_ _%hd123305123329%_))
                                    (if (gx#stx-null? _%tl123306123331%_)
                                        (if (and (gx#identifier? _%id123324%_)
                                                 (gx#identifier?
                                                  _%eid123334%_))
                                            (_%lp123255%_
                                             _%rest123297%_
                                             _%ns123258%_
                                             (cons (cons _%id123324%_
                                                         (cons _%eid123334%_
                                                               '()))
                                                   _%r123259%_))
                                            (_%E123300123312%_))
                                        (_%E123300123312%_)))))
                              (_%E123300123312%_)))))
                    (_%E123300123312%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E123299123336%_))))))
                                    (_%E123269123283%_))))
                             (_%E123261123372%_
                              (lambda ()
                                (if (gx#stx-pair? _%e123260123275%_)
                                    (let ((_%e123263123344%_
                                           (gx#syntax-e _%e123260123275%_)))
                                      (let ((_%hd123264123347%_
                                             (##car _%e123263123344%_))
                                            (_%tl123265123349%_
                                             (##cdr _%e123263123344%_)))
                                        (if (eq? (gx#stx-e _%hd123264123347%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl123265123349%_)
                                                (let ((_%e123266123352%_
                                                       (gx#syntax-e
                                                        _%tl123265123349%_)))
                                                  (let ((_%hd123267123355%_
                                                         (##car _%e123266123352%_))
                                                        (_%tl123268123357%_
                                                         (##cdr _%e123266123352%_)))
                                                    (let* ((_%ns123360%_
                                                            _%hd123267123355%_)
                                                           (_%rest123362%_
                                                            _%tl123268123357%_)
                                                           (_%ns123370%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns123360%_)
                        (symbol->string (gx#stx-e _%ns123360%_))
                        (if (or (gx#stx-string? _%ns123360%_)
                                (gx#stx-false? _%ns123360%_))
                            (gx#stx-e _%ns123360%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx123221%_
                             _%ns123360%_)))))
              (_%lp123255%_ _%rest123362%_ _%ns123370%_ _%r123259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E123262123340%_))
                                            (_%E123262123340%_))))
                                    (_%E123262123340%_)))))
                        (_%E123261123372%_))))))
          (let* ((_%e123224123231%_ _%stx123221%_)
                 (_%E123226123235%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123224123231%_)))
                 (_%E123225123249%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123224123231%_)
                        (let ((_%e123227123239%_
                               (gx#syntax-e _%e123224123231%_)))
                          (let ((_%hd123228123242%_ (##car _%e123227123239%_))
                                (_%tl123229123244%_ (##cdr _%e123227123239%_)))
                            (let ((_%body123247%_ _%tl123229123244%_))
                              (if (gx#stx-list? _%body123247%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate123223%_ _%body123247%_))
                                  (_%E123226123235%_)))))
                        (_%E123226123235%_)))))
            (_%E123225123249%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx123167%_)
        (let* ((_%e123168123181%_ _%stx123167%_)
               (_%E123170123185%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123168123181%_)))
               (_%E123169123217%_
                (lambda ()
                  (if (gx#stx-pair? _%e123168123181%_)
                      (let ((_%e123171123189%_
                             (gx#syntax-e _%e123168123181%_)))
                        (let ((_%hd123172123192%_ (##car _%e123171123189%_))
                              (_%tl123173123194%_ (##cdr _%e123171123189%_)))
                          (if (gx#stx-pair? _%tl123173123194%_)
                              (let ((_%e123174123197%_
                                     (gx#syntax-e _%tl123173123194%_)))
                                (let ((_%hd123175123200%_
                                       (##car _%e123174123197%_))
                                      (_%tl123176123202%_
                                       (##cdr _%e123174123197%_)))
                                  (let ((_%hd123205%_ _%hd123175123200%_))
                                    (if (gx#stx-pair? _%tl123176123202%_)
                                        (let ((_%e123177123207%_
                                               (gx#syntax-e
                                                _%tl123176123202%_)))
                                          (let ((_%hd123178123210%_
                                                 (##car _%e123177123207%_))
                                                (_%tl123179123212%_
                                                 (##cdr _%e123177123207%_)))
                                            (let ((_%expr123215%_
                                                   _%hd123178123210%_))
                                              (if (gx#stx-null?
                                                   _%tl123179123212%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd123205%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd123205%_)
                          (cons _%expr123215%_ '())))
              (_%E123170123185%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123170123185%_)))))
                                        (_%E123170123185%_)))))
                              (_%E123170123185%_))))
                      (_%E123170123185%_)))))
          (_%E123169123217%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx123113%_)
        (let* ((_%e123114123127%_ _%stx123113%_)
               (_%E123116123131%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123114123127%_)))
               (_%E123115123163%_
                (lambda ()
                  (if (gx#stx-pair? _%e123114123127%_)
                      (let ((_%e123117123135%_
                             (gx#syntax-e _%e123114123127%_)))
                        (let ((_%hd123118123138%_ (##car _%e123117123135%_))
                              (_%tl123119123140%_ (##cdr _%e123117123135%_)))
                          (if (gx#stx-pair? _%tl123119123140%_)
                              (let ((_%e123120123143%_
                                     (gx#syntax-e _%tl123119123140%_)))
                                (let ((_%hd123121123146%_
                                       (##car _%e123120123143%_))
                                      (_%tl123122123148%_
                                       (##cdr _%e123120123143%_)))
                                  (let ((_%hd123151%_ _%hd123121123146%_))
                                    (if (gx#stx-pair? _%tl123122123148%_)
                                        (let ((_%e123123123153%_
                                               (gx#syntax-e
                                                _%tl123122123148%_)))
                                          (let ((_%hd123124123156%_
                                                 (##car _%e123123123153%_))
                                                (_%tl123125123158%_
                                                 (##cdr _%e123123123153%_)))
                                            (let ((_%expr123161%_
                                                   _%hd123124123156%_))
                                              (if (gx#stx-null?
                                                   _%tl123125123158%_)
                                                  (if (gx#identifier?
                                                       _%hd123151%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd123151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr123161%_ '())))
              (_%E123116123131%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123116123131%_)))))
                                        (_%E123116123131%_)))))
                              (_%E123116123131%_))))
                      (_%E123116123131%_)))))
          (_%E123115123163%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx123059%_)
        (let* ((_%e123060123073%_ _%stx123059%_)
               (_%E123062123077%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123060123073%_)))
               (_%E123061123109%_
                (lambda ()
                  (if (gx#stx-pair? _%e123060123073%_)
                      (let ((_%e123063123081%_
                             (gx#syntax-e _%e123060123073%_)))
                        (let ((_%hd123064123084%_ (##car _%e123063123081%_))
                              (_%tl123065123086%_ (##cdr _%e123063123081%_)))
                          (if (gx#stx-pair? _%tl123065123086%_)
                              (let ((_%e123066123089%_
                                     (gx#syntax-e _%tl123065123086%_)))
                                (let ((_%hd123067123092%_
                                       (##car _%e123066123089%_))
                                      (_%tl123068123094%_
                                       (##cdr _%e123066123089%_)))
                                  (let ((_%id123097%_ _%hd123067123092%_))
                                    (if (gx#stx-pair? _%tl123068123094%_)
                                        (let ((_%e123069123099%_
                                               (gx#syntax-e
                                                _%tl123068123094%_)))
                                          (let ((_%hd123070123102%_
                                                 (##car _%e123069123099%_))
                                                (_%tl123071123104%_
                                                 (##cdr _%e123069123099%_)))
                                            (let ((_%alias-id123107%_
                                                   _%hd123070123102%_))
                                              (if (gx#stx-null?
                                                   _%tl123071123104%_)
                                                  (if (and (gx#identifier?
                                                            _%id123097%_)
                                                           (gx#identifier?
                                                            _%alias-id123107%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id123097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id123107%_ '())))
              (_%E123062123077%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123062123077%_)))))
                                        (_%E123062123077%_)))))
                              (_%E123062123077%_))))
                      (_%E123062123077%_)))))
          (_%E123061123109%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx123016%_)
        (let* ((_%e123017123027%_ _%stx123016%_)
               (_%E123019123031%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123017123027%_)))
               (_%E123018123055%_
                (lambda ()
                  (if (gx#stx-pair? _%e123017123027%_)
                      (let ((_%e123020123035%_
                             (gx#syntax-e _%e123017123027%_)))
                        (let ((_%hd123021123038%_ (##car _%e123020123035%_))
                              (_%tl123022123040%_ (##cdr _%e123020123035%_)))
                          (if (gx#stx-pair? _%tl123022123040%_)
                              (let ((_%e123023123043%_
                                     (gx#syntax-e _%tl123022123040%_)))
                                (let ((_%hd123024123046%_
                                       (##car _%e123023123043%_))
                                      (_%tl123025123048%_
                                       (##cdr _%e123023123043%_)))
                                  (let* ((_%hd123051%_ _%hd123024123046%_)
                                         (_%body123053%_ _%tl123025123048%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd123051%_)
                                             (gx#stx-list? _%body123053%_)
                                             (not (gx#stx-null?
                                                   _%body123053%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd123051%_)
                                         _%body123053%_)
                                        (_%E123019123031%_)))))
                              (_%E123019123031%_))))
                      (_%E123019123031%_)))))
          (_%E123018123055%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx122952%_)
        (letrec ((_%generate122954%_
                  (lambda (_%clause122984%_)
                    (let* ((_%e122985122992%_ _%clause122984%_)
                           (_%E122987122996%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx122952%_
                               _%clause122984%_)))
                           (_%E122986123012%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122985122992%_)
                                  (let ((_%e122988123000%_
                                         (gx#syntax-e _%e122985122992%_)))
                                    (let ((_%hd122989123003%_
                                           (##car _%e122988123000%_))
                                          (_%tl122990123005%_
                                           (##cdr _%e122988123000%_)))
                                      (let* ((_%hd123008%_ _%hd122989123003%_)
                                             (_%body123010%_
                                              _%tl122990123005%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd123008%_)
                                                 (gx#stx-list? _%body123010%_)
                                                 (not (gx#stx-null?
                                                       _%body123010%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd123008%_)
                                                   _%body123010%_)
                                             (gx#stx-source _%clause122984%_))
                                            (_%E122987122996%_)))))
                                  (_%E122987122996%_)))))
                      (_%E122986123012%_)))))
          (let* ((_%e122955122962%_ _%stx122952%_)
                 (_%E122957122966%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122955122962%_)))
                 (_%E122956122980%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122955122962%_)
                        (let ((_%e122958122970%_
                               (gx#syntax-e _%e122955122962%_)))
                          (let ((_%hd122959122973%_ (##car _%e122958122970%_))
                                (_%tl122960122975%_ (##cdr _%e122958122970%_)))
                            (let ((_%clauses122978%_ _%tl122960122975%_))
                              (if (gx#stx-list? _%clauses122978%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate122954%_
                                    _%clauses122978%_))
                                  (_%E122957122966%_)))))
                        (_%E122957122966%_)))))
            (_%E122956122980%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx122853%_ _%form122854%_)
        (letrec ((_%generate122856%_
                  (lambda (_%bind122899%_)
                    (let* ((_%e122900122910%_ _%bind122899%_)
                           (_%E122902122914%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx122853%_
                               _%bind122899%_)))
                           (_%E122901122938%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122900122910%_)
                                  (let ((_%e122903122918%_
                                         (gx#syntax-e _%e122900122910%_)))
                                    (let ((_%hd122904122921%_
                                           (##car _%e122903122918%_))
                                          (_%tl122905122923%_
                                           (##cdr _%e122903122918%_)))
                                      (let ((_%ids122926%_ _%hd122904122921%_))
                                        (if (gx#stx-pair? _%tl122905122923%_)
                                            (let ((_%e122906122928%_
                                                   (gx#syntax-e
                                                    _%tl122905122923%_)))
                                              (let ((_%hd122907122931%_
                                                     (##car _%e122906122928%_))
                                                    (_%tl122908122933%_
                                                     (##cdr _%e122906122928%_)))
                                                (let ((_%expr122936%_
                                                       _%hd122907122931%_))
                                                  (if (gx#stx-null?
                                                       _%tl122908122933%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids122926%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids122926%_)
                        (cons _%expr122936%_ '()))
                  (_%E122902122914%_))
              (_%E122902122914%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E122902122914%_)))))
                                  (_%E122902122914%_)))))
                      (_%E122901122938%_)))))
          (let* ((_%e122857122867%_ _%stx122853%_)
                 (_%E122859122871%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122857122867%_)))
                 (_%E122858122895%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122857122867%_)
                        (let ((_%e122860122875%_
                               (gx#syntax-e _%e122857122867%_)))
                          (let ((_%hd122861122878%_ (##car _%e122860122875%_))
                                (_%tl122862122880%_ (##cdr _%e122860122875%_)))
                            (if (gx#stx-pair? _%tl122862122880%_)
                                (let ((_%e122863122883%_
                                       (gx#syntax-e _%tl122862122880%_)))
                                  (let ((_%hd122864122886%_
                                         (##car _%e122863122883%_))
                                        (_%tl122865122888%_
                                         (##cdr _%e122863122883%_)))
                                    (let* ((_%hd122891%_ _%hd122864122886%_)
                                           (_%body122893%_ _%tl122865122888%_))
                                      (if (and (gx#stx-list? _%hd122891%_)
                                               (gx#stx-list? _%body122893%_)
                                               (not (gx#stx-null?
                                                     _%body122893%_)))
                                          (gx#core-cons*
                                           _%form122854%_
                                           (gx#stx-map1
                                            _%generate122856%_
                                            _%hd122891%_)
                                           _%body122893%_)
                                          (_%E122859122871%_)))))
                                (_%E122859122871%_))))
                        (_%E122859122871%_)))))
            (_%E122858122895%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx122945%_)
        (let ((_%form122947%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx122945%_ _%form122947%_))))
    (define gx#macro-expand-let-values
      (lambda _g125334_
        (let ((_g125333_ (##length _g125334_)))
          (cond ((##fx= _g125333_ 1)
                 (apply gx#macro-expand-let-values__0 _g125334_))
                ((##fx= _g125333_ 2)
                 (apply gx#macro-expand-let-values__% _g125334_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g125334_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx122850%_)
        (gx#macro-expand-let-values__% _%stx122850%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx122848%_)
        (gx#macro-expand-let-values__% _%stx122848%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx122739%_)
        (let* ((_%e122740122766%_ _%stx122739%_)
               (_%E122752122770%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122740122766%_)))
               (_%E122742122812%_
                (lambda ()
                  (if (gx#stx-pair? _%e122740122766%_)
                      (let ((_%e122753122774%_
                             (gx#syntax-e _%e122740122766%_)))
                        (let ((_%hd122754122777%_ (##car _%e122753122774%_))
                              (_%tl122755122779%_ (##cdr _%e122753122774%_)))
                          (if (gx#stx-pair? _%tl122755122779%_)
                              (let ((_%e122756122782%_
                                     (gx#syntax-e _%tl122755122779%_)))
                                (let ((_%hd122757122785%_
                                       (##car _%e122756122782%_))
                                      (_%tl122758122787%_
                                       (##cdr _%e122756122782%_)))
                                  (let ((_%test122790%_ _%hd122757122785%_))
                                    (if (gx#stx-pair? _%tl122758122787%_)
                                        (let ((_%e122759122792%_
                                               (gx#syntax-e
                                                _%tl122758122787%_)))
                                          (let ((_%hd122760122795%_
                                                 (##car _%e122759122792%_))
                                                (_%tl122761122797%_
                                                 (##cdr _%e122759122792%_)))
                                            (let ((_%K122800%_
                                                   _%hd122760122795%_))
                                              (if (gx#stx-pair?
                                                   _%tl122761122797%_)
                                                  (let ((_%e122762122802%_
                                                         (gx#syntax-e
                                                          _%tl122761122797%_)))
                                                    (let ((_%hd122763122805%_
                                                           (##car _%e122762122802%_))
                                                          (_%tl122764122807%_
                                                           (##cdr _%e122762122802%_)))
                                                      (let ((_%E122810%_
                                                             _%hd122763122805%_))
                                                        (if (gx#stx-null?
                                                             _%tl122764122807%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test122790%_
                                                             _%K122800%_
                                                             _%E122810%_)
                                                            (_%E122752122770%_)))))
                                                  (_%E122752122770%_)))))
                                        (_%E122752122770%_)))))
                              (_%E122752122770%_))))
                      (_%E122752122770%_))))
               (_%E122741122844%_
                (lambda ()
                  (if (gx#stx-pair? _%e122740122766%_)
                      (let ((_%e122743122816%_
                             (gx#syntax-e _%e122740122766%_)))
                        (let ((_%hd122744122819%_ (##car _%e122743122816%_))
                              (_%tl122745122821%_ (##cdr _%e122743122816%_)))
                          (if (gx#stx-pair? _%tl122745122821%_)
                              (let ((_%e122746122824%_
                                     (gx#syntax-e _%tl122745122821%_)))
                                (let ((_%hd122747122827%_
                                       (##car _%e122746122824%_))
                                      (_%tl122748122829%_
                                       (##cdr _%e122746122824%_)))
                                  (let ((_%test122832%_ _%hd122747122827%_))
                                    (if (gx#stx-pair? _%tl122748122829%_)
                                        (let ((_%e122749122834%_
                                               (gx#syntax-e
                                                _%tl122748122829%_)))
                                          (let ((_%hd122750122837%_
                                                 (##car _%e122749122834%_))
                                                (_%tl122751122839%_
                                                 (##cdr _%e122749122834%_)))
                                            (let ((_%K122842%_
                                                   _%hd122750122837%_))
                                              (if (gx#stx-null?
                                                   _%tl122751122839%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test122832%_
                                                   _%K122842%_
                                                   '#!void)
                                                  (_%E122742122812%_)))))
                                        (_%E122742122812%_)))))
                              (_%E122742122812%_))))
                      (_%E122742122812%_)))))
          (_%E122741122844%_))))
    (define gx#free-identifier=?
      (lambda (_%xid122724%_ _%yid122725%_)
        (let ((_%xe122727%_ (gx#resolve-identifier__0 _%xid122724%_))
              (_%ye122728%_ (gx#resolve-identifier__0 _%yid122725%_)))
          (if (and _%xe122727%_ _%ye122728%_)
              (let ((_%$e122731%_ (eq? _%xe122727%_ _%ye122728%_)))
                (if _%$e122731%_
                    _%$e122731%_
                    (if (##structure-instance-of? _%xe122727%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye122728%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe122727%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye122728%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe122727%_ _%ye122728%_)
                  '#f
                  (gx#stx-eq? _%xid122724%_ _%yid122725%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid122705%_ _%yid122706%_)
        (letrec ((_%context122708%_
                  (lambda (_%e122722%_)
                    (if (##structure-direct-instance-of?
                         _%e122722%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e122722%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks122709%_
                  (lambda (_%e122717%_)
                    (if (symbol? _%e122717%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e122717%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e122717%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e122717%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap122710%_
                  (lambda (_%e122715%_)
                    (if (symbol? _%e122715%_)
                        _%e122715%_
                        (gx#syntax-local-unwrap _%e122715%_)))))
          (let ((_%x122712%_ (_%unwrap122710%_ _%xid122705%_))
                (_%y122713%_ (_%unwrap122710%_ _%yid122706%_)))
            (if (gx#stx-eq? _%x122712%_ _%y122713%_)
                (if (eq? (_%context122708%_ _%x122712%_)
                         (_%context122708%_ _%y122713%_))
                    (equal? (_%marks122709%_ _%x122712%_)
                            (_%marks122709%_ _%y122713%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx122703%_)
        (if (gx#identifier? _%stx122703%_)
            (gx#core-identifier=? _%stx122703%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx122701%_)
        (if (gx#identifier? _%stx122701%_)
            (gx#core-identifier=? _%stx122701%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx122644%_ _%where122645%_)
        (let _%lp122647%_ ((_%rest122649%_ (gx#syntax->list _%stx122644%_)))
          (let* ((_%rest122650122658%_ _%rest122649%_)
                 (_%else122652122666%_ (lambda () '#t))
                 (_%K122654122679%_
                  (lambda (_%rest122669%_ _%hd122670%_)
                    (if (gx#identifier? _%hd122670%_)
                        (if (__find (lambda (_%g122672122674%_)
                                      (gx#bound-identifier=?
                                       _%g122672122674%_
                                       _%hd122670%_))
                                    _%rest122669%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where122645%_
                             _%hd122670%_)
                            (_%lp122647%_ _%rest122669%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where122645%_
                         _%hd122670%_)))))
            (if (pair? _%rest122650122658%_)
                (let ((_%hd122655122682%_ (##car _%rest122650122658%_))
                      (_%tl122656122684%_ (##cdr _%rest122650122658%_)))
                  (let* ((_%hd122687%_ _%hd122655122682%_)
                         (_%rest122689%_ _%tl122656122684%_))
                    (_%K122654122679%_ _%rest122689%_ _%hd122687%_)))
                (_%else122652122666%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx122694%_)
        (let ((_%where122696%_ _%stx122694%_))
          (gx#check-duplicate-identifiers__% _%stx122694%_ _%where122696%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g125336_
        (let ((_g125335_ (##length _g125336_)))
          (cond ((##fx= _g125335_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g125336_))
                ((##fx= _g125335_ 2)
                 (apply gx#check-duplicate-identifiers__% _g125336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g125336_))))))
    (define gx#core-bind-values?
      (lambda (_%stx122636%_)
        (gx#stx-andmap
         (lambda (_%x122638%_)
           (let ((_%$e122640%_ (gx#identifier? _%x122638%_)))
             (if _%$e122640%_ _%$e122640%_ (gx#stx-false? _%x122638%_))))
         _%stx122636%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx122600%_ _%rebind?122601%_ _%phi122602%_ _%ctx122603%_)
        (gx#stx-for-each1
         (lambda (_%id122605%_)
           (if (gx#identifier? _%id122605%_)
               (gx#core-bind-runtime!__%
                _%id122605%_
                _%rebind?122601%_
                _%phi122602%_
                _%ctx122603%_)
               '#!void))
         _%stx122600%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx122610%_)
        (let* ((_%rebind?122612%_ '#f)
               (_%phi122614%_ (gx#current-expander-phi))
               (_%ctx122616%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx122610%_
           _%rebind?122612%_
           _%phi122614%_
           _%ctx122616%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx122618%_ _%rebind?122619%_)
        (let* ((_%phi122621%_ (gx#current-expander-phi))
               (_%ctx122623%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx122618%_
           _%rebind?122619%_
           _%phi122621%_
           _%ctx122623%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx122625%_ _%rebind?122626%_ _%phi122627%_)
        (let ((_%ctx122629%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx122625%_
           _%rebind?122626%_
           _%phi122627%_
           _%ctx122629%_))))
    (define gx#core-bind-values!
      (lambda _g125338_
        (let ((_g125337_ (##length _g125338_)))
          (cond ((##fx= _g125337_ 1) (apply gx#core-bind-values!__0 _g125338_))
                ((##fx= _g125337_ 2) (apply gx#core-bind-values!__1 _g125338_))
                ((##fx= _g125337_ 3) (apply gx#core-bind-values!__2 _g125338_))
                ((##fx= _g125337_ 4) (apply gx#core-bind-values!__% _g125338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g125338_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx122595%_)
        (gx#stx-map1
         (lambda (_%x122597%_)
           (if (gx#identifier? _%x122597%_)
               (gx#core-quote-syntax__0 _%x122597%_)
               '#f))
         _%stx122595%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx122588%_)
        (if (gx#identifier? _%stx122588%_)
            (let* ((_%bind122590%_ (gx#resolve-identifier__0 _%stx122588%_))
                   (_%$e122592%_ (not _%bind122590%_)))
              (if _%$e122592%_
                  _%$e122592%_
                  (##structure-instance-of?
                   _%bind122590%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id122577%_ _%form122578%_)
        (let ((_%bind122580%_ (gx#resolve-identifier__0 _%id122577%_)))
          (if (##structure-instance-of? _%bind122580%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id122577%_)
              (if (not _%bind122580%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id122577%_)))
                      (gx#core-quote-syntax__0 _%id122577%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form122578%_
                       _%id122577%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form122578%_
                   _%id122577%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id122532%_ _%rebind?122533%_ _%phi122534%_ _%ctx122535%_)
        (let* ((_%key122537%_ (gx#core-identifier-key _%id122532%_))
               (_%eid122539%_
                (gx#make-binding-id__%
                 _%key122537%_
                 '#f
                 _%phi122534%_
                 _%ctx122535%_))
               (_%bind122545%_
                (if (##structure-instance-of?
                     _%ctx122535%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid122539%_
                     _%key122537%_
                     _%phi122534%_
                     _%ctx122535%_)
                    (if (##structure-instance-of?
                         _%ctx122535%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid122539%_
                         _%key122537%_
                         _%phi122534%_)
                        (if (##structure-instance-of?
                             _%ctx122535%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid122539%_
                             _%key122537%_
                             _%phi122534%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid122539%_
                             _%key122537%_
                             _%phi122534%_))))))
          (gx#bind-identifier!__%
           _%id122532%_
           _%bind122545%_
           _%rebind?122533%_
           _%phi122534%_
           _%ctx122535%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id122551%_)
        (let* ((_%rebind?122553%_ '#f)
               (_%phi122555%_ (gx#current-expander-phi))
               (_%ctx122557%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id122551%_
           _%rebind?122553%_
           _%phi122555%_
           _%ctx122557%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id122559%_ _%rebind?122560%_)
        (let* ((_%phi122562%_ (gx#current-expander-phi))
               (_%ctx122564%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id122559%_
           _%rebind?122560%_
           _%phi122562%_
           _%ctx122564%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id122566%_ _%rebind?122567%_ _%phi122568%_)
        (let ((_%ctx122570%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id122566%_
           _%rebind?122567%_
           _%phi122568%_
           _%ctx122570%_))))
    (define gx#core-bind-runtime!
      (lambda _g125340_
        (let ((_g125339_ (##length _g125340_)))
          (cond ((##fx= _g125339_ 1)
                 (apply gx#core-bind-runtime!__0 _g125340_))
                ((##fx= _g125339_ 2)
                 (apply gx#core-bind-runtime!__1 _g125340_))
                ((##fx= _g125339_ 3)
                 (apply gx#core-bind-runtime!__2 _g125340_))
                ((##fx= _g125339_ 4)
                 (apply gx#core-bind-runtime!__% _g125340_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g125340_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id122484%_
               _%eid122485%_
               _%rebind?122486%_
               _%phi122487%_
               _%ctx122488%_)
        (let* ((_%key122490%_ (gx#core-identifier-key _%id122484%_))
               (_%bind122495%_
                (if (##structure-instance-of?
                     _%ctx122488%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid122485%_
                     _%key122490%_
                     _%phi122487%_
                     _%ctx122488%_)
                    (if (##structure-instance-of?
                         _%ctx122488%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid122485%_
                         _%key122490%_
                         _%phi122487%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid122485%_
                         _%key122490%_
                         _%phi122487%_)))))
          (gx#bind-identifier!__%
           _%id122484%_
           _%bind122495%_
           _%rebind?122486%_
           _%phi122487%_
           _%ctx122488%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id122501%_ _%eid122502%_)
        (let* ((_%rebind?122504%_ '#f)
               (_%phi122506%_ (gx#current-expander-phi))
               (_%ctx122508%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id122501%_
           _%eid122502%_
           _%rebind?122504%_
           _%phi122506%_
           _%ctx122508%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id122510%_ _%eid122511%_ _%rebind?122512%_)
        (let* ((_%phi122514%_ (gx#current-expander-phi))
               (_%ctx122516%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id122510%_
           _%eid122511%_
           _%rebind?122512%_
           _%phi122514%_
           _%ctx122516%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id122518%_ _%eid122519%_ _%rebind?122520%_ _%phi122521%_)
        (let ((_%ctx122523%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id122518%_
           _%eid122519%_
           _%rebind?122520%_
           _%phi122521%_
           _%ctx122523%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g125342_
        (let ((_g125341_ (##length _g125342_)))
          (cond ((##fx= _g125341_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g125342_))
                ((##fx= _g125341_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g125342_))
                ((##fx= _g125341_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g125342_))
                ((##fx= _g125341_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g125342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g125342_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id122444%_
               _%eid122445%_
               _%rebind?122446%_
               _%phi122447%_
               _%ctx122448%_)
        (gx#bind-identifier!__%
         _%id122444%_
         (##structure
          gx#extern-binding::t
          _%eid122445%_
          (gx#core-identifier-key _%id122444%_)
          _%phi122447%_)
         _%rebind?122446%_
         _%phi122447%_
         _%ctx122448%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id122453%_ _%eid122454%_)
        (let* ((_%rebind?122456%_ '#f)
               (_%phi122458%_ (gx#current-expander-phi))
               (_%ctx122460%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id122453%_
           _%eid122454%_
           _%rebind?122456%_
           _%phi122458%_
           _%ctx122460%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id122462%_ _%eid122463%_ _%rebind?122464%_)
        (let* ((_%phi122466%_ (gx#current-expander-phi))
               (_%ctx122468%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id122462%_
           _%eid122463%_
           _%rebind?122464%_
           _%phi122466%_
           _%ctx122468%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id122470%_ _%eid122471%_ _%rebind?122472%_ _%phi122473%_)
        (let ((_%ctx122475%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id122470%_
           _%eid122471%_
           _%rebind?122472%_
           _%phi122473%_
           _%ctx122475%_))))
    (define gx#core-bind-extern!
      (lambda _g125344_
        (let ((_g125343_ (##length _g125344_)))
          (cond ((##fx= _g125343_ 2) (apply gx#core-bind-extern!__0 _g125344_))
                ((##fx= _g125343_ 3) (apply gx#core-bind-extern!__1 _g125344_))
                ((##fx= _g125343_ 4) (apply gx#core-bind-extern!__2 _g125344_))
                ((##fx= _g125343_ 5) (apply gx#core-bind-extern!__% _g125344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g125344_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id122398%_
               _%e122399%_
               _%rebind?122400%_
               _%phi122401%_
               _%ctx122402%_)
        (gx#bind-identifier!__%
         _%id122398%_
         (let ((_%key122407%_ (gx#core-identifier-key _%id122398%_))
               (_%e122408%_
                (if (or (##structure-instance-of? _%e122399%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e122399%_
                         'gx#expander-context::t))
                    _%e122399%_
                    (##structure
                     gx#user-expander::t
                     _%e122399%_
                     _%ctx122402%_
                     _%phi122401%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key122407%_
             '#t
             _%phi122401%_
             _%ctx122402%_)
            _%key122407%_
            _%phi122401%_
            _%e122408%_))
         _%rebind?122400%_
         _%phi122401%_
         _%ctx122402%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id122413%_ _%e122414%_)
        (let* ((_%rebind?122416%_ '#f)
               (_%phi122418%_ (gx#current-expander-phi))
               (_%ctx122420%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id122413%_
           _%e122414%_
           _%rebind?122416%_
           _%phi122418%_
           _%ctx122420%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id122422%_ _%e122423%_ _%rebind?122424%_)
        (let* ((_%phi122426%_ (gx#current-expander-phi))
               (_%ctx122428%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id122422%_
           _%e122423%_
           _%rebind?122424%_
           _%phi122426%_
           _%ctx122428%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id122430%_ _%e122431%_ _%rebind?122432%_ _%phi122433%_)
        (let ((_%ctx122435%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id122430%_
           _%e122431%_
           _%rebind?122432%_
           _%phi122433%_
           _%ctx122435%_))))
    (define gx#core-bind-syntax!
      (lambda _g125346_
        (let ((_g125345_ (##length _g125346_)))
          (cond ((##fx= _g125345_ 2) (apply gx#core-bind-syntax!__0 _g125346_))
                ((##fx= _g125345_ 3) (apply gx#core-bind-syntax!__1 _g125346_))
                ((##fx= _g125345_ 4) (apply gx#core-bind-syntax!__2 _g125346_))
                ((##fx= _g125345_ 5) (apply gx#core-bind-syntax!__% _g125346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g125346_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id122381%_ _%e122382%_ _%rebind?122383%_)
        (gx#core-bind-syntax!__%
         _%id122381%_
         _%e122382%_
         _%rebind?122383%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id122388%_ _%e122389%_)
        (let ((_%rebind?122391%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id122388%_
           _%e122389%_
           _%rebind?122391%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g125348_
        (let ((_g125347_ (##length _g125348_)))
          (cond ((##fx= _g125347_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g125348_))
                ((##fx= _g125347_ 3)
                 (apply gx#core-bind-root-syntax!__% _g125348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g125348_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id122339%_
               _%alias-id122340%_
               _%rebind?122341%_
               _%phi122342%_
               _%ctx122343%_)
        (gx#bind-identifier!__%
         _%id122339%_
         (let ((_%key122345%_ (gx#core-identifier-key _%id122339%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key122345%_
             '#t
             _%phi122342%_
             _%ctx122343%_)
            _%key122345%_
            _%phi122342%_
            _%alias-id122340%_))
         _%rebind?122341%_
         _%phi122342%_
         _%ctx122343%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id122350%_ _%alias-id122351%_)
        (let* ((_%rebind?122353%_ '#f)
               (_%phi122355%_ (gx#current-expander-phi))
               (_%ctx122357%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id122350%_
           _%alias-id122351%_
           _%rebind?122353%_
           _%phi122355%_
           _%ctx122357%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id122359%_ _%alias-id122360%_ _%rebind?122361%_)
        (let* ((_%phi122363%_ (gx#current-expander-phi))
               (_%ctx122365%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id122359%_
           _%alias-id122360%_
           _%rebind?122361%_
           _%phi122363%_
           _%ctx122365%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id122367%_ _%alias-id122368%_ _%rebind?122369%_ _%phi122370%_)
        (let ((_%ctx122372%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id122367%_
           _%alias-id122368%_
           _%rebind?122369%_
           _%phi122370%_
           _%ctx122372%_))))
    (define gx#core-bind-alias!
      (lambda _g125350_
        (let ((_g125349_ (##length _g125350_)))
          (cond ((##fx= _g125349_ 2) (apply gx#core-bind-alias!__0 _g125350_))
                ((##fx= _g125349_ 3) (apply gx#core-bind-alias!__1 _g125350_))
                ((##fx= _g125349_ 4) (apply gx#core-bind-alias!__2 _g125350_))
                ((##fx= _g125349_ 5) (apply gx#core-bind-alias!__% _g125350_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g125350_))))))
    (define gx#make-binding-id__%
      (lambda (_%key122289%_ _%syntax?122290%_ _%phi122291%_ _%ctx122292%_)
        (if (uninterned-symbol? _%key122289%_)
            (##gensym 'L)
            (if (pair? _%key122289%_)
                (gensym (##car _%key122289%_))
                (if (##structure-instance-of? _%ctx122292%_ 'gx#top-context::t)
                    (let ((_%ns122297%_
                           (gx#core-context-namespace__% _%ctx122292%_)))
                      (if (and (fxzero? _%phi122291%_) (not _%syntax?122290%_))
                          (if _%ns122297%_
                              (make-symbol__1 _%ns122297%_ '"#" _%key122289%_)
                              _%key122289%_)
                          (if _%syntax?122290%_
                              (make-symbol__1
                               (let ((_%$e122301%_ _%ns122297%_))
                                 (if _%$e122301%_ _%$e122301%_ '""))
                               '"[:"
                               (number->string _%phi122291%_)
                               '":]#"
                               _%key122289%_)
                              (make-symbol__1
                               (let ((_%$e122305%_ _%ns122297%_))
                                 (if _%$e122305%_ _%$e122305%_ '""))
                               '"["
                               (number->string _%phi122291%_)
                               '"]#"
                               _%key122289%_))))
                    (gensym _%key122289%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key122312%_)
        (let* ((_%syntax?122314%_ '#f)
               (_%phi122316%_ (gx#current-expander-phi))
               (_%ctx122318%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key122312%_
           _%syntax?122314%_
           _%phi122316%_
           _%ctx122318%_))))
    (define gx#make-binding-id__1
      (lambda (_%key122320%_ _%syntax?122321%_)
        (let* ((_%phi122323%_ (gx#current-expander-phi))
               (_%ctx122325%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key122320%_
           _%syntax?122321%_
           _%phi122323%_
           _%ctx122325%_))))
    (define gx#make-binding-id__2
      (lambda (_%key122327%_ _%syntax?122328%_ _%phi122329%_)
        (let ((_%ctx122331%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key122327%_
           _%syntax?122328%_
           _%phi122329%_
           _%ctx122331%_))))
    (define gx#make-binding-id
      (lambda _g125352_
        (let ((_g125351_ (##length _g125352_)))
          (cond ((##fx= _g125351_ 1) (apply gx#make-binding-id__0 _g125352_))
                ((##fx= _g125351_ 2) (apply gx#make-binding-id__1 _g125352_))
                ((##fx= _g125351_ 3) (apply gx#make-binding-id__2 _g125352_))
                ((##fx= _g125351_ 4) (apply gx#make-binding-id__% _g125352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g125352_))))))))
