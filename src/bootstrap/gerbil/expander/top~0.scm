(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1713631266)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx125139%_)
        (letrec ((_%expand-special125141%_
                  (lambda (_%hd125143%_ _%K125144%_ _%rest125145%_ _%r125146%_)
                    (_%K125144%_
                     _%rest125145%_
                     (cons (gx#core-expand-top _%hd125143%_) _%r125146%_)))))
          (gx#core-expand-block__0 _%stx125139%_ _%expand-special125141%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx124892%_)
        (letrec ((_%expand-special124894%_
                  (lambda (_%hd125014%_ _%K125015%_ _%rest125016%_ _%r125017%_)
                    (let* ((_%K125021%_
                            (lambda (_%e125019%_)
                              (_%K125015%_
                               _%rest125016%_
                               (cons _%e125019%_ _%r125017%_))))
                           (_%e125022125051%_ _%hd125014%_)
                           (_%E125046125055%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e125022125051%_)))
                           (_%E125042125067%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125022125051%_)
                                  (let ((_%e125047125059%_
                                         (gx#syntax-e _%e125022125051%_)))
                                    (let ((_%hd125048125062%_
                                           (##car _%e125047125059%_))
                                          (_%tl125049125064%_
                                           (##cdr _%e125047125059%_)))
                                      (if (and (gx#identifier?
                                                _%hd125048125062%_)
                                               (gx#core-identifier=?
                                                _%hd125048125062%_
                                                '%#define-runtime))
                                          (_%K125021%_
                                           (gx#core-expand-define-runtime%
                                            _%hd125014%_))
                                          (_%E125046125055%_))))
                                  (_%E125046125055%_))))
                           (_%E125038125079%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125022125051%_)
                                  (let ((_%e125043125071%_
                                         (gx#syntax-e _%e125022125051%_)))
                                    (let ((_%hd125044125074%_
                                           (##car _%e125043125071%_))
                                          (_%tl125045125076%_
                                           (##cdr _%e125043125071%_)))
                                      (if (and (gx#identifier?
                                                _%hd125044125074%_)
                                               (gx#core-identifier=?
                                                _%hd125044125074%_
                                                '%#define-alias))
                                          (_%K125021%_
                                           (gx#core-expand-define-alias%
                                            _%hd125014%_))
                                          (_%E125042125067%_))))
                                  (_%E125042125067%_))))
                           (_%E125028125091%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125022125051%_)
                                  (let ((_%e125039125083%_
                                         (gx#syntax-e _%e125022125051%_)))
                                    (let ((_%hd125040125086%_
                                           (##car _%e125039125083%_))
                                          (_%tl125041125088%_
                                           (##cdr _%e125039125083%_)))
                                      (if (and (gx#identifier?
                                                _%hd125040125086%_)
                                               (gx#core-identifier=?
                                                _%hd125040125086%_
                                                '%#define-syntax))
                                          (_%K125021%_
                                           (gx#core-expand-define-syntax%
                                            _%hd125014%_))
                                          (_%E125038125079%_))))
                                  (_%E125038125079%_))))
                           (_%E125024125123%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125022125051%_)
                                  (let ((_%e125029125095%_
                                         (gx#syntax-e _%e125022125051%_)))
                                    (let ((_%hd125030125098%_
                                           (##car _%e125029125095%_))
                                          (_%tl125031125100%_
                                           (##cdr _%e125029125095%_)))
                                      (if (and (gx#identifier?
                                                _%hd125030125098%_)
                                               (gx#core-identifier=?
                                                _%hd125030125098%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl125031125100%_)
                                              (let ((_%e125032125103%_
                                                     (gx#syntax-e
                                                      _%tl125031125100%_)))
                                                (let ((_%hd125033125106%_
                                                       (##car _%e125032125103%_))
                                                      (_%tl125034125108%_
                                                       (##cdr _%e125032125103%_)))
                                                  (let ((_%hd-bind125111%_
                                                         _%hd125033125106%_))
                                                    (if (gx#stx-pair?
                                                         _%tl125034125108%_)
                                                        (let ((_%e125035125113%_
                                                               (gx#syntax-e
                                                                _%tl125034125108%_)))
                                                          (let ((_%hd125036125116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e125035125113%_))
                        (_%tl125037125118%_ (##cdr _%e125035125113%_)))
                    (let ((_%expr125121%_ _%hd125036125116%_))
                      (if (gx#stx-null? _%tl125037125118%_)
                          (if (gx#core-bind-values? _%hd-bind125111%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind125111%_)
                                (_%K125021%_ _%hd125014%_))
                              (_%E125028125091%_))
                          (_%E125028125091%_)))))
                (_%E125028125091%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E125028125091%_))
                                          (_%E125028125091%_))))
                                  (_%E125028125091%_))))
                           (_%E125023125135%_
                            (lambda ()
                              (if (gx#stx-pair? _%e125022125051%_)
                                  (let ((_%e125025125127%_
                                         (gx#syntax-e _%e125022125051%_)))
                                    (let ((_%hd125026125130%_
                                           (##car _%e125025125127%_))
                                          (_%tl125027125132%_
                                           (##cdr _%e125025125127%_)))
                                      (if (and (gx#identifier?
                                                _%hd125026125130%_)
                                               (gx#core-identifier=?
                                                _%hd125026125130%_
                                                '%#begin-syntax))
                                          (_%K125021%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd125014%_))
                                          (_%E125024125123%_))))
                                  (_%E125024125123%_)))))
                      (_%E125023125135%_))))
                 (_%eval-body124895%_
                  (lambda (_%rbody124903%_)
                    (let _%lp124905%_ ((_%rest124907%_ _%rbody124903%_)
                                       (_%body124908%_ '())
                                       (_%ebody124909%_ '()))
                      (let* ((_%rest124910124918%_ _%rest124907%_)
                             (_%else124912124926%_
                              (lambda ()
                                (values _%body124908%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody124909%_)
                                          (gx#stx-source _%stx124892%_))))))
                             (_%K124914125002%_
                              (lambda (_%rest124929%_ _%hd124930%_)
                                (let* ((_%e124931124948%_ _%hd124930%_)
                                       (_%E124943124952%_
                                        (lambda ()
                                          (_%lp124905%_
                                           _%rest124929%_
                                           (cons _%hd124930%_ _%body124908%_)
                                           (cons _%hd124930%_
                                                 _%ebody124909%_))))
                                       (_%E124933124964%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124931124948%_)
                                              (let ((_%e124944124956%_
                                                     (gx#syntax-e
                                                      _%e124931124948%_)))
                                                (let ((_%hd124945124959%_
                                                       (##car _%e124944124956%_))
                                                      (_%tl124946124961%_
                                                       (##cdr _%e124944124956%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd124945124959%_)
                                                           (gx#core-identifier=?
                                                            _%hd124945124959%_
                                                            '%#begin-syntax))
                                                      (_%lp124905%_
                                                       _%rest124929%_
                                                       (cons _%hd124930%_
                                                             _%body124908%_)
                                                       _%ebody124909%_)
                                                      (_%E124943124952%_))))
                                              (_%E124943124952%_))))
                                       (_%E124932124998%_
                                        (lambda ()
                                          (if (gx#stx-pair? _%e124931124948%_)
                                              (let ((_%e124934124968%_
                                                     (gx#syntax-e
                                                      _%e124931124948%_)))
                                                (let ((_%hd124935124971%_
                                                       (##car _%e124934124968%_))
                                                      (_%tl124936124973%_
                                                       (##cdr _%e124934124968%_)))
                                                  (if (and (gx#identifier?
                                                            _%hd124935124971%_)
                                                           (gx#core-identifier=?
                                                            _%hd124935124971%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%tl124936124973%_)
                                                          (let ((_%e124937124976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl124936124973%_)))
                    (let ((_%hd124938124979%_ (##car _%e124937124976%_))
                          (_%tl124939124981%_ (##cdr _%e124937124976%_)))
                      (let ((_%hd-bind124984%_ _%hd124938124979%_))
                        (if (gx#stx-pair? _%tl124939124981%_)
                            (let ((_%e124940124986%_
                                   (gx#syntax-e _%tl124939124981%_)))
                              (let ((_%hd124941124989%_
                                     (##car _%e124940124986%_))
                                    (_%tl124942124991%_
                                     (##cdr _%e124940124986%_)))
                                (let ((_%expr124994%_ _%hd124941124989%_))
                                  (if (gx#stx-null? _%tl124942124991%_)
                                      (let ((_%ehd124996%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind124984%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr124994%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd124930%_))))
                                        (_%lp124905%_
                                         _%rest124929%_
                                         (cons _%ehd124996%_ _%body124908%_)
                                         (cons _%ehd124996%_ _%ebody124909%_)))
                                      (_%E124933124964%_)))))
                            (_%E124933124964%_)))))
                  (_%E124933124964%_))
              (_%E124933124964%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124933124964%_)))))
                                  (_%E124932124998%_)))))
                        (if (pair? _%rest124910124918%_)
                            (let ((_%hd124915125005%_
                                   (##car _%rest124910124918%_))
                                  (_%tl124916125007%_
                                   (##cdr _%rest124910124918%_)))
                              (let* ((_%hd125010%_ _%hd124915125005%_)
                                     (_%rest125012%_ _%tl124916125007%_))
                                (_%K124914125002%_
                                 _%rest125012%_
                                 _%hd125010%_)))
                            (_%else124912124926%_)))))))
          (__call-with-parameters
           (lambda ()
             (let* ((_%rbody124898%_
                     (gx#core-expand-block__1
                      _%stx124892%_
                      _%expand-special124894%_
                      '#f))
                    (_g125162_ (_%eval-body124895%_ _%rbody124898%_)))
               (begin
                 (let ((_g125163_
                        (if (##values? _g125162_)
                            (##vector-length _g125162_)
                            1)))
                   (if (not (##fx= _g125163_ 2))
                       (error "Context expects 2 values" _g125163_)))
                 (let ((_%expanded-body124900%_ (##vector-ref _g125162_ 0))
                       (_%value124901%_ (##vector-ref _g125162_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body124900%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value124901%_ '())))
                    (gx#stx-source _%stx124892%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx124862%_)
        (let* ((_%e124863124870%_ _%stx124862%_)
               (_%E124865124874%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124863124870%_)))
               (_%E124864124888%_
                (lambda ()
                  (if (gx#stx-pair? _%e124863124870%_)
                      (let ((_%e124866124878%_
                             (gx#syntax-e _%e124863124870%_)))
                        (let ((_%hd124867124881%_ (##car _%e124866124878%_))
                              (_%tl124868124883%_ (##cdr _%e124866124878%_)))
                          (let ((_%body124886%_ _%tl124868124883%_))
                            (if (gx#stx-list? _%body124886%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body124886%_)
                                 (gx#stx-source _%stx124862%_))
                                (_%E124865124874%_)))))
                      (_%E124865124874%_)))))
          (_%E124864124888%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx124860%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx124860%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx124806%_)
        (let* ((_%e124807124820%_ _%stx124806%_)
               (_%E124809124824%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124807124820%_)))
               (_%E124808124856%_
                (lambda ()
                  (if (gx#stx-pair? _%e124807124820%_)
                      (let ((_%e124810124828%_
                             (gx#syntax-e _%e124807124820%_)))
                        (let ((_%hd124811124831%_ (##car _%e124810124828%_))
                              (_%tl124812124833%_ (##cdr _%e124810124828%_)))
                          (if (gx#stx-pair? _%tl124812124833%_)
                              (let ((_%e124813124836%_
                                     (gx#syntax-e _%tl124812124833%_)))
                                (let ((_%hd124814124839%_
                                       (##car _%e124813124836%_))
                                      (_%tl124815124841%_
                                       (##cdr _%e124813124836%_)))
                                  (let ((_%ann124844%_ _%hd124814124839%_))
                                    (if (gx#stx-pair? _%tl124815124841%_)
                                        (let ((_%e124816124846%_
                                               (gx#syntax-e
                                                _%tl124815124841%_)))
                                          (let ((_%hd124817124849%_
                                                 (##car _%e124816124846%_))
                                                (_%tl124818124851%_
                                                 (##cdr _%e124816124846%_)))
                                            (let ((_%expr124854%_
                                                   _%hd124817124849%_))
                                              (if (gx#stx-null?
                                                   _%tl124818124851%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann124844%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr124854%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx124806%_))
                                                  (_%E124809124824%_)))))
                                        (_%E124809124824%_)))))
                              (_%E124809124824%_))))
                      (_%E124809124824%_)))))
          (_%E124808124856%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx124530%_ _%body124531%_)
        (letrec ((_%expand-special124533%_
                  (lambda (_%hd124801%_ _%K124802%_ _%rest124803%_ _%r124804%_)
                    (_%K124802%_
                     '()
                     (cons (_%expand-internal124534%_
                            _%hd124801%_
                            _%rest124803%_)
                           _%r124804%_))))
                 (_%expand-internal124534%_
                  (lambda (_%hd124797%_ _%rest124798%_)
                    (__call-with-parameters
                     (lambda ()
                       (_%wrap-internal124536%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd124797%_ _%rest124798%_))
                          (gx#stx-source _%stx124530%_))
                         _%expand-internal-special124535%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj125156
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj125156)
                       __obj125156))))
                 (_%expand-internal-special124535%_
                  (lambda (_%hd124692%_ _%K124693%_ _%rest124694%_ _%r124695%_)
                    (let* ((_%e124696124721%_ _%hd124692%_)
                           (_%E124716124725%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%e124696124721%_)))
                           (_%E124712124737%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124696124721%_)
                                  (let ((_%e124717124729%_
                                         (gx#syntax-e _%e124696124721%_)))
                                    (let ((_%hd124718124732%_
                                           (##car _%e124717124729%_))
                                          (_%tl124719124734%_
                                           (##cdr _%e124717124729%_)))
                                      (if (and (gx#identifier?
                                                _%hd124718124732%_)
                                               (gx#core-identifier=?
                                                _%hd124718124732%_
                                                '%#declare))
                                          (_%K124693%_
                                           _%rest124694%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd124692%_)
                                                 _%r124695%_))
                                          (_%E124716124725%_))))
                                  (_%E124716124725%_))))
                           (_%E124708124749%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124696124721%_)
                                  (let ((_%e124713124741%_
                                         (gx#syntax-e _%e124696124721%_)))
                                    (let ((_%hd124714124744%_
                                           (##car _%e124713124741%_))
                                          (_%tl124715124746%_
                                           (##cdr _%e124713124741%_)))
                                      (if (and (gx#identifier?
                                                _%hd124714124744%_)
                                               (gx#core-identifier=?
                                                _%hd124714124744%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd124692%_)
                                            (_%K124693%_
                                             _%rest124694%_
                                             _%r124695%_))
                                          (_%E124712124737%_))))
                                  (_%E124712124737%_))))
                           (_%E124698124761%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124696124721%_)
                                  (let ((_%e124709124753%_
                                         (gx#syntax-e _%e124696124721%_)))
                                    (let ((_%hd124710124756%_
                                           (##car _%e124709124753%_))
                                          (_%tl124711124758%_
                                           (##cdr _%e124709124753%_)))
                                      (if (and (gx#identifier?
                                                _%hd124710124756%_)
                                               (gx#core-identifier=?
                                                _%hd124710124756%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd124692%_)
                                            (_%K124693%_
                                             _%rest124694%_
                                             _%r124695%_))
                                          (_%E124708124749%_))))
                                  (_%E124708124749%_))))
                           (_%E124697124793%_
                            (lambda ()
                              (if (gx#stx-pair? _%e124696124721%_)
                                  (let ((_%e124699124765%_
                                         (gx#syntax-e _%e124696124721%_)))
                                    (let ((_%hd124700124768%_
                                           (##car _%e124699124765%_))
                                          (_%tl124701124770%_
                                           (##cdr _%e124699124765%_)))
                                      (if (and (gx#identifier?
                                                _%hd124700124768%_)
                                               (gx#core-identifier=?
                                                _%hd124700124768%_
                                                '%#define-values))
                                          (if (gx#stx-pair? _%tl124701124770%_)
                                              (let ((_%e124702124773%_
                                                     (gx#syntax-e
                                                      _%tl124701124770%_)))
                                                (let ((_%hd124703124776%_
                                                       (##car _%e124702124773%_))
                                                      (_%tl124704124778%_
                                                       (##cdr _%e124702124773%_)))
                                                  (let ((_%hd-bind124781%_
                                                         _%hd124703124776%_))
                                                    (if (gx#stx-pair?
                                                         _%tl124704124778%_)
                                                        (let ((_%e124705124783%_
                                                               (gx#syntax-e
                                                                _%tl124704124778%_)))
                                                          (let ((_%hd124706124786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%e124705124783%_))
                        (_%tl124707124788%_ (##cdr _%e124705124783%_)))
                    (let ((_%expr124791%_ _%hd124706124786%_))
                      (if (gx#stx-null? _%tl124707124788%_)
                          (if (gx#core-bind-values? _%hd-bind124781%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind124781%_)
                                (_%K124693%_
                                 _%rest124694%_
                                 (cons _%hd124692%_ _%r124695%_)))
                              (_%E124698124761%_))
                          (_%E124698124761%_)))))
                (_%E124698124761%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E124698124761%_))
                                          (_%E124698124761%_))))
                                  (_%E124698124761%_)))))
                      (_%E124697124793%_))))
                 (_%wrap-internal124536%_
                  (lambda (_%rbody124538%_)
                    (let _%lp124540%_ ((_%rest124542%_ _%rbody124538%_)
                                       (_%decls124543%_ '())
                                       (_%bind124544%_ '())
                                       (_%body124545%_ '()))
                      (let* ((_%e124546124553%_ _%rest124542%_)
                             (_%E124548124602%_
                              (lambda ()
                                (let* ((_%body124597%_
                                        (let* ((_%body124556124566%_
                                                _%body124545%_)
                                               (_%else124559124574%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body124545%_)
                                                   (gx#stx-source
                                                    _%stx124530%_)))))
                                          (let ((_%K124564124594%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx124530%_)))
                                                (_%K124561124580%_
                                                 (lambda (_%expr124578%_)
                                                   _%expr124578%_)))
                                            (let ((_%try-match124558124590%_
                                                   (lambda ()
                                                     (if (pair? _%body124556124566%_)
                                                         (let ((_%tl124563124585%_
                                                                (##cdr _%body124556124566%_))
                                                               (_%hd124562124583%_
                                                                (##car _%body124556124566%_)))
                                                           (if (null? _%tl124563124585%_)
                                                               (let ((_%expr124588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd124562124583%_))
                         (_%K124561124580%_ _%expr124588%_))
                       (_%else124559124574%_)))
                 (_%else124559124574%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%body124556124566%_)
                                                  (_%K124564124594%_)
                                                  (_%try-match124558124590%_))))))
                                       (_%body124599%_
                                        (if (null? _%bind124544%_)
                                            _%body124597%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind124544%_
                                                         (cons _%body124597%_
                                                               '())))
                                             (gx#stx-source _%stx124530%_)))))
                                  (if (null? _%decls124543%_)
                                      _%body124599%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls124543%_
                                                   (cons _%body124599%_ '())))
                                       (gx#stx-source _%stx124530%_))))))
                             (_%E124547124688%_
                              (lambda ()
                                (if (gx#stx-pair? _%e124546124553%_)
                                    (let ((_%e124549124606%_
                                           (gx#syntax-e _%e124546124553%_)))
                                      (let ((_%hd124550124609%_
                                             (##car _%e124549124606%_))
                                            (_%tl124551124611%_
                                             (##cdr _%e124549124606%_)))
                                        (let* ((_%hd124614%_
                                                _%hd124550124609%_)
                                               (_%rest124616%_
                                                _%tl124551124611%_)
                                               (_%e124617124634%_ _%hd124614%_)
                                               (_%E124629124638%_
                                                (lambda ()
                                                  (if (null? _%bind124544%_)
                                                      (_%lp124540%_
                                                       _%rest124616%_
                                                       _%decls124543%_
                                                       _%bind124544%_
                                                       (cons _%hd124614%_
                                                             _%body124545%_))
                                                      (_%lp124540%_
                                                       _%rest124616%_
                                                       _%decls124543%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd124614%_ '()))
                     _%bind124544%_)
               _%body124545%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E124619124652%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e124617124634%_)
                                                      (let ((_%e124630124642%_
                                                             (gx#syntax-e
                                                              _%e124617124634%_)))
                                                        (let ((_%hd124631124645%_
                                                               (##car _%e124630124642%_))
                                                              (_%tl124632124647%_
                                                               (##cdr _%e124630124642%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd124631124645%_)
                           (gx#core-identifier=?
                            _%hd124631124645%_
                            '%#declare))
                      (let ((_%xdecls124650%_ _%tl124632124647%_))
                        (_%lp124540%_
                         _%rest124616%_
                         (gx#stx-foldr cons _%decls124543%_ _%xdecls124650%_)
                         _%bind124544%_
                         _%body124545%_))
                      (_%E124629124638%_))))
              (_%E124629124638%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%E124618124684%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%e124617124634%_)
                                                      (let ((_%e124620124656%_
                                                             (gx#syntax-e
                                                              _%e124617124634%_)))
                                                        (let ((_%hd124621124659%_
                                                               (##car _%e124620124656%_))
                                                              (_%tl124622124661%_
                                                               (##cdr _%e124620124656%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd124621124659%_)
                           (gx#core-identifier=?
                            _%hd124621124659%_
                            '%#define-values))
                      (if (gx#stx-pair? _%tl124622124661%_)
                          (let ((_%e124623124664%_
                                 (gx#syntax-e _%tl124622124661%_)))
                            (let ((_%hd124624124667%_
                                   (##car _%e124623124664%_))
                                  (_%tl124625124669%_
                                   (##cdr _%e124623124664%_)))
                              (let ((_%hd-bind124672%_ _%hd124624124667%_))
                                (if (gx#stx-pair? _%tl124625124669%_)
                                    (let ((_%e124626124674%_
                                           (gx#syntax-e _%tl124625124669%_)))
                                      (let ((_%hd124627124677%_
                                             (##car _%e124626124674%_))
                                            (_%tl124628124679%_
                                             (##cdr _%e124626124674%_)))
                                        (let ((_%expr124682%_
                                               _%hd124627124677%_))
                                          (if (gx#stx-null? _%tl124628124679%_)
                                              (_%lp124540%_
                                               _%rest124616%_
                                               _%decls124543%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind124672%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr124682%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind124544%_)
                                               _%body124545%_)
                                              (_%E124619124652%_)))))
                                    (_%E124619124652%_)))))
                          (_%E124619124652%_))
                      (_%E124619124652%_))))
              (_%E124619124652%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%E124618124684%_))))
                                    (_%E124548124602%_)))))
                        (_%E124547124688%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body124531%_)
            (gx#stx-source _%stx124530%_))
           _%expand-special124533%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx124468%_)
        (let* ((_%e124469124476%_ _%stx124468%_)
               (_%E124471124480%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124469124476%_)))
               (_%E124470124526%_
                (lambda ()
                  (if (gx#stx-pair? _%e124469124476%_)
                      (let ((_%e124472124484%_
                             (gx#syntax-e _%e124469124476%_)))
                        (let ((_%hd124473124487%_ (##car _%e124472124484%_))
                              (_%tl124474124489%_ (##cdr _%e124472124484%_)))
                          (let ((_%body124492%_ _%tl124474124489%_))
                            (if (gx#stx-list? _%body124492%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl124494%_)
                                     (let* ((_%e124495124502%_ _%decl124494%_)
                                            (_%E124497124506%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%e124495124502%_)))
                                            (_%E124496124522%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%e124495124502%_)
                                                   (let ((_%e124498124510%_
                                                          (gx#syntax-e
                                                           _%e124495124502%_)))
                                                     (let ((_%hd124499124513%_
                                                            (##car _%e124498124510%_))
                                                           (_%tl124500124515%_
                                                            (##cdr _%e124498124510%_)))
                                                       (let* ((_%head124518%_
                                                               _%hd124499124513%_)
                                                              (_%args124520%_
                                                               _%tl124500124515%_))
                                                         (if (gx#stx-list?
                                                              _%args124520%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl124494%_)
                                                             (_%E124497124506%_)))))
                                                   (_%E124497124506%_)))))
                                       (_%E124496124522%_)))
                                   _%body124492%_))
                                 (gx#stx-source _%stx124468%_))
                                (_%E124471124480%_)))))
                      (_%E124471124480%_)))))
          (_%E124470124526%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx124372%_)
        (let* ((_%e124373124380%_ _%stx124372%_)
               (_%E124375124384%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124373124380%_)))
               (_%E124374124464%_
                (lambda ()
                  (if (gx#stx-pair? _%e124373124380%_)
                      (let ((_%e124376124388%_
                             (gx#syntax-e _%e124373124380%_)))
                        (let ((_%hd124377124391%_ (##car _%e124376124388%_))
                              (_%tl124378124393%_ (##cdr _%e124376124388%_)))
                          (let ((_%body124396%_ _%tl124378124393%_))
                            (let _%lp124398%_ ((_%rest124400%_ _%body124396%_)
                                               (_%r124401%_ '()))
                              (let* ((_%e124402124416%_ _%rest124400%_)
                                     (_%E124414124420%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx124372%_)))
                                     (_%E124404124424%_
                                      (lambda ()
                                        (if (gx#stx-null? _%e124402124416%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r124401%_))
                                             (gx#stx-source _%stx124372%_))
                                            (_%E124414124420%_))))
                                     (_%E124403124460%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%e124402124416%_)
                                            (let ((_%e124405124428%_
                                                   (gx#syntax-e
                                                    _%e124402124416%_)))
                                              (let ((_%hd124406124431%_
                                                     (##car _%e124405124428%_))
                                                    (_%tl124407124433%_
                                                     (##cdr _%e124405124428%_)))
                                                (if (gx#stx-pair?
                                                     _%hd124406124431%_)
                                                    (let ((_%e124408124436%_
                                                           (gx#syntax-e
                                                            _%hd124406124431%_)))
                                                      (let ((_%hd124409124439%_
                                                             (##car _%e124408124436%_))
                                                            (_%tl124410124441%_
                                                             (##cdr _%e124408124436%_)))
                                                        (let ((_%id124444%_
                                                               _%hd124409124439%_))
                                                          (if (gx#stx-pair?
                                                               _%tl124410124441%_)
                                                              (let ((_%e124411124446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl124410124441%_)))
                        (let ((_%hd124412124449%_ (##car _%e124411124446%_))
                              (_%tl124413124451%_ (##cdr _%e124411124446%_)))
                          (let ((_%eid124454%_ _%hd124412124449%_))
                            (if (gx#stx-null? _%tl124413124451%_)
                                (let ((_%rest124456%_ _%tl124407124433%_))
                                  (if (and (gx#identifier? _%id124444%_)
                                           (gx#identifier? _%eid124454%_))
                                      (let ((_%eid124458%_
                                             (gx#stx-e _%eid124454%_)))
                                        (gx#core-bind-extern!__0
                                         _%id124444%_
                                         _%eid124458%_)
                                        (_%lp124398%_
                                         _%rest124456%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id124444%_)
                                                     (cons _%eid124458%_ '()))
                                               _%r124401%_)))
                                      (_%E124404124424%_)))
                                (_%E124404124424%_)))))
                      (_%E124404124424%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%E124404124424%_))))
                                            (_%E124404124424%_)))))
                                (_%E124403124460%_))))))
                      (_%E124375124384%_)))))
          (_%E124374124464%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx124318%_)
        (let* ((_%e124319124332%_ _%stx124318%_)
               (_%E124321124336%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124319124332%_)))
               (_%E124320124368%_
                (lambda ()
                  (if (gx#stx-pair? _%e124319124332%_)
                      (let ((_%e124322124340%_
                             (gx#syntax-e _%e124319124332%_)))
                        (let ((_%hd124323124343%_ (##car _%e124322124340%_))
                              (_%tl124324124345%_ (##cdr _%e124322124340%_)))
                          (if (gx#stx-pair? _%tl124324124345%_)
                              (let ((_%e124325124348%_
                                     (gx#syntax-e _%tl124324124345%_)))
                                (let ((_%hd124326124351%_
                                       (##car _%e124325124348%_))
                                      (_%tl124327124353%_
                                       (##cdr _%e124325124348%_)))
                                  (let ((_%hd124356%_ _%hd124326124351%_))
                                    (if (gx#stx-pair? _%tl124327124353%_)
                                        (let ((_%e124328124358%_
                                               (gx#syntax-e
                                                _%tl124327124353%_)))
                                          (let ((_%hd124329124361%_
                                                 (##car _%e124328124358%_))
                                                (_%tl124330124363%_
                                                 (##cdr _%e124328124358%_)))
                                            (let ((_%expr124366%_
                                                   _%hd124329124361%_))
                                              (if (gx#stx-null?
                                                   _%tl124330124363%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd124356%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd124356%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd124356%_)
                             (cons (gx#core-expand-expression _%expr124366%_)
                                   '())))
                 (gx#stx-source _%stx124318%_)))
              (_%E124321124336%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124321124336%_)))))
                                        (_%E124321124336%_)))))
                              (_%E124321124336%_))))
                      (_%E124321124336%_)))))
          (_%E124320124368%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx124262%_)
        (let* ((_%e124263124276%_ _%stx124262%_)
               (_%E124265124280%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124263124276%_)))
               (_%E124264124314%_
                (lambda ()
                  (if (gx#stx-pair? _%e124263124276%_)
                      (let ((_%e124266124284%_
                             (gx#syntax-e _%e124263124276%_)))
                        (let ((_%hd124267124287%_ (##car _%e124266124284%_))
                              (_%tl124268124289%_ (##cdr _%e124266124284%_)))
                          (if (gx#stx-pair? _%tl124268124289%_)
                              (let ((_%e124269124292%_
                                     (gx#syntax-e _%tl124268124289%_)))
                                (let ((_%hd124270124295%_
                                       (##car _%e124269124292%_))
                                      (_%tl124271124297%_
                                       (##cdr _%e124269124292%_)))
                                  (let ((_%id124300%_ _%hd124270124295%_))
                                    (if (gx#stx-pair? _%tl124271124297%_)
                                        (let ((_%e124272124302%_
                                               (gx#syntax-e
                                                _%tl124271124297%_)))
                                          (let ((_%hd124273124305%_
                                                 (##car _%e124272124302%_))
                                                (_%tl124274124307%_
                                                 (##cdr _%e124272124302%_)))
                                            (let ((_%binding-id124310%_
                                                   _%hd124273124305%_))
                                              (if (gx#stx-null?
                                                   _%tl124274124307%_)
                                                  (if (and (gx#identifier?
                                                            _%id124300%_)
                                                           (gx#identifier?
                                                            _%binding-id124310%_))
                                                      (let ((_%eid124312%_
                                                             (gx#stx-e
                                                              _%binding-id124310%_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _%id124300%_
                                                         _%eid124312%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id124300%_)
                             (cons _%eid124312%_ '())))))
              (_%E124265124280%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124265124280%_)))))
                                        (_%E124265124280%_)))))
                              (_%E124265124280%_))))
                      (_%E124265124280%_)))))
          (_%E124264124314%_))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx124205%_)
        (let* ((_%e124206124219%_ _%stx124205%_)
               (_%E124208124223%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124206124219%_)))
               (_%E124207124258%_
                (lambda ()
                  (if (gx#stx-pair? _%e124206124219%_)
                      (let ((_%e124209124227%_
                             (gx#syntax-e _%e124206124219%_)))
                        (let ((_%hd124210124230%_ (##car _%e124209124227%_))
                              (_%tl124211124232%_ (##cdr _%e124209124227%_)))
                          (if (gx#stx-pair? _%tl124211124232%_)
                              (let ((_%e124212124235%_
                                     (gx#syntax-e _%tl124211124232%_)))
                                (let ((_%hd124213124238%_
                                       (##car _%e124212124235%_))
                                      (_%tl124214124240%_
                                       (##cdr _%e124212124235%_)))
                                  (let ((_%id124243%_ _%hd124213124238%_))
                                    (if (gx#stx-pair? _%tl124214124240%_)
                                        (let ((_%e124215124245%_
                                               (gx#syntax-e
                                                _%tl124214124240%_)))
                                          (let ((_%hd124216124248%_
                                                 (##car _%e124215124245%_))
                                                (_%tl124217124250%_
                                                 (##cdr _%e124215124245%_)))
                                            (let ((_%expr124253%_
                                                   _%hd124216124248%_))
                                              (if (gx#stx-null?
                                                   _%tl124217124250%_)
                                                  (if (gx#identifier?
                                                       _%id124243%_)
                                                      (let ((_g125164_
                                                             (gx#core-expand-expression+1
                                                              _%expr124253%_)))
                                                        (begin
                                                          (let ((_g125165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g125164_)
                             (##vector-length _g125164_)
                             1)))
                    (if (not (##fx= _g125165_ 2))
                        (error "Context expects 2 values" _g125165_)))
                  (let ((_%e-stx124255%_ (##vector-ref _g125164_ 0))
                        (_%e124256%_ (##vector-ref _g125164_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id124243%_ _%e124256%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id124243%_)
                                   (cons _%e-stx124255%_ '())))
                       (gx#stx-source _%stx124205%_))))))
              (_%E124208124223%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124208124223%_)))))
                                        (_%E124208124223%_)))))
                              (_%E124208124223%_))))
                      (_%E124208124223%_)))))
          (_%E124207124258%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx124149%_)
        (let* ((_%e124150124163%_ _%stx124149%_)
               (_%E124152124167%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124150124163%_)))
               (_%E124151124201%_
                (lambda ()
                  (if (gx#stx-pair? _%e124150124163%_)
                      (let ((_%e124153124171%_
                             (gx#syntax-e _%e124150124163%_)))
                        (let ((_%hd124154124174%_ (##car _%e124153124171%_))
                              (_%tl124155124176%_ (##cdr _%e124153124171%_)))
                          (if (gx#stx-pair? _%tl124155124176%_)
                              (let ((_%e124156124179%_
                                     (gx#syntax-e _%tl124155124176%_)))
                                (let ((_%hd124157124182%_
                                       (##car _%e124156124179%_))
                                      (_%tl124158124184%_
                                       (##cdr _%e124156124179%_)))
                                  (let ((_%id124187%_ _%hd124157124182%_))
                                    (if (gx#stx-pair? _%tl124158124184%_)
                                        (let ((_%e124159124189%_
                                               (gx#syntax-e
                                                _%tl124158124184%_)))
                                          (let ((_%hd124160124192%_
                                                 (##car _%e124159124189%_))
                                                (_%tl124161124194%_
                                                 (##cdr _%e124159124189%_)))
                                            (let ((_%alias-id124197%_
                                                   _%hd124160124192%_))
                                              (if (gx#stx-null?
                                                   _%tl124161124194%_)
                                                  (if (and (gx#identifier?
                                                            _%id124187%_)
                                                           (gx#identifier?
                                                            _%alias-id124197%_))
                                                      (let ((_%alias-id124199%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id124197%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id124187%_
                                                         _%alias-id124199%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id124187%_)
                             (cons _%alias-id124199%_ '())))))
              (_%E124152124167%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E124152124167%_)))))
                                        (_%E124152124167%_)))))
                              (_%E124152124167%_))))
                      (_%E124152124167%_)))))
          (_%E124151124201%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx124092%_ _%wrap?124093%_)
        (let* ((_%e124094124104%_ _%stx124092%_)
               (_%E124096124108%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124094124104%_)))
               (_%E124095124135%_
                (lambda ()
                  (if (gx#stx-pair? _%e124094124104%_)
                      (let ((_%e124097124112%_
                             (gx#syntax-e _%e124094124104%_)))
                        (let ((_%hd124098124115%_ (##car _%e124097124112%_))
                              (_%tl124099124117%_ (##cdr _%e124097124112%_)))
                          (if (gx#stx-pair? _%tl124099124117%_)
                              (let ((_%e124100124120%_
                                     (gx#syntax-e _%tl124099124117%_)))
                                (let ((_%hd124101124123%_
                                       (##car _%e124100124120%_))
                                      (_%tl124102124125%_
                                       (##cdr _%e124100124120%_)))
                                  (let* ((_%hd124128%_ _%hd124101124123%_)
                                         (_%body124130%_ _%tl124102124125%_))
                                    (if (gx#core-bind-values? _%hd124128%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd124128%_)
                                           (let ((_%body124133%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd124128%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx124092%_
                                                               _%body124130%_)
                                                              '()))))
                                             (if _%wrap?124093%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body124133%_)
                                                  (gx#stx-source
                                                   _%stx124092%_))
                                                 _%body124133%_)))
                                         gx#current-expander-context
                                         (let ((__obj125157
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj125157)
                                           __obj125157))
                                        (_%E124096124108%_)))))
                              (_%E124096124108%_))))
                      (_%E124096124108%_)))))
          (_%E124095124135%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx124142%_)
        (let ((_%wrap?124144%_ '#t))
          (gx#core-expand-lambda%__% _%stx124142%_ _%wrap?124144%_))))
    (define gx#core-expand-lambda%
      (lambda _g125167_
        (let ((_g125166_ (##length _g125167_)))
          (cond ((##fx= _g125166_ 1)
                 (apply gx#core-expand-lambda%__0 _g125167_))
                ((##fx= _g125166_ 2)
                 (apply gx#core-expand-lambda%__% _g125167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g125167_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx124056%_)
        (let* ((_%e124057124064%_ _%stx124056%_)
               (_%E124059124068%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124057124064%_)))
               (_%E124058124087%_
                (lambda ()
                  (if (gx#stx-pair? _%e124057124064%_)
                      (let ((_%e124060124072%_
                             (gx#syntax-e _%e124057124064%_)))
                        (let ((_%hd124061124075%_ (##car _%e124060124072%_))
                              (_%tl124062124077%_ (##cdr _%e124060124072%_)))
                          (let ((_%clauses124080%_ _%tl124062124077%_))
                            (if (gx#stx-list? _%clauses124080%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause124082%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause124082%_)
                                       (let ((_%$e124084%_
                                              (gx#stx-source
                                               _%clause124082%_)))
                                         (if _%$e124084%_
                                             _%$e124084%_
                                             (gx#stx-source _%stx124056%_))))
                                      '#f))
                                   _%clauses124080%_))
                                 (gx#stx-source _%stx124056%_))
                                (_%E124059124068%_)))))
                      (_%E124059124068%_)))))
          (_%E124058124087%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx124010%_)
        (let* ((_%e124011124021%_ _%stx124010%_)
               (_%E124013124025%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e124011124021%_)))
               (_%E124012124052%_
                (lambda ()
                  (if (gx#stx-pair? _%e124011124021%_)
                      (let ((_%e124014124029%_
                             (gx#syntax-e _%e124011124021%_)))
                        (let ((_%hd124015124032%_ (##car _%e124014124029%_))
                              (_%tl124016124034%_ (##cdr _%e124014124029%_)))
                          (if (gx#stx-pair? _%tl124016124034%_)
                              (let ((_%e124017124037%_
                                     (gx#syntax-e _%tl124016124034%_)))
                                (let ((_%hd124018124040%_
                                       (##car _%e124017124037%_))
                                      (_%tl124019124042%_
                                       (##cdr _%e124017124037%_)))
                                  (let* ((_%hd124045%_ _%hd124018124040%_)
                                         (_%body124047%_ _%tl124019124042%_))
                                    (if (gx#core-expand-let-bind? _%hd124045%_)
                                        (let ((_%expressions124049%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd124045%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd124045%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd124045%_
                                                           _%expressions124049%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx124010%_
                         _%body124047%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx124010%_)))
                                           gx#current-expander-context
                                           (let ((__obj125158
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj125158)
                                             __obj125158)))
                                        (_%E124013124025%_)))))
                              (_%E124013124025%_))))
                      (_%E124013124025%_)))))
          (_%E124012124052%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx123955%_ _%form123956%_)
        (let* ((_%e123957123967%_ _%stx123955%_)
               (_%E123959123971%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123957123967%_)))
               (_%E123958123996%_
                (lambda ()
                  (if (gx#stx-pair? _%e123957123967%_)
                      (let ((_%e123960123975%_
                             (gx#syntax-e _%e123957123967%_)))
                        (let ((_%hd123961123978%_ (##car _%e123960123975%_))
                              (_%tl123962123980%_ (##cdr _%e123960123975%_)))
                          (if (gx#stx-pair? _%tl123962123980%_)
                              (let ((_%e123963123983%_
                                     (gx#syntax-e _%tl123962123980%_)))
                                (let ((_%hd123964123986%_
                                       (##car _%e123963123983%_))
                                      (_%tl123965123988%_
                                       (##cdr _%e123963123983%_)))
                                  (let* ((_%hd123991%_ _%hd123964123986%_)
                                         (_%body123993%_ _%tl123965123988%_))
                                    (if (gx#core-expand-let-bind? _%hd123991%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd123991%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form123956%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd123991%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd123991%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx123955%_
                                                               _%body123993%_)
                                                              '())))
                                            (gx#stx-source _%stx123955%_)))
                                         gx#current-expander-context
                                         (let ((__obj125159
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj125159)
                                           __obj125159))
                                        (_%E123959123971%_)))))
                              (_%E123959123971%_))))
                      (_%E123959123971%_)))))
          (_%E123958123996%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx124003%_)
        (let ((_%form124005%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx124003%_ _%form124005%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g125169_
        (let ((_g125168_ (##length _g125169_)))
          (cond ((##fx= _g125168_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g125169_))
                ((##fx= _g125168_ 2)
                 (apply gx#core-expand-letrec-values%__% _g125169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g125169_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx123952%_)
        (gx#core-expand-letrec-values%__% _%stx123952%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx123909%_)
        (if (gx#stx-list? _%stx123909%_)
            (gx#stx-andmap
             (lambda (_%bind123911%_)
               (let* ((_%e123912123922%_ _%bind123911%_)
                      (_%E123914123926%_ (lambda () '#f))
                      (_%E123913123948%_
                       (lambda ()
                         (if (gx#stx-pair? _%e123912123922%_)
                             (let ((_%e123915123930%_
                                    (gx#syntax-e _%e123912123922%_)))
                               (let ((_%hd123916123933%_
                                      (##car _%e123915123930%_))
                                     (_%tl123917123935%_
                                      (##cdr _%e123915123930%_)))
                                 (let ((_%hd123938%_ _%hd123916123933%_))
                                   (if (gx#stx-pair? _%tl123917123935%_)
                                       (let ((_%e123918123940%_
                                              (gx#syntax-e
                                               _%tl123917123935%_)))
                                         (let ((_%hd123919123943%_
                                                (##car _%e123918123940%_))
                                               (_%tl123920123945%_
                                                (##cdr _%e123918123940%_)))
                                           (if (gx#stx-null?
                                                _%tl123920123945%_)
                                               (gx#core-bind-values?
                                                _%hd123938%_)
                                               (_%E123914123926%_))))
                                       (_%E123914123926%_)))))
                             (_%E123914123926%_)))))
                 (_%E123913123948%_)))
             _%stx123909%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind123868%_)
        (let* ((_%e123869123879%_ _%bind123868%_)
               (_%E123871123883%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123869123879%_)))
               (_%E123870123905%_
                (lambda ()
                  (if (gx#stx-pair? _%e123869123879%_)
                      (let ((_%e123872123887%_
                             (gx#syntax-e _%e123869123879%_)))
                        (let ((_%hd123873123890%_ (##car _%e123872123887%_))
                              (_%tl123874123892%_ (##cdr _%e123872123887%_)))
                          (if (gx#stx-pair? _%tl123874123892%_)
                              (let ((_%e123875123895%_
                                     (gx#syntax-e _%tl123874123892%_)))
                                (let ((_%hd123876123898%_
                                       (##car _%e123875123895%_))
                                      (_%tl123877123900%_
                                       (##cdr _%e123875123895%_)))
                                  (let ((_%expr123903%_ _%hd123876123898%_))
                                    (if (gx#stx-null? _%tl123877123900%_)
                                        (gx#core-expand-expression
                                         _%expr123903%_)
                                        (_%E123871123883%_)))))
                              (_%E123871123883%_))))
                      (_%E123871123883%_)))))
          (_%E123870123905%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind123827%_)
        (let* ((_%e123828123838%_ _%bind123827%_)
               (_%E123830123842%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123828123838%_)))
               (_%E123829123864%_
                (lambda ()
                  (if (gx#stx-pair? _%e123828123838%_)
                      (let ((_%e123831123846%_
                             (gx#syntax-e _%e123828123838%_)))
                        (let ((_%hd123832123849%_ (##car _%e123831123846%_))
                              (_%tl123833123851%_ (##cdr _%e123831123846%_)))
                          (let ((_%hd123854%_ _%hd123832123849%_))
                            (if (gx#stx-pair? _%tl123833123851%_)
                                (let ((_%e123834123856%_
                                       (gx#syntax-e _%tl123833123851%_)))
                                  (let ((_%hd123835123859%_
                                         (##car _%e123834123856%_))
                                        (_%tl123836123861%_
                                         (##cdr _%e123834123856%_)))
                                    (if (gx#stx-null? _%tl123836123861%_)
                                        (gx#core-bind-values!__0 _%hd123854%_)
                                        (_%E123830123842%_))))
                                (_%E123830123842%_)))))
                      (_%E123830123842%_)))))
          (_%E123829123864%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind123785%_ _%expr123786%_)
        (let* ((_%e123787123797%_ _%bind123785%_)
               (_%E123789123801%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123787123797%_)))
               (_%E123788123823%_
                (lambda ()
                  (if (gx#stx-pair? _%e123787123797%_)
                      (let ((_%e123790123805%_
                             (gx#syntax-e _%e123787123797%_)))
                        (let ((_%hd123791123808%_ (##car _%e123790123805%_))
                              (_%tl123792123810%_ (##cdr _%e123790123805%_)))
                          (let ((_%hd123813%_ _%hd123791123808%_))
                            (if (gx#stx-pair? _%tl123792123810%_)
                                (let ((_%e123793123815%_
                                       (gx#syntax-e _%tl123792123810%_)))
                                  (let ((_%hd123794123818%_
                                         (##car _%e123793123815%_))
                                        (_%tl123795123820%_
                                         (##cdr _%e123793123815%_)))
                                    (if (gx#stx-null? _%tl123795123820%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd123813%_)
                                              (cons _%expr123786%_ '()))
                                        (_%E123789123801%_))))
                                (_%E123789123801%_)))))
                      (_%E123789123801%_)))))
          (_%E123788123823%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx123739%_)
        (let* ((_%e123740123750%_ _%stx123739%_)
               (_%E123742123754%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123740123750%_)))
               (_%E123741123781%_
                (lambda ()
                  (if (gx#stx-pair? _%e123740123750%_)
                      (let ((_%e123743123758%_
                             (gx#syntax-e _%e123740123750%_)))
                        (let ((_%hd123744123761%_ (##car _%e123743123758%_))
                              (_%tl123745123763%_ (##cdr _%e123743123758%_)))
                          (if (gx#stx-pair? _%tl123745123763%_)
                              (let ((_%e123746123766%_
                                     (gx#syntax-e _%tl123745123763%_)))
                                (let ((_%hd123747123769%_
                                       (##car _%e123746123766%_))
                                      (_%tl123748123771%_
                                       (##cdr _%e123746123766%_)))
                                  (let* ((_%hd123774%_ _%hd123747123769%_)
                                         (_%body123776%_ _%tl123748123771%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd123774%_)
                                        (let ((_%expanders123778%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd123774%_)))
                                          (__call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd123774%_
                                              _%expanders123778%_)
                                             (gx#core-expand-local-block
                                              _%stx123739%_
                                              _%body123776%_))
                                           gx#current-expander-context
                                           (let ((__obj125160
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj125160)
                                             __obj125160)))
                                        (_%E123742123754%_)))))
                              (_%E123742123754%_))))
                      (_%E123742123754%_)))))
          (_%E123741123781%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx123688%_)
        (let* ((_%e123689123699%_ _%stx123688%_)
               (_%E123691123703%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123689123699%_)))
               (_%E123690123735%_
                (lambda ()
                  (if (gx#stx-pair? _%e123689123699%_)
                      (let ((_%e123692123707%_
                             (gx#syntax-e _%e123689123699%_)))
                        (let ((_%hd123693123710%_ (##car _%e123692123707%_))
                              (_%tl123694123712%_ (##cdr _%e123692123707%_)))
                          (if (gx#stx-pair? _%tl123694123712%_)
                              (let ((_%e123695123715%_
                                     (gx#syntax-e _%tl123694123712%_)))
                                (let ((_%hd123696123718%_
                                       (##car _%e123695123715%_))
                                      (_%tl123697123720%_
                                       (##cdr _%e123695123715%_)))
                                  (let* ((_%hd123723%_ _%hd123696123718%_)
                                         (_%body123725%_ _%tl123697123720%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd123723%_)
                                        (__call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd123723%_
                                            (make-list
                                             (gx#stx-length _%hd123723%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%g123727123730%_
                                                     _%g123728123732%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%g123727123730%_
                                               _%g123728123732%_
                                               '#t))
                                            _%hd123723%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd123723%_))
                                           (gx#core-expand-local-block
                                            _%stx123688%_
                                            _%body123725%_))
                                         gx#current-expander-context
                                         (let ((__obj125161
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj125161)
                                           __obj125161))
                                        (_%E123691123703%_)))))
                              (_%E123691123703%_))))
                      (_%E123691123703%_)))))
          (_%E123690123735%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx123645%_)
        (if (gx#stx-list? _%stx123645%_)
            (gx#stx-andmap
             (lambda (_%bind123647%_)
               (let* ((_%e123648123658%_ _%bind123647%_)
                      (_%E123650123662%_ (lambda () '#f))
                      (_%E123649123684%_
                       (lambda ()
                         (if (gx#stx-pair? _%e123648123658%_)
                             (let ((_%e123651123666%_
                                    (gx#syntax-e _%e123648123658%_)))
                               (let ((_%hd123652123669%_
                                      (##car _%e123651123666%_))
                                     (_%tl123653123671%_
                                      (##cdr _%e123651123666%_)))
                                 (let ((_%hd123674%_ _%hd123652123669%_))
                                   (if (gx#stx-pair? _%tl123653123671%_)
                                       (let ((_%e123654123676%_
                                              (gx#syntax-e
                                               _%tl123653123671%_)))
                                         (let ((_%hd123655123679%_
                                                (##car _%e123654123676%_))
                                               (_%tl123656123681%_
                                                (##cdr _%e123654123676%_)))
                                           (if (gx#stx-null?
                                                _%tl123656123681%_)
                                               (gx#identifier? _%hd123674%_)
                                               (_%E123650123662%_))))
                                       (_%E123650123662%_)))))
                             (_%E123650123662%_)))))
                 (_%E123649123684%_)))
             _%stx123645%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind123601%_)
        (let* ((_%e123602123612%_ _%bind123601%_)
               (_%E123604123616%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123602123612%_)))
               (_%E123603123641%_
                (lambda ()
                  (if (gx#stx-pair? _%e123602123612%_)
                      (let ((_%e123605123620%_
                             (gx#syntax-e _%e123602123612%_)))
                        (let ((_%hd123606123623%_ (##car _%e123605123620%_))
                              (_%tl123607123625%_ (##cdr _%e123605123620%_)))
                          (if (gx#stx-pair? _%tl123607123625%_)
                              (let ((_%e123608123628%_
                                     (gx#syntax-e _%tl123607123625%_)))
                                (let ((_%hd123609123631%_
                                       (##car _%e123608123628%_))
                                      (_%tl123610123633%_
                                       (##cdr _%e123608123628%_)))
                                  (let ((_%expr123636%_ _%hd123609123631%_))
                                    (if (gx#stx-null? _%tl123610123633%_)
                                        (let ((_g125170_
                                               (gx#core-expand-expression+1
                                                _%expr123636%_)))
                                          (begin
                                            (let ((_g125171_
                                                   (if (##values? _g125170_)
                                                       (##vector-length
                                                        _g125170_)
                                                       1)))
                                              (if (not (##fx= _g125171_ 2))
                                                  (error "Context expects 2 values"
                                                         _g125171_)))
                                            (let ((_%_123638%_
                                                   (##vector-ref _g125170_ 0))
                                                  (_%e123639%_
                                                   (##vector-ref _g125170_ 1)))
                                              _%e123639%_)))
                                        (_%E123604123616%_)))))
                              (_%E123604123616%_))))
                      (_%E123604123616%_)))))
          (_%E123603123641%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind123546%_ _%e123547%_ _%rebind?123548%_)
        (let* ((_%e123549123559%_ _%bind123546%_)
               (_%E123551123563%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123549123559%_)))
               (_%E123550123585%_
                (lambda ()
                  (if (gx#stx-pair? _%e123549123559%_)
                      (let ((_%e123552123567%_
                             (gx#syntax-e _%e123549123559%_)))
                        (let ((_%hd123553123570%_ (##car _%e123552123567%_))
                              (_%tl123554123572%_ (##cdr _%e123552123567%_)))
                          (let ((_%id123575%_ _%hd123553123570%_))
                            (if (gx#stx-pair? _%tl123554123572%_)
                                (let ((_%e123555123577%_
                                       (gx#syntax-e _%tl123554123572%_)))
                                  (let ((_%hd123556123580%_
                                         (##car _%e123555123577%_))
                                        (_%tl123557123582%_
                                         (##cdr _%e123555123577%_)))
                                    (if (gx#stx-null? _%tl123557123582%_)
                                        (gx#core-bind-syntax!__1
                                         _%id123575%_
                                         _%e123547%_
                                         _%rebind?123548%_)
                                        (_%E123551123563%_))))
                                (_%E123551123563%_)))))
                      (_%E123551123563%_)))))
          (_%E123550123585%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind123592%_ _%e123593%_)
        (let ((_%rebind?123595%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind123592%_
           _%e123593%_
           _%rebind?123595%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g125173_
        (let ((_g125172_ (##length _g125173_)))
          (cond ((##fx= _g125172_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g125173_))
                ((##fx= _g125172_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g125173_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g125173_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx123504%_)
        (let* ((_%e123505123515%_ _%stx123504%_)
               (_%E123507123519%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123505123515%_)))
               (_%E123506123541%_
                (lambda ()
                  (if (gx#stx-pair? _%e123505123515%_)
                      (let ((_%e123508123523%_
                             (gx#syntax-e _%e123505123515%_)))
                        (let ((_%hd123509123526%_ (##car _%e123508123523%_))
                              (_%tl123510123528%_ (##cdr _%e123508123523%_)))
                          (if (gx#stx-pair? _%tl123510123528%_)
                              (let ((_%e123511123531%_
                                     (gx#syntax-e _%tl123510123528%_)))
                                (let ((_%hd123512123534%_
                                       (##car _%e123511123531%_))
                                      (_%tl123513123536%_
                                       (##cdr _%e123511123531%_)))
                                  (let ((_%expr123539%_ _%hd123512123534%_))
                                    (if (gx#stx-null? _%tl123513123536%_)
                                        (gx#core-expand-expression
                                         _%expr123539%_)
                                        (_%E123507123519%_)))))
                              (_%E123507123519%_))))
                      (_%E123507123519%_)))))
          (_%E123506123541%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx123463%_)
        (let* ((_%e123464123474%_ _%stx123463%_)
               (_%E123466123478%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123464123474%_)))
               (_%E123465123500%_
                (lambda ()
                  (if (gx#stx-pair? _%e123464123474%_)
                      (let ((_%e123467123482%_
                             (gx#syntax-e _%e123464123474%_)))
                        (let ((_%hd123468123485%_ (##car _%e123467123482%_))
                              (_%tl123469123487%_ (##cdr _%e123467123482%_)))
                          (if (gx#stx-pair? _%tl123469123487%_)
                              (let ((_%e123470123490%_
                                     (gx#syntax-e _%tl123469123487%_)))
                                (let ((_%hd123471123493%_
                                       (##car _%e123470123490%_))
                                      (_%tl123472123495%_
                                       (##cdr _%e123470123490%_)))
                                  (let ((_%e123498%_ _%hd123471123493%_))
                                    (if (gx#stx-null? _%tl123472123495%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e123498%_)
                                                     '()))
                                         (gx#stx-source _%stx123463%_))
                                        (_%E123466123478%_)))))
                              (_%E123466123478%_))))
                      (_%E123466123478%_)))))
          (_%E123465123500%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx123422%_)
        (let* ((_%e123423123433%_ _%stx123422%_)
               (_%E123425123437%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123423123433%_)))
               (_%E123424123459%_
                (lambda ()
                  (if (gx#stx-pair? _%e123423123433%_)
                      (let ((_%e123426123441%_
                             (gx#syntax-e _%e123423123433%_)))
                        (let ((_%hd123427123444%_ (##car _%e123426123441%_))
                              (_%tl123428123446%_ (##cdr _%e123426123441%_)))
                          (if (gx#stx-pair? _%tl123428123446%_)
                              (let ((_%e123429123449%_
                                     (gx#syntax-e _%tl123428123446%_)))
                                (let ((_%hd123430123452%_
                                       (##car _%e123429123449%_))
                                      (_%tl123431123454%_
                                       (##cdr _%e123429123449%_)))
                                  (let ((_%e123457%_ _%hd123430123452%_))
                                    (if (gx#stx-null? _%tl123431123454%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e123457%_)
                                                     '()))
                                         (gx#stx-source _%stx123422%_))
                                        (_%E123425123437%_)))))
                              (_%E123425123437%_))))
                      (_%E123425123437%_)))))
          (_%E123424123459%_))))
    (define gx#core-expand-call%
      (lambda (_%stx123379%_)
        (let* ((_%e123380123390%_ _%stx123379%_)
               (_%E123382123394%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123380123390%_)))
               (_%E123381123418%_
                (lambda ()
                  (if (gx#stx-pair? _%e123380123390%_)
                      (let ((_%e123383123398%_
                             (gx#syntax-e _%e123380123390%_)))
                        (let ((_%hd123384123401%_ (##car _%e123383123398%_))
                              (_%tl123385123403%_ (##cdr _%e123383123398%_)))
                          (if (gx#stx-pair? _%tl123385123403%_)
                              (let ((_%e123386123406%_
                                     (gx#syntax-e _%tl123385123403%_)))
                                (let ((_%hd123387123409%_
                                       (##car _%e123386123406%_))
                                      (_%tl123388123411%_
                                       (##cdr _%e123386123406%_)))
                                  (let* ((_%rator123414%_ _%hd123387123409%_)
                                         (_%args123416%_ _%tl123388123411%_))
                                    (if (gx#stx-list? _%args123416%_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _%rator123414%_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _%args123416%_))
                                         (gx#stx-source _%stx123379%_))
                                        (_%E123382123394%_)))))
                              (_%E123382123394%_))))
                      (_%E123382123394%_)))))
          (_%E123381123418%_))))
    (define gx#core-expand-if%
      (lambda (_%stx123312%_)
        (let* ((_%e123313123329%_ _%stx123312%_)
               (_%E123315123333%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123313123329%_)))
               (_%E123314123375%_
                (lambda ()
                  (if (gx#stx-pair? _%e123313123329%_)
                      (let ((_%e123316123337%_
                             (gx#syntax-e _%e123313123329%_)))
                        (let ((_%hd123317123340%_ (##car _%e123316123337%_))
                              (_%tl123318123342%_ (##cdr _%e123316123337%_)))
                          (if (gx#stx-pair? _%tl123318123342%_)
                              (let ((_%e123319123345%_
                                     (gx#syntax-e _%tl123318123342%_)))
                                (let ((_%hd123320123348%_
                                       (##car _%e123319123345%_))
                                      (_%tl123321123350%_
                                       (##cdr _%e123319123345%_)))
                                  (let ((_%test123353%_ _%hd123320123348%_))
                                    (if (gx#stx-pair? _%tl123321123350%_)
                                        (let ((_%e123322123355%_
                                               (gx#syntax-e
                                                _%tl123321123350%_)))
                                          (let ((_%hd123323123358%_
                                                 (##car _%e123322123355%_))
                                                (_%tl123324123360%_
                                                 (##cdr _%e123322123355%_)))
                                            (let ((_%K123363%_
                                                   _%hd123323123358%_))
                                              (if (gx#stx-pair?
                                                   _%tl123324123360%_)
                                                  (let ((_%e123325123365%_
                                                         (gx#syntax-e
                                                          _%tl123324123360%_)))
                                                    (let ((_%hd123326123368%_
                                                           (##car _%e123325123365%_))
                                                          (_%tl123327123370%_
                                                           (##cdr _%e123325123365%_)))
                                                      (let ((_%E123373%_
                                                             _%hd123326123368%_))
                                                        (if (gx#stx-null?
                                                             _%tl123327123370%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test123353%_)
                                 (cons (gx#core-expand-expression _%K123363%_)
                                       (cons (gx#core-expand-expression
                                              _%E123373%_)
                                             '()))))
                     (gx#stx-source _%stx123312%_))
                    (_%E123315123333%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123315123333%_)))))
                                        (_%E123315123333%_)))))
                              (_%E123315123333%_))))
                      (_%E123315123333%_)))))
          (_%E123314123375%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx123271%_)
        (let* ((_%e123272123282%_ _%stx123271%_)
               (_%E123274123286%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123272123282%_)))
               (_%E123273123308%_
                (lambda ()
                  (if (gx#stx-pair? _%e123272123282%_)
                      (let ((_%e123275123290%_
                             (gx#syntax-e _%e123272123282%_)))
                        (let ((_%hd123276123293%_ (##car _%e123275123290%_))
                              (_%tl123277123295%_ (##cdr _%e123275123290%_)))
                          (if (gx#stx-pair? _%tl123277123295%_)
                              (let ((_%e123278123298%_
                                     (gx#syntax-e _%tl123277123295%_)))
                                (let ((_%hd123279123301%_
                                       (##car _%e123278123298%_))
                                      (_%tl123280123303%_
                                       (##cdr _%e123278123298%_)))
                                  (let ((_%id123306%_ _%hd123279123301%_))
                                    (if (gx#stx-null? _%tl123280123303%_)
                                        (if (gx#identifier? _%id123306%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id123306%_
                                                          _%stx123271%_)
                                                         '()))
                                             (gx#stx-source _%stx123271%_))
                                            (_%E123274123286%_))
                                        (_%E123274123286%_)))))
                              (_%E123274123286%_))))
                      (_%E123274123286%_)))))
          (_%E123273123308%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx123217%_)
        (let* ((_%e123218123231%_ _%stx123217%_)
               (_%E123220123235%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123218123231%_)))
               (_%E123219123267%_
                (lambda ()
                  (if (gx#stx-pair? _%e123218123231%_)
                      (let ((_%e123221123239%_
                             (gx#syntax-e _%e123218123231%_)))
                        (let ((_%hd123222123242%_ (##car _%e123221123239%_))
                              (_%tl123223123244%_ (##cdr _%e123221123239%_)))
                          (if (gx#stx-pair? _%tl123223123244%_)
                              (let ((_%e123224123247%_
                                     (gx#syntax-e _%tl123223123244%_)))
                                (let ((_%hd123225123250%_
                                       (##car _%e123224123247%_))
                                      (_%tl123226123252%_
                                       (##cdr _%e123224123247%_)))
                                  (let ((_%id123255%_ _%hd123225123250%_))
                                    (if (gx#stx-pair? _%tl123226123252%_)
                                        (let ((_%e123227123257%_
                                               (gx#syntax-e
                                                _%tl123226123252%_)))
                                          (let ((_%hd123228123260%_
                                                 (##car _%e123227123257%_))
                                                (_%tl123229123262%_
                                                 (##cdr _%e123227123257%_)))
                                            (let ((_%expr123265%_
                                                   _%hd123228123260%_))
                                              (if (gx#stx-null?
                                                   _%tl123229123262%_)
                                                  (if (gx#identifier?
                                                       _%id123255%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id123255%_
                            _%stx123217%_)
                           (cons (gx#core-expand-expression _%expr123265%_)
                                 '())))
               (gx#stx-source _%stx123217%_))
              (_%E123220123235%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123220123235%_)))))
                                        (_%E123220123235%_)))))
                              (_%E123220123235%_))))
                      (_%E123220123235%_)))))
          (_%E123219123267%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx123062%_)
        (letrec ((_%generate123064%_
                  (lambda (_%body123094%_)
                    (let _%lp123096%_ ((_%rest123098%_ _%body123094%_)
                                       (_%ns123099%_
                                        (gx#core-context-namespace__0))
                                       (_%r123100%_ '()))
                      (let* ((_%e123101123116%_ _%rest123098%_)
                             (_%E123114123120%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%e123101123116%_)))
                             (_%E123110123124%_
                              (lambda ()
                                (if (gx#stx-null? _%e123101123116%_)
                                    (reverse _%r123100%_)
                                    (_%E123114123120%_))))
                             (_%E123103123181%_
                              (lambda ()
                                (if (gx#stx-pair? _%e123101123116%_)
                                    (let ((_%e123111123128%_
                                           (gx#syntax-e _%e123101123116%_)))
                                      (let ((_%hd123112123131%_
                                             (##car _%e123111123128%_))
                                            (_%tl123113123133%_
                                             (##cdr _%e123111123128%_)))
                                        (let* ((_%hd123136%_
                                                _%hd123112123131%_)
                                               (_%rest123138%_
                                                _%tl123113123133%_))
                                          (if (gx#identifier? _%hd123136%_)
                                              (_%lp123096%_
                                               _%rest123138%_
                                               _%ns123099%_
                                               (cons (cons _%hd123136%_
                                                           (cons (if _%ns123099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd123136%_
                              _%ns123099%_
                              '"#"
                              _%hd123136%_)
                             _%hd123136%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r123100%_))
                                              (let* ((_%e123139123149%_
                                                      _%hd123136%_)
                                                     (_%E123141123153%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%e123139123149%_)))
                                                     (_%E123140123177%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%e123139123149%_)
                                                            (let ((_%e123142123157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%e123139123149%_)))
                      (let ((_%hd123143123160%_ (##car _%e123142123157%_))
                            (_%tl123144123162%_ (##cdr _%e123142123157%_)))
                        (let ((_%id123165%_ _%hd123143123160%_))
                          (if (gx#stx-pair? _%tl123144123162%_)
                              (let ((_%e123145123167%_
                                     (gx#syntax-e _%tl123144123162%_)))
                                (let ((_%hd123146123170%_
                                       (##car _%e123145123167%_))
                                      (_%tl123147123172%_
                                       (##cdr _%e123145123167%_)))
                                  (let ((_%eid123175%_ _%hd123146123170%_))
                                    (if (gx#stx-null? _%tl123147123172%_)
                                        (if (and (gx#identifier? _%id123165%_)
                                                 (gx#identifier?
                                                  _%eid123175%_))
                                            (_%lp123096%_
                                             _%rest123138%_
                                             _%ns123099%_
                                             (cons (cons _%id123165%_
                                                         (cons _%eid123175%_
                                                               '()))
                                                   _%r123100%_))
                                            (_%E123141123153%_))
                                        (_%E123141123153%_)))))
                              (_%E123141123153%_)))))
                    (_%E123141123153%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E123140123177%_))))))
                                    (_%E123110123124%_))))
                             (_%E123102123213%_
                              (lambda ()
                                (if (gx#stx-pair? _%e123101123116%_)
                                    (let ((_%e123104123185%_
                                           (gx#syntax-e _%e123101123116%_)))
                                      (let ((_%hd123105123188%_
                                             (##car _%e123104123185%_))
                                            (_%tl123106123190%_
                                             (##cdr _%e123104123185%_)))
                                        (if (eq? (gx#stx-e _%hd123105123188%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%tl123106123190%_)
                                                (let ((_%e123107123193%_
                                                       (gx#syntax-e
                                                        _%tl123106123190%_)))
                                                  (let ((_%hd123108123196%_
                                                         (##car _%e123107123193%_))
                                                        (_%tl123109123198%_
                                                         (##cdr _%e123107123193%_)))
                                                    (let* ((_%ns123201%_
                                                            _%hd123108123196%_)
                                                           (_%rest123203%_
                                                            _%tl123109123198%_)
                                                           (_%ns123211%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns123201%_)
                        (symbol->string (gx#stx-e _%ns123201%_))
                        (if (or (gx#stx-string? _%ns123201%_)
                                (gx#stx-false? _%ns123201%_))
                            (gx#stx-e _%ns123201%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx123062%_
                             _%ns123201%_)))))
              (_%lp123096%_ _%rest123203%_ _%ns123211%_ _%r123100%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E123103123181%_))
                                            (_%E123103123181%_))))
                                    (_%E123103123181%_)))))
                        (_%E123102123213%_))))))
          (let* ((_%e123065123072%_ _%stx123062%_)
                 (_%E123067123076%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e123065123072%_)))
                 (_%E123066123090%_
                  (lambda ()
                    (if (gx#stx-pair? _%e123065123072%_)
                        (let ((_%e123068123080%_
                               (gx#syntax-e _%e123065123072%_)))
                          (let ((_%hd123069123083%_ (##car _%e123068123080%_))
                                (_%tl123070123085%_ (##cdr _%e123068123080%_)))
                            (let ((_%body123088%_ _%tl123070123085%_))
                              (if (gx#stx-list? _%body123088%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate123064%_ _%body123088%_))
                                  (_%E123067123076%_)))))
                        (_%E123067123076%_)))))
            (_%E123066123090%_)))))
    (define gx#macro-expand-define-values
      (lambda (_%stx123008%_)
        (let* ((_%e123009123022%_ _%stx123008%_)
               (_%E123011123026%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e123009123022%_)))
               (_%E123010123058%_
                (lambda ()
                  (if (gx#stx-pair? _%e123009123022%_)
                      (let ((_%e123012123030%_
                             (gx#syntax-e _%e123009123022%_)))
                        (let ((_%hd123013123033%_ (##car _%e123012123030%_))
                              (_%tl123014123035%_ (##cdr _%e123012123030%_)))
                          (if (gx#stx-pair? _%tl123014123035%_)
                              (let ((_%e123015123038%_
                                     (gx#syntax-e _%tl123014123035%_)))
                                (let ((_%hd123016123041%_
                                       (##car _%e123015123038%_))
                                      (_%tl123017123043%_
                                       (##cdr _%e123015123038%_)))
                                  (let ((_%hd123046%_ _%hd123016123041%_))
                                    (if (gx#stx-pair? _%tl123017123043%_)
                                        (let ((_%e123018123048%_
                                               (gx#syntax-e
                                                _%tl123017123043%_)))
                                          (let ((_%hd123019123051%_
                                                 (##car _%e123018123048%_))
                                                (_%tl123020123053%_
                                                 (##cdr _%e123018123048%_)))
                                            (let ((_%expr123056%_
                                                   _%hd123019123051%_))
                                              (if (gx#stx-null?
                                                   _%tl123020123053%_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _%hd123046%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           identity
                           _%hd123046%_)
                          (cons _%expr123056%_ '())))
              (_%E123011123026%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E123011123026%_)))))
                                        (_%E123011123026%_)))))
                              (_%E123011123026%_))))
                      (_%E123011123026%_)))))
          (_%E123010123058%_))))
    (define gx#macro-expand-define-syntax
      (lambda (_%stx122954%_)
        (let* ((_%e122955122968%_ _%stx122954%_)
               (_%E122957122972%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122955122968%_)))
               (_%E122956123004%_
                (lambda ()
                  (if (gx#stx-pair? _%e122955122968%_)
                      (let ((_%e122958122976%_
                             (gx#syntax-e _%e122955122968%_)))
                        (let ((_%hd122959122979%_ (##car _%e122958122976%_))
                              (_%tl122960122981%_ (##cdr _%e122958122976%_)))
                          (if (gx#stx-pair? _%tl122960122981%_)
                              (let ((_%e122961122984%_
                                     (gx#syntax-e _%tl122960122981%_)))
                                (let ((_%hd122962122987%_
                                       (##car _%e122961122984%_))
                                      (_%tl122963122989%_
                                       (##cdr _%e122961122984%_)))
                                  (let ((_%hd122992%_ _%hd122962122987%_))
                                    (if (gx#stx-pair? _%tl122963122989%_)
                                        (let ((_%e122964122994%_
                                               (gx#syntax-e
                                                _%tl122963122989%_)))
                                          (let ((_%hd122965122997%_
                                                 (##car _%e122964122994%_))
                                                (_%tl122966122999%_
                                                 (##cdr _%e122964122994%_)))
                                            (let ((_%expr123002%_
                                                   _%hd122965122997%_))
                                              (if (gx#stx-null?
                                                   _%tl122966122999%_)
                                                  (if (gx#identifier?
                                                       _%hd122992%_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _%hd122992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr123002%_ '())))
              (_%E122957122972%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122957122972%_)))))
                                        (_%E122957122972%_)))))
                              (_%E122957122972%_))))
                      (_%E122957122972%_)))))
          (_%E122956123004%_))))
    (define gx#macro-expand-define-alias
      (lambda (_%stx122900%_)
        (let* ((_%e122901122914%_ _%stx122900%_)
               (_%E122903122918%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122901122914%_)))
               (_%E122902122950%_
                (lambda ()
                  (if (gx#stx-pair? _%e122901122914%_)
                      (let ((_%e122904122922%_
                             (gx#syntax-e _%e122901122914%_)))
                        (let ((_%hd122905122925%_ (##car _%e122904122922%_))
                              (_%tl122906122927%_ (##cdr _%e122904122922%_)))
                          (if (gx#stx-pair? _%tl122906122927%_)
                              (let ((_%e122907122930%_
                                     (gx#syntax-e _%tl122906122927%_)))
                                (let ((_%hd122908122933%_
                                       (##car _%e122907122930%_))
                                      (_%tl122909122935%_
                                       (##cdr _%e122907122930%_)))
                                  (let ((_%id122938%_ _%hd122908122933%_))
                                    (if (gx#stx-pair? _%tl122909122935%_)
                                        (let ((_%e122910122940%_
                                               (gx#syntax-e
                                                _%tl122909122935%_)))
                                          (let ((_%hd122911122943%_
                                                 (##car _%e122910122940%_))
                                                (_%tl122912122945%_
                                                 (##cdr _%e122910122940%_)))
                                            (let ((_%alias-id122948%_
                                                   _%hd122911122943%_))
                                              (if (gx#stx-null?
                                                   _%tl122912122945%_)
                                                  (if (and (gx#identifier?
                                                            _%id122938%_)
                                                           (gx#identifier?
                                                            _%alias-id122948%_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _%id122938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%alias-id122948%_ '())))
              (_%E122903122918%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E122903122918%_)))))
                                        (_%E122903122918%_)))))
                              (_%E122903122918%_))))
                      (_%E122903122918%_)))))
          (_%E122902122950%_))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx122857%_)
        (let* ((_%e122858122868%_ _%stx122857%_)
               (_%E122860122872%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122858122868%_)))
               (_%E122859122896%_
                (lambda ()
                  (if (gx#stx-pair? _%e122858122868%_)
                      (let ((_%e122861122876%_
                             (gx#syntax-e _%e122858122868%_)))
                        (let ((_%hd122862122879%_ (##car _%e122861122876%_))
                              (_%tl122863122881%_ (##cdr _%e122861122876%_)))
                          (if (gx#stx-pair? _%tl122863122881%_)
                              (let ((_%e122864122884%_
                                     (gx#syntax-e _%tl122863122881%_)))
                                (let ((_%hd122865122887%_
                                       (##car _%e122864122884%_))
                                      (_%tl122866122889%_
                                       (##cdr _%e122864122884%_)))
                                  (let* ((_%hd122892%_ _%hd122865122887%_)
                                         (_%body122894%_ _%tl122866122889%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd122892%_)
                                             (gx#stx-list? _%body122894%_)
                                             (not (gx#stx-null?
                                                   _%body122894%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd122892%_)
                                         _%body122894%_)
                                        (_%E122860122872%_)))))
                              (_%E122860122872%_))))
                      (_%E122860122872%_)))))
          (_%E122859122896%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx122793%_)
        (letrec ((_%generate122795%_
                  (lambda (_%clause122825%_)
                    (let* ((_%e122826122833%_ _%clause122825%_)
                           (_%E122828122837%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx122793%_
                               _%clause122825%_)))
                           (_%E122827122853%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122826122833%_)
                                  (let ((_%e122829122841%_
                                         (gx#syntax-e _%e122826122833%_)))
                                    (let ((_%hd122830122844%_
                                           (##car _%e122829122841%_))
                                          (_%tl122831122846%_
                                           (##cdr _%e122829122841%_)))
                                      (let* ((_%hd122849%_ _%hd122830122844%_)
                                             (_%body122851%_
                                              _%tl122831122846%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd122849%_)
                                                 (gx#stx-list? _%body122851%_)
                                                 (not (gx#stx-null?
                                                       _%body122851%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd122849%_)
                                                   _%body122851%_)
                                             (gx#stx-source _%clause122825%_))
                                            (_%E122828122837%_)))))
                                  (_%E122828122837%_)))))
                      (_%E122827122853%_)))))
          (let* ((_%e122796122803%_ _%stx122793%_)
                 (_%E122798122807%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122796122803%_)))
                 (_%E122797122821%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122796122803%_)
                        (let ((_%e122799122811%_
                               (gx#syntax-e _%e122796122803%_)))
                          (let ((_%hd122800122814%_ (##car _%e122799122811%_))
                                (_%tl122801122816%_ (##cdr _%e122799122811%_)))
                            (let ((_%clauses122819%_ _%tl122801122816%_))
                              (if (gx#stx-list? _%clauses122819%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate122795%_
                                    _%clauses122819%_))
                                  (_%E122798122807%_)))))
                        (_%E122798122807%_)))))
            (_%E122797122821%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx122694%_ _%form122695%_)
        (letrec ((_%generate122697%_
                  (lambda (_%bind122740%_)
                    (let* ((_%e122741122751%_ _%bind122740%_)
                           (_%E122743122755%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx122694%_
                               _%bind122740%_)))
                           (_%E122742122779%_
                            (lambda ()
                              (if (gx#stx-pair? _%e122741122751%_)
                                  (let ((_%e122744122759%_
                                         (gx#syntax-e _%e122741122751%_)))
                                    (let ((_%hd122745122762%_
                                           (##car _%e122744122759%_))
                                          (_%tl122746122764%_
                                           (##cdr _%e122744122759%_)))
                                      (let ((_%ids122767%_ _%hd122745122762%_))
                                        (if (gx#stx-pair? _%tl122746122764%_)
                                            (let ((_%e122747122769%_
                                                   (gx#syntax-e
                                                    _%tl122746122764%_)))
                                              (let ((_%hd122748122772%_
                                                     (##car _%e122747122769%_))
                                                    (_%tl122749122774%_
                                                     (##cdr _%e122747122769%_)))
                                                (let ((_%expr122777%_
                                                       _%hd122748122772%_))
                                                  (if (gx#stx-null?
                                                       _%tl122749122774%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids122767%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids122767%_)
                        (cons _%expr122777%_ '()))
                  (_%E122743122755%_))
              (_%E122743122755%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%E122743122755%_)))))
                                  (_%E122743122755%_)))))
                      (_%E122742122779%_)))))
          (let* ((_%e122698122708%_ _%stx122694%_)
                 (_%E122700122712%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%e122698122708%_)))
                 (_%E122699122736%_
                  (lambda ()
                    (if (gx#stx-pair? _%e122698122708%_)
                        (let ((_%e122701122716%_
                               (gx#syntax-e _%e122698122708%_)))
                          (let ((_%hd122702122719%_ (##car _%e122701122716%_))
                                (_%tl122703122721%_ (##cdr _%e122701122716%_)))
                            (if (gx#stx-pair? _%tl122703122721%_)
                                (let ((_%e122704122724%_
                                       (gx#syntax-e _%tl122703122721%_)))
                                  (let ((_%hd122705122727%_
                                         (##car _%e122704122724%_))
                                        (_%tl122706122729%_
                                         (##cdr _%e122704122724%_)))
                                    (let* ((_%hd122732%_ _%hd122705122727%_)
                                           (_%body122734%_ _%tl122706122729%_))
                                      (if (and (gx#stx-list? _%hd122732%_)
                                               (gx#stx-list? _%body122734%_)
                                               (not (gx#stx-null?
                                                     _%body122734%_)))
                                          (gx#core-cons*
                                           _%form122695%_
                                           (gx#stx-map1
                                            _%generate122697%_
                                            _%hd122732%_)
                                           _%body122734%_)
                                          (_%E122700122712%_)))))
                                (_%E122700122712%_))))
                        (_%E122700122712%_)))))
            (_%E122699122736%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx122786%_)
        (let ((_%form122788%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx122786%_ _%form122788%_))))
    (define gx#macro-expand-let-values
      (lambda _g125175_
        (let ((_g125174_ (##length _g125175_)))
          (cond ((##fx= _g125174_ 1)
                 (apply gx#macro-expand-let-values__0 _g125175_))
                ((##fx= _g125174_ 2)
                 (apply gx#macro-expand-let-values__% _g125175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g125175_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx122691%_)
        (gx#macro-expand-let-values__% _%stx122691%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx122689%_)
        (gx#macro-expand-let-values__% _%stx122689%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx122580%_)
        (let* ((_%e122581122607%_ _%stx122580%_)
               (_%E122593122611%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e122581122607%_)))
               (_%E122583122653%_
                (lambda ()
                  (if (gx#stx-pair? _%e122581122607%_)
                      (let ((_%e122594122615%_
                             (gx#syntax-e _%e122581122607%_)))
                        (let ((_%hd122595122618%_ (##car _%e122594122615%_))
                              (_%tl122596122620%_ (##cdr _%e122594122615%_)))
                          (if (gx#stx-pair? _%tl122596122620%_)
                              (let ((_%e122597122623%_
                                     (gx#syntax-e _%tl122596122620%_)))
                                (let ((_%hd122598122626%_
                                       (##car _%e122597122623%_))
                                      (_%tl122599122628%_
                                       (##cdr _%e122597122623%_)))
                                  (let ((_%test122631%_ _%hd122598122626%_))
                                    (if (gx#stx-pair? _%tl122599122628%_)
                                        (let ((_%e122600122633%_
                                               (gx#syntax-e
                                                _%tl122599122628%_)))
                                          (let ((_%hd122601122636%_
                                                 (##car _%e122600122633%_))
                                                (_%tl122602122638%_
                                                 (##cdr _%e122600122633%_)))
                                            (let ((_%K122641%_
                                                   _%hd122601122636%_))
                                              (if (gx#stx-pair?
                                                   _%tl122602122638%_)
                                                  (let ((_%e122603122643%_
                                                         (gx#syntax-e
                                                          _%tl122602122638%_)))
                                                    (let ((_%hd122604122646%_
                                                           (##car _%e122603122643%_))
                                                          (_%tl122605122648%_
                                                           (##cdr _%e122603122643%_)))
                                                      (let ((_%E122651%_
                                                             _%hd122604122646%_))
                                                        (if (gx#stx-null?
                                                             _%tl122605122648%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test122631%_
                                                             _%K122641%_
                                                             _%E122651%_)
                                                            (_%E122593122611%_)))))
                                                  (_%E122593122611%_)))))
                                        (_%E122593122611%_)))))
                              (_%E122593122611%_))))
                      (_%E122593122611%_))))
               (_%E122582122685%_
                (lambda ()
                  (if (gx#stx-pair? _%e122581122607%_)
                      (let ((_%e122584122657%_
                             (gx#syntax-e _%e122581122607%_)))
                        (let ((_%hd122585122660%_ (##car _%e122584122657%_))
                              (_%tl122586122662%_ (##cdr _%e122584122657%_)))
                          (if (gx#stx-pair? _%tl122586122662%_)
                              (let ((_%e122587122665%_
                                     (gx#syntax-e _%tl122586122662%_)))
                                (let ((_%hd122588122668%_
                                       (##car _%e122587122665%_))
                                      (_%tl122589122670%_
                                       (##cdr _%e122587122665%_)))
                                  (let ((_%test122673%_ _%hd122588122668%_))
                                    (if (gx#stx-pair? _%tl122589122670%_)
                                        (let ((_%e122590122675%_
                                               (gx#syntax-e
                                                _%tl122589122670%_)))
                                          (let ((_%hd122591122678%_
                                                 (##car _%e122590122675%_))
                                                (_%tl122592122680%_
                                                 (##cdr _%e122590122675%_)))
                                            (let ((_%K122683%_
                                                   _%hd122591122678%_))
                                              (if (gx#stx-null?
                                                   _%tl122592122680%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test122673%_
                                                   _%K122683%_
                                                   '#!void)
                                                  (_%E122583122653%_)))))
                                        (_%E122583122653%_)))))
                              (_%E122583122653%_))))
                      (_%E122583122653%_)))))
          (_%E122582122685%_))))
    (define gx#free-identifier=?
      (lambda (_%xid122565%_ _%yid122566%_)
        (let ((_%xe122568%_ (gx#resolve-identifier__0 _%xid122565%_))
              (_%ye122569%_ (gx#resolve-identifier__0 _%yid122566%_)))
          (if (and _%xe122568%_ _%ye122569%_)
              (let ((_%$e122572%_ (eq? _%xe122568%_ _%ye122569%_)))
                (if _%$e122572%_
                    _%$e122572%_
                    (if (##structure-instance-of? _%xe122568%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye122569%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe122568%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye122569%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe122568%_ _%ye122569%_)
                  '#f
                  (gx#stx-eq? _%xid122565%_ _%yid122566%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid122546%_ _%yid122547%_)
        (letrec ((_%context122549%_
                  (lambda (_%e122563%_)
                    (if (##structure-direct-instance-of?
                         _%e122563%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e122563%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks122550%_
                  (lambda (_%e122558%_)
                    (if (symbol? _%e122558%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e122558%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e122558%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e122558%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap122551%_
                  (lambda (_%e122556%_)
                    (if (symbol? _%e122556%_)
                        _%e122556%_
                        (gx#syntax-local-unwrap _%e122556%_)))))
          (let ((_%x122553%_ (_%unwrap122551%_ _%xid122546%_))
                (_%y122554%_ (_%unwrap122551%_ _%yid122547%_)))
            (if (gx#stx-eq? _%x122553%_ _%y122554%_)
                (if (eq? (_%context122549%_ _%x122553%_)
                         (_%context122549%_ _%y122554%_))
                    (equal? (_%marks122550%_ _%x122553%_)
                            (_%marks122550%_ _%y122554%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx122544%_)
        (if (gx#identifier? _%stx122544%_)
            (gx#core-identifier=? _%stx122544%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx122542%_)
        (if (gx#identifier? _%stx122542%_)
            (gx#core-identifier=? _%stx122542%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx122485%_ _%where122486%_)
        (let _%lp122488%_ ((_%rest122490%_ (gx#syntax->list _%stx122485%_)))
          (let* ((_%rest122491122499%_ _%rest122490%_)
                 (_%else122493122507%_ (lambda () '#t))
                 (_%K122495122520%_
                  (lambda (_%rest122510%_ _%hd122511%_)
                    (if (gx#identifier? _%hd122511%_)
                        (if (__find (lambda (_%g122513122515%_)
                                      (gx#bound-identifier=?
                                       _%g122513122515%_
                                       _%hd122511%_))
                                    _%rest122510%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where122486%_
                             _%hd122511%_)
                            (_%lp122488%_ _%rest122510%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where122486%_
                         _%hd122511%_)))))
            (if (pair? _%rest122491122499%_)
                (let ((_%hd122496122523%_ (##car _%rest122491122499%_))
                      (_%tl122497122525%_ (##cdr _%rest122491122499%_)))
                  (let* ((_%hd122528%_ _%hd122496122523%_)
                         (_%rest122530%_ _%tl122497122525%_))
                    (_%K122495122520%_ _%rest122530%_ _%hd122528%_)))
                (_%else122493122507%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx122535%_)
        (let ((_%where122537%_ _%stx122535%_))
          (gx#check-duplicate-identifiers__% _%stx122535%_ _%where122537%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g125177_
        (let ((_g125176_ (##length _g125177_)))
          (cond ((##fx= _g125176_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g125177_))
                ((##fx= _g125176_ 2)
                 (apply gx#check-duplicate-identifiers__% _g125177_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g125177_))))))
    (define gx#core-bind-values?
      (lambda (_%stx122477%_)
        (gx#stx-andmap
         (lambda (_%x122479%_)
           (let ((_%$e122481%_ (gx#identifier? _%x122479%_)))
             (if _%$e122481%_ _%$e122481%_ (gx#stx-false? _%x122479%_))))
         _%stx122477%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx122441%_ _%rebind?122442%_ _%phi122443%_ _%ctx122444%_)
        (gx#stx-for-each1
         (lambda (_%id122446%_)
           (if (gx#identifier? _%id122446%_)
               (gx#core-bind-runtime!__%
                _%id122446%_
                _%rebind?122442%_
                _%phi122443%_
                _%ctx122444%_)
               '#!void))
         _%stx122441%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx122451%_)
        (let* ((_%rebind?122453%_ '#f)
               (_%phi122455%_ (gx#current-expander-phi))
               (_%ctx122457%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx122451%_
           _%rebind?122453%_
           _%phi122455%_
           _%ctx122457%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx122459%_ _%rebind?122460%_)
        (let* ((_%phi122462%_ (gx#current-expander-phi))
               (_%ctx122464%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx122459%_
           _%rebind?122460%_
           _%phi122462%_
           _%ctx122464%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx122466%_ _%rebind?122467%_ _%phi122468%_)
        (let ((_%ctx122470%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx122466%_
           _%rebind?122467%_
           _%phi122468%_
           _%ctx122470%_))))
    (define gx#core-bind-values!
      (lambda _g125179_
        (let ((_g125178_ (##length _g125179_)))
          (cond ((##fx= _g125178_ 1) (apply gx#core-bind-values!__0 _g125179_))
                ((##fx= _g125178_ 2) (apply gx#core-bind-values!__1 _g125179_))
                ((##fx= _g125178_ 3) (apply gx#core-bind-values!__2 _g125179_))
                ((##fx= _g125178_ 4) (apply gx#core-bind-values!__% _g125179_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g125179_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx122436%_)
        (gx#stx-map1
         (lambda (_%x122438%_)
           (if (gx#identifier? _%x122438%_)
               (gx#core-quote-syntax__0 _%x122438%_)
               '#f))
         _%stx122436%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx122429%_)
        (if (gx#identifier? _%stx122429%_)
            (let* ((_%bind122431%_ (gx#resolve-identifier__0 _%stx122429%_))
                   (_%$e122433%_ (not _%bind122431%_)))
              (if _%$e122433%_
                  _%$e122433%_
                  (##structure-instance-of?
                   _%bind122431%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id122418%_ _%form122419%_)
        (let ((_%bind122421%_ (gx#resolve-identifier__0 _%id122418%_)))
          (if (##structure-instance-of? _%bind122421%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id122418%_)
              (if (not _%bind122421%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id122418%_)))
                      (gx#core-quote-syntax__0 _%id122418%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form122419%_
                       _%id122418%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form122419%_
                   _%id122418%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id122373%_ _%rebind?122374%_ _%phi122375%_ _%ctx122376%_)
        (let* ((_%key122378%_ (gx#core-identifier-key _%id122373%_))
               (_%eid122380%_
                (gx#make-binding-id__%
                 _%key122378%_
                 '#f
                 _%phi122375%_
                 _%ctx122376%_))
               (_%bind122386%_
                (if (##structure-instance-of?
                     _%ctx122376%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid122380%_
                     _%key122378%_
                     _%phi122375%_
                     _%ctx122376%_)
                    (if (##structure-instance-of?
                         _%ctx122376%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid122380%_
                         _%key122378%_
                         _%phi122375%_)
                        (if (##structure-instance-of?
                             _%ctx122376%_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _%eid122380%_
                             _%key122378%_
                             _%phi122375%_)
                            (##structure
                             gx#runtime-binding::t
                             _%eid122380%_
                             _%key122378%_
                             _%phi122375%_))))))
          (gx#bind-identifier!__%
           _%id122373%_
           _%bind122386%_
           _%rebind?122374%_
           _%phi122375%_
           _%ctx122376%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id122392%_)
        (let* ((_%rebind?122394%_ '#f)
               (_%phi122396%_ (gx#current-expander-phi))
               (_%ctx122398%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id122392%_
           _%rebind?122394%_
           _%phi122396%_
           _%ctx122398%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id122400%_ _%rebind?122401%_)
        (let* ((_%phi122403%_ (gx#current-expander-phi))
               (_%ctx122405%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id122400%_
           _%rebind?122401%_
           _%phi122403%_
           _%ctx122405%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id122407%_ _%rebind?122408%_ _%phi122409%_)
        (let ((_%ctx122411%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id122407%_
           _%rebind?122408%_
           _%phi122409%_
           _%ctx122411%_))))
    (define gx#core-bind-runtime!
      (lambda _g125181_
        (let ((_g125180_ (##length _g125181_)))
          (cond ((##fx= _g125180_ 1)
                 (apply gx#core-bind-runtime!__0 _g125181_))
                ((##fx= _g125180_ 2)
                 (apply gx#core-bind-runtime!__1 _g125181_))
                ((##fx= _g125180_ 3)
                 (apply gx#core-bind-runtime!__2 _g125181_))
                ((##fx= _g125180_ 4)
                 (apply gx#core-bind-runtime!__% _g125181_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g125181_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id122325%_
               _%eid122326%_
               _%rebind?122327%_
               _%phi122328%_
               _%ctx122329%_)
        (let* ((_%key122331%_ (gx#core-identifier-key _%id122325%_))
               (_%bind122336%_
                (if (##structure-instance-of?
                     _%ctx122329%_
                     'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _%eid122326%_
                     _%key122331%_
                     _%phi122328%_
                     _%ctx122329%_)
                    (if (##structure-instance-of?
                         _%ctx122329%_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _%eid122326%_
                         _%key122331%_
                         _%phi122328%_)
                        (##structure
                         gx#runtime-binding::t
                         _%eid122326%_
                         _%key122331%_
                         _%phi122328%_)))))
          (gx#bind-identifier!__%
           _%id122325%_
           _%bind122336%_
           _%rebind?122327%_
           _%phi122328%_
           _%ctx122329%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id122342%_ _%eid122343%_)
        (let* ((_%rebind?122345%_ '#f)
               (_%phi122347%_ (gx#current-expander-phi))
               (_%ctx122349%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id122342%_
           _%eid122343%_
           _%rebind?122345%_
           _%phi122347%_
           _%ctx122349%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id122351%_ _%eid122352%_ _%rebind?122353%_)
        (let* ((_%phi122355%_ (gx#current-expander-phi))
               (_%ctx122357%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id122351%_
           _%eid122352%_
           _%rebind?122353%_
           _%phi122355%_
           _%ctx122357%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id122359%_ _%eid122360%_ _%rebind?122361%_ _%phi122362%_)
        (let ((_%ctx122364%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id122359%_
           _%eid122360%_
           _%rebind?122361%_
           _%phi122362%_
           _%ctx122364%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g125183_
        (let ((_g125182_ (##length _g125183_)))
          (cond ((##fx= _g125182_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g125183_))
                ((##fx= _g125182_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g125183_))
                ((##fx= _g125182_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g125183_))
                ((##fx= _g125182_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g125183_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g125183_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id122285%_
               _%eid122286%_
               _%rebind?122287%_
               _%phi122288%_
               _%ctx122289%_)
        (gx#bind-identifier!__%
         _%id122285%_
         (##structure
          gx#extern-binding::t
          _%eid122286%_
          (gx#core-identifier-key _%id122285%_)
          _%phi122288%_)
         _%rebind?122287%_
         _%phi122288%_
         _%ctx122289%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id122294%_ _%eid122295%_)
        (let* ((_%rebind?122297%_ '#f)
               (_%phi122299%_ (gx#current-expander-phi))
               (_%ctx122301%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id122294%_
           _%eid122295%_
           _%rebind?122297%_
           _%phi122299%_
           _%ctx122301%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id122303%_ _%eid122304%_ _%rebind?122305%_)
        (let* ((_%phi122307%_ (gx#current-expander-phi))
               (_%ctx122309%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id122303%_
           _%eid122304%_
           _%rebind?122305%_
           _%phi122307%_
           _%ctx122309%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id122311%_ _%eid122312%_ _%rebind?122313%_ _%phi122314%_)
        (let ((_%ctx122316%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id122311%_
           _%eid122312%_
           _%rebind?122313%_
           _%phi122314%_
           _%ctx122316%_))))
    (define gx#core-bind-extern!
      (lambda _g125185_
        (let ((_g125184_ (##length _g125185_)))
          (cond ((##fx= _g125184_ 2) (apply gx#core-bind-extern!__0 _g125185_))
                ((##fx= _g125184_ 3) (apply gx#core-bind-extern!__1 _g125185_))
                ((##fx= _g125184_ 4) (apply gx#core-bind-extern!__2 _g125185_))
                ((##fx= _g125184_ 5) (apply gx#core-bind-extern!__% _g125185_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g125185_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id122239%_
               _%e122240%_
               _%rebind?122241%_
               _%phi122242%_
               _%ctx122243%_)
        (gx#bind-identifier!__%
         _%id122239%_
         (let ((_%key122248%_ (gx#core-identifier-key _%id122239%_))
               (_%e122249%_
                (if (or (##structure-instance-of? _%e122240%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e122240%_
                         'gx#expander-context::t))
                    _%e122240%_
                    (##structure
                     gx#user-expander::t
                     _%e122240%_
                     _%ctx122243%_
                     _%phi122242%_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__%
             _%key122248%_
             '#t
             _%phi122242%_
             _%ctx122243%_)
            _%key122248%_
            _%phi122242%_
            _%e122249%_))
         _%rebind?122241%_
         _%phi122242%_
         _%ctx122243%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id122254%_ _%e122255%_)
        (let* ((_%rebind?122257%_ '#f)
               (_%phi122259%_ (gx#current-expander-phi))
               (_%ctx122261%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id122254%_
           _%e122255%_
           _%rebind?122257%_
           _%phi122259%_
           _%ctx122261%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id122263%_ _%e122264%_ _%rebind?122265%_)
        (let* ((_%phi122267%_ (gx#current-expander-phi))
               (_%ctx122269%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id122263%_
           _%e122264%_
           _%rebind?122265%_
           _%phi122267%_
           _%ctx122269%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id122271%_ _%e122272%_ _%rebind?122273%_ _%phi122274%_)
        (let ((_%ctx122276%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id122271%_
           _%e122272%_
           _%rebind?122273%_
           _%phi122274%_
           _%ctx122276%_))))
    (define gx#core-bind-syntax!
      (lambda _g125187_
        (let ((_g125186_ (##length _g125187_)))
          (cond ((##fx= _g125186_ 2) (apply gx#core-bind-syntax!__0 _g125187_))
                ((##fx= _g125186_ 3) (apply gx#core-bind-syntax!__1 _g125187_))
                ((##fx= _g125186_ 4) (apply gx#core-bind-syntax!__2 _g125187_))
                ((##fx= _g125186_ 5) (apply gx#core-bind-syntax!__% _g125187_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g125187_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id122222%_ _%e122223%_ _%rebind?122224%_)
        (gx#core-bind-syntax!__%
         _%id122222%_
         _%e122223%_
         _%rebind?122224%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id122229%_ _%e122230%_)
        (let ((_%rebind?122232%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id122229%_
           _%e122230%_
           _%rebind?122232%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g125189_
        (let ((_g125188_ (##length _g125189_)))
          (cond ((##fx= _g125188_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g125189_))
                ((##fx= _g125188_ 3)
                 (apply gx#core-bind-root-syntax!__% _g125189_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g125189_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id122180%_
               _%alias-id122181%_
               _%rebind?122182%_
               _%phi122183%_
               _%ctx122184%_)
        (gx#bind-identifier!__%
         _%id122180%_
         (let ((_%key122186%_ (gx#core-identifier-key _%id122180%_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__%
             _%key122186%_
             '#t
             _%phi122183%_
             _%ctx122184%_)
            _%key122186%_
            _%phi122183%_
            _%alias-id122181%_))
         _%rebind?122182%_
         _%phi122183%_
         _%ctx122184%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id122191%_ _%alias-id122192%_)
        (let* ((_%rebind?122194%_ '#f)
               (_%phi122196%_ (gx#current-expander-phi))
               (_%ctx122198%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id122191%_
           _%alias-id122192%_
           _%rebind?122194%_
           _%phi122196%_
           _%ctx122198%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id122200%_ _%alias-id122201%_ _%rebind?122202%_)
        (let* ((_%phi122204%_ (gx#current-expander-phi))
               (_%ctx122206%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id122200%_
           _%alias-id122201%_
           _%rebind?122202%_
           _%phi122204%_
           _%ctx122206%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id122208%_ _%alias-id122209%_ _%rebind?122210%_ _%phi122211%_)
        (let ((_%ctx122213%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id122208%_
           _%alias-id122209%_
           _%rebind?122210%_
           _%phi122211%_
           _%ctx122213%_))))
    (define gx#core-bind-alias!
      (lambda _g125191_
        (let ((_g125190_ (##length _g125191_)))
          (cond ((##fx= _g125190_ 2) (apply gx#core-bind-alias!__0 _g125191_))
                ((##fx= _g125190_ 3) (apply gx#core-bind-alias!__1 _g125191_))
                ((##fx= _g125190_ 4) (apply gx#core-bind-alias!__2 _g125191_))
                ((##fx= _g125190_ 5) (apply gx#core-bind-alias!__% _g125191_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g125191_))))))
    (define gx#make-binding-id__%
      (lambda (_%key122130%_ _%syntax?122131%_ _%phi122132%_ _%ctx122133%_)
        (if (uninterned-symbol? _%key122130%_)
            (##gensym 'L)
            (if (pair? _%key122130%_)
                (gensym (##car _%key122130%_))
                (if (##structure-instance-of? _%ctx122133%_ 'gx#top-context::t)
                    (let ((_%ns122138%_
                           (gx#core-context-namespace__% _%ctx122133%_)))
                      (if (and (fxzero? _%phi122132%_) (not _%syntax?122131%_))
                          (if _%ns122138%_
                              (make-symbol__1 _%ns122138%_ '"#" _%key122130%_)
                              _%key122130%_)
                          (if _%syntax?122131%_
                              (make-symbol__1
                               (let ((_%$e122142%_ _%ns122138%_))
                                 (if _%$e122142%_ _%$e122142%_ '""))
                               '"[:"
                               (number->string _%phi122132%_)
                               '":]#"
                               _%key122130%_)
                              (make-symbol__1
                               (let ((_%$e122146%_ _%ns122138%_))
                                 (if _%$e122146%_ _%$e122146%_ '""))
                               '"["
                               (number->string _%phi122132%_)
                               '"]#"
                               _%key122130%_))))
                    (gensym _%key122130%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key122153%_)
        (let* ((_%syntax?122155%_ '#f)
               (_%phi122157%_ (gx#current-expander-phi))
               (_%ctx122159%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key122153%_
           _%syntax?122155%_
           _%phi122157%_
           _%ctx122159%_))))
    (define gx#make-binding-id__1
      (lambda (_%key122161%_ _%syntax?122162%_)
        (let* ((_%phi122164%_ (gx#current-expander-phi))
               (_%ctx122166%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key122161%_
           _%syntax?122162%_
           _%phi122164%_
           _%ctx122166%_))))
    (define gx#make-binding-id__2
      (lambda (_%key122168%_ _%syntax?122169%_ _%phi122170%_)
        (let ((_%ctx122172%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key122168%_
           _%syntax?122169%_
           _%phi122170%_
           _%ctx122172%_))))
    (define gx#make-binding-id
      (lambda _g125193_
        (let ((_g125192_ (##length _g125193_)))
          (cond ((##fx= _g125192_ 1) (apply gx#make-binding-id__0 _g125193_))
                ((##fx= _g125192_ 2) (apply gx#make-binding-id__1 _g125193_))
                ((##fx= _g125192_ 3) (apply gx#make-binding-id__2 _g125193_))
                ((##fx= _g125192_ 4) (apply gx#make-binding-id__% _g125193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g125193_))))))))
